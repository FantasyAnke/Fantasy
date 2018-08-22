package com.lzp.moviedb.web;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePrecreateRequest;
import com.alipay.api.response.AlipayTradePrecreateResponse;
import com.alipay.config.AlipayConfig;
import com.lzp.moviedb.entity.BookIng;
import com.lzp.moviedb.entity.Moviedb;
import com.lzp.moviedb.entity.Pay;
import com.lzp.moviedb.entity.Piece;
import com.lzp.moviedb.entity.Platform;
import com.lzp.moviedb.service.BookingSer;
import com.lzp.moviedb.service.MovieSeatSer;
import com.lzp.moviedb.service.MovieSer;
import com.lzp.moviedb.service.MoviedbSer;
import com.lzp.moviedb.service.MoviehallSer;
import com.lzp.moviedb.service.PieceService;
import com.lzp.moviedb.service.PlatformSer;
import com.lzp.moviedb.util.PageBean;

@Controller
public class MoviedbWeb {
	@Autowired
	MoviedbSer ser;
	@Autowired
	MovieSer movieSer;
	@Autowired
	MoviehallSer moviehallSer;
	@Autowired
	MovieSeatSer movieseatser;

	@Autowired
	PlatformSer platformSer;

	@Autowired
	BookingSer bookingser;

	@Autowired
	PieceService svr;

	/**
	 * 开始选座购票
	 */
	@RequestMapping("choose")
	public String choose(Model model, HttpSession session, Piece entity, BookIng bookIng) {
		bookIng.setMsid(entity.getMsId());
		model.addAttribute("pieceone", svr.findAllByPiece(entity));
		model.addAttribute("piece", entity);
		List<BookIng> list = bookingser.findBookIngByMsId(bookIng);
		model.addAttribute("list", list);
		// for (BookIng b : list) {
		// System.out.println(b.getSeatNumber());
		// }
		return "choose";
	}

	@RequestMapping("insertBookIng")
	@ResponseBody
	public BookIng insertBookIng(HttpSession session, BookIng entity) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String orderTime = sdf.format(new Date());
		// System.out.println(orderTime);

		entity.setCustomerId(1);
		// entity.setCustomerId(Integer.valueOf(session.getAttribute("$customerId").toString()));
		String bookNumber = "D000" + new Date().getTime();

		entity.setOrderTime(orderTime);
		entity.setBookNumber(bookNumber);
		// min 15分钟后查看是否未支付 如果未支付删除订单
		int min = 15;
		long start = System.currentTimeMillis();
		// end 计算结束时间
		final long end = start + min * 60 * 1000;

		final Timer timer = new Timer();
		// 计时结束时候，停止全部timer计时计划任务
		timer.schedule(new TimerTask() {
			public void run() {
				List<BookIng> list = bookingser.findByBookNumber(entity);
				if (list != null && list.size() > 0) {
					// System.out.println("删除订单");
					bookingser.delByBookNumber(entity);
				}
				timer.cancel();
			}

		}, new Date(end));
		// time(entity);

		bookingser.insert(entity);
		return entity;
	}

	@RequestMapping("zfb")
	public String zfb(Model model, HttpSession session, Piece entity, BookIng bookIng) {
		// entity.setMovieId(Integer.valueOf(session.getAttribute("$movieId").toString()));

		bookIng.setBookNumber(bookIng.getBookNumber());
		// time(bookIng);
		List<Map<String, Object>> map = bookingser.findMapByBookNumber(bookIng);
		model.addAttribute("map", map);
		model.addAttribute("orderTime", bookIng.getOrderTime());
		// return prev + "zfb";
		return "myorder";
	}

	@RequestMapping("showZFB")
	public String showZFB(Pay entity, Model model) {
		AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.serverUrl, AlipayConfig.appId,
				AlipayConfig.privateKey, AlipayConfig.format, AlipayConfig.charset, AlipayConfig.alipayPulicKey,
				AlipayConfig.signType);

		// AlipayClient alipayClient = new
		// DefaultAlipayClient("https://openapi.alipay.com/gateway.do", APP_ID,
		// APP_PRIVATE_KEY, "json", CHARSET, ALIPAY_PUBLIC_KEY, "RSA2");
		// //获得初始化的AlipayClient
		AlipayTradePrecreateRequest alipayRequest = new AlipayTradePrecreateRequest();// 创建API对应的request类

		String out_trade_no = entity.getBookNumber();
		// 付款金额，必填
		String total_amount = entity.getPrice().toString();
		// 订单名称，必填
		String subject = entity.getSubject();
		// 商品描述，可空

		alipayRequest.setBizContent("{" + "    \"out_trade_no\":\"" + out_trade_no + "\"," + "    \"total_amount\":\""
				+ total_amount + "\"," + "    \"subject\":\"" + subject + "\"," + "    \"store_id\":\"NJ_001\"}");
		// + " \"timeout_express\":\"90m\"}");// 设置业务参数

		AlipayTradePrecreateResponse alipayResponse = null;
		try {
			alipayResponse = alipayClient.execute(alipayRequest);
			// System.out.print(alipayResponse.getBody());
			System.out.println(alipayResponse.getMsg());

			System.out.println("二维码串 = " + alipayResponse.getQrCode());
			model.addAttribute("ewm", alipayResponse.getQrCode());

		} catch (AlipayApiException e) {
			e.printStackTrace();
		}
		model.addAttribute("entity", entity);
		return "qrcode";
	}

	@RequestMapping("ZFSuccess")
	public String ZFSuccess(Pay entity) {
		// 支付成功修改订单状态 1表示支付成功
		// System.out.println(entity.getBookNumber());
		svr.ZFSuccess(entity);
		return "redirect:findAll";
	}

	@RequestMapping("ZFFailed")
	public String ZFFailed(Pay entity) {
		// 支付失败 删除订单
		svr.ZFFailed(entity);
		return "redirect:findAll";
	}

	@RequestMapping("insert")
	public String insert(Moviedb entity) {
		ser.insert(entity);
		return "list";

	}

	// 首页的显示:热映，和即将上映
	@RequestMapping("findAll")
	public String findAll(Model m) {
		m.addAttribute("list", ser.findAll());
		m.addAttribute("screen", ser.findAllByScreen());
		return "index";
	}

	// 点击选票购座后电影的显示和该电影的播放影院
	@RequestMapping("chooseticket")
	public String chooseticket(Moviedb entity, Model m) {

		m.addAttribute("ti", ser.ChooseTicket(entity));
		List<Map<String, Object>> map = movieSer.findmovie(entity);
		System.out.println(map);
		m.addAttribute("movie", map);

		return "vote";
	}

	// 搜索
	@RequestMapping("findSearch")
	public String findSearch(Moviedb entity, Model m) {

		m.addAttribute("ti", ser.findSearch(entity));
		m.addAttribute("ss", entity.getMovieDBName());
		return "search";

	}

	@RequestMapping("findhit")
	public String findhit(PageBean bean, Model m) {

		bean.setCount(ser.count());
		m.addAttribute("bean", bean);
		m.addAttribute("hit", ser.findhit(bean));
		return "index1";

	}

	// 影片--热映
	@RequestMapping("findmovie2")
	public String findmovie(PageBean bean, Model m) {
		bean.setCount(ser.count1());
		m.addAttribute("bean", bean);
		m.addAttribute("hit", ser.findmovie(bean));
		return "soon";
	}

	@RequestMapping("platformlogin")
	public String Platformlogin(Platform entity, HttpSession session, Model m) {
		String pt = "";
		entity = platformSer.Platformlogin(entity);

		if (entity != null && !"".equals(entity)) {
			session.setAttribute("name", entity.getPlatformname());
			return "redirect:findAll";
		} else {
			pt = "用户名或密码错误";
			m.addAttribute("pt", pt);
			return "html/index";
		}

		/*
		 * List<Map<String, Object>> map=platformSer.Platformlogin(platformname,
		 * platformpass); System.out.println(map); if(map!=null&&map.size()>0){
		 * return "1"; } return "0";
		 */

	}

	@RequestMapping("platformregister")
	public String platformregister(Platform entity) {
		System.out.println(entity.getNumber());
		System.out.println(entity.getPlatformname());
		System.out.println(entity.getNumber());
		platformSer.platformregister(entity);
		return "html/index";

	}

	@RequestMapping("findmovie3")
	public String findmovie3(PageBean bean, Model m) {
		bean.setCount(ser.count3());
		m.addAttribute("bean", bean);
		m.addAttribute("hit", ser.findmovie3(bean));
		return "film";
	}

	// 选座购票 :影院-----影片------影厅
	@RequestMapping("findaddress")
	public String findaddress(Moviedb entity, Model m) {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		m.addAttribute("shadow", movieSer.findshadow(entity));
		m.addAttribute("address", movieSer.findaddress(entity));
		m.addAttribute("hall", moviehallSer.findMoviehall(entity));
		m.addAttribute("df", df.format(new Date()));
		return "ticket";

	}

	/*
	 * @RequestMapping("findMoviehall") public String findMoviehall(Model m){
	 * m.addAttribute("hall", moviehallSer.findMoviehall()); return "img";
	 * 
	 * }
	 */

	@RequestMapping("findmovieDBId")
	@ResponseBody
	public Map<String, Object> findmovieDBId(Integer movieDBId) {
		System.out.println(movieDBId);
		Map<String, Object> map = ser.findmovieDBId(movieDBId);

		return map;

	}

	@RequestMapping("findmovieseat")
	@ResponseBody
	public Map<String, Object> findmovieseat(Integer mhid) {
		Map<String, Object> map = movieseatser.findmovieseat(mhid);

		return map;

	}

	@RequestMapping("findbooking")
	public String findbookingser(BookIng entity, Model m) {

		m.addAttribute("book", bookingser.findbooking(entity));
		return "order";

	}

	// 影库图片的上传
	@RequestMapping("upload2")
	public String upload(Moviedb entity, HttpServletRequest req) throws IllegalStateException, IOException {
		String path = req.getServletContext().getRealPath("img");
		File file = new File(path);
		if (!file.exists())
			file.mkdir();
		String imgName = new Date().getTime() + entity.getImg().getOriginalFilename();
		// 项目名/文件夹名
		// String contextPath =
		// req.getServletContext().getContextPath()+File.separator+"index";
		// 真实路径
		String url = imgName;

		File newFile = new File(path + File.separator + imgName);

		entity.getImg().transferTo(newFile);

		entity.setUrl(url);

		ser.insert(entity);

		return "redirect:findAll";

	}

}

;/*!home:widget/index/banner/banner.js*/
define("home:widget/index/banner/banner.js",function(e,n,t){var i=e("common:static/util/location"),a={init:function(e){var n=this;n.opt=e||{},n.location=i.getCity(),n.pipeRequest()},getEle:function(){var e=this;e.ele=$("#bannerFlexslider")},pipeRequest:function(){var e,n=this,t=n.location||{},i=t.cityId||"131",a=$.extend({adSpaceId:1,cityId:i},n.opt),o={pagelets:[],url:"/activity",param:$.param(a),cb:function(){n.getEle(),n.render()}};e="pageletIndexBanner",o.pagelets=[e],BigPipe.load(o)},render:function(){var e=$("#bannerFlexslider");if(e&&!(e.length<=0)){$("#bannerFlexslider").flexslider({controlNav:!0,pauseOnAction:!0,pauseOnHover:!1,animation:"slide",animationLoop:!0,itemWidth:750,itemMargin:5,move:5,slideshow:!0,startAt:0})}}};t.exports=a});
;/*!home:widget/index/hotcinema/hotcinema.js*/
define("home:widget/index/hotcinema/hotcinema.js",function(t,e,i){var a=t("common:static/util/location"),n={init:function(){var t=this;t.location=a.getSelectedCity(),t.getPagelet()},getPagelet:function(){var t,e=this,i=(e.opt||{},{cityId:e.location.cityId,pageSize:4,pageNum:0});t={pagelets:["pageletIndexCinema"],url:"/hotcinema",param:$.param(i),cb:function(){}},BigPipe.load(t)}};i.exports=n});
;/*!home:widget/index/index.js*/
define("home:widget/index/index.js",function(n,e,i){var r=(n("home:widget/index/banner/banner.js"),n("common:widget/ui/backup/backup")),t={init:function(){var n=this;n.render()},render:function(){var n=this;n.backup=new r}};i.exports=t});
;/*!home:widget/index/list/list.js*/
define("home:widget/index/list/list.js",function(t,i,e){var n=t("common:static/util/location"),a=function(){var t=this;t.location=n.getCity()};a.prototype={init:function(t){var i=this;i.type=t||1,i.getEle(),i.render()},getEle:function(){var t=this;t.ele=$("#flexslider"+t.type),t.loading=t.ele.find(".loading")},render:function(){var t=this;$("#flexslider"+t.type).flexslider({controlNav:!1,pauseOnAction:!0,pauseOnHover:!1,animation:"slide",animationLoop:!0,itemWidth:162,itemMargin:0,itemHeight:200,move:6,slideshow:!1,startAt:0,after:function(i){i=i||{};var e=t.ele.siblings(".subtitle").find(".pager");e.html(i.currentSlide+1+"/"+i.pagingCount);var n=i.direction;t.addStat(n)},init:function(){t.loading.addClass("hide")}})},addStat:function(t){var i=this;if(t){var e=1==i.type?"hotlistBk":"newlistBk";switch(t){case"prev":e="webHomeIndexPg."+e+".prevBtn";break;case"next":e="webHomeIndexPg."+e+".nextBtn"}window.addStat({da_src:e,da_act:"click"})}}},e.exports={init:function(t){var i=new a;i.init(t)}}});
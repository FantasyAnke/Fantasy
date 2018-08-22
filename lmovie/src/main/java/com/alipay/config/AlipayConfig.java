package com.alipay.config;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {

	public static String serverUrl = "https://openapi.alipaydev.com/gateway.do"; // 沙箱网关
	public static String appId = "2016091800541198";
	public static String privateKey = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCgnYL4fPIww7hOBUVoCODwqPPu5Ntg4fNuze60VCFHWodXl7DKWil4QxAslvrm8VtPFIG4Wjsx3PZ8yKHoWRNSwaSeKNF2eTJqiV9CmIZvf9UIaqmjPnGBMRqdY25UD3UGFtnbjkSiGTxsVeDlR9oLWZwx6pfZtu3dRIvMH0Ab2uU2jL7xQpklMu5rPdBaQ45lqG4QwsVJQceZLWZZsKJh1eatnjZnbW50po2nH3YGFADqICFCiW2O4jwmAjV0cIc4p4be3rZ2cmIbnRj7nQIzY+chyBzpL0+//fn/cJx+kGZm1Ls64q2uhmP8kfKR98f/eI4/ntofX8mn+AvgVvANAgMBAAECggEATEUf2YHzvEZksd/86n802fNRCsNwjZwebiKqVMWSnACYPncRA7Y29R3bg2Eauioosu/I/dMTQwVroyve/qe17ll4I4a8mObKkx6ytrwZMr9gWUPVVGilm7TGr7B0xsQkTQTy5Ti0zMjxEXzic95f433lFysQetlMMQOI4yB/3/mayd90W087vrjvNtBSt7nej6oQDocnGrXjM6J6bdaFby0pYPSvBE7HoVgXpeCienLxSkHoi2Iqietq/Bd8DeupkrtfKUwADpr1YXjodQeB0QOzXUzSxoxTuVRZtKG3oAOhcmsTb9mEOjaCouPIwkmVXCCnxq3Eyv0T9rY8XkA3AQKBgQDp+1ZdzNr52fjeixOYiDtBVHDiINQ5LSKwXO3Cp1/uaIlpB0MxsBX3FTaT6PCb8g/CXyuzD3GkWK9gfla/NXQCFqNIeLyVVxAxjEUgnYe1kY+ChWgTPMaOSBtWW1mzivF14I6OxtviXvyvnPDB1/KO5YXimLRH35HETNbo3TIxzQKBgQCvusMZWRZRAf5mUOnnNKYKJQtsxb9VVZaKZPpaB87ao2gb6HV09Z0kAotAvctILpMhnmIErs4yfJ8WdUgsY9uDcXzteYdfHdyTWaJM7k0MRJnDdMP/vd8/l2xKxq80BiCNWhrKiDSHpW1iRFlSswJSexaPqAW2i028zgUNfTp3QQKBgET6CyPr2EH/uBYi+cvlnVJNClofQ3D3lVpYit7vaKBnwNptgamMN213m3dPHF9cpLiwRbmru9yvKERR+lCz+VcERW5/6Vg9KlDxAQ/0YKVuG9hma6AAMqiPKT/z/iWnuDb/1AbTKM87IVLD+VWry53EnAuI6NynU9mCrXhIfRuhAoGANQ0T4y4i75fDfo4E3zjku4FNfqwARDnPdb5gWherWhQk1PALraCMrRdbhNMHcKYm4upWuwUu2M0IlhYYENagqYD0bxjWRl/UfGN9/O2gMwjuxrQUi7t9j0wedEChGfqTjzjZh7Uw7paBfD4YHUBPfikMuZfHCcHqWQp1OgpJQUECgYEAtbSkfauZuRKe6qGEvJb2g2l0RV62qVVzYyus3FP8ZcgQFQyNRXRLZLFvHIKXiV8pZyVYaPrXGavax19t2ftosQBXpd1ThgfgYdgAnjfDqc4mIvTfdRh8HNDOaZhv9sJjkbv8hH0Bvx//MSs3DfOmZY6fHFb0CzG1iAqE3ukLVFc=";
	public static String format = "json";
	public static String charset = "UTF-8";
	public static String alipayPulicKey = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA4+MlhmlETGeX/iSvELgjC1U19u8a2qmb807fl3bYHtma9vkH8Z8eifgsPevJ8KkFbeRH2gbyjf6T0zoGP+vX9huFodU7Nz5GLgr1Kv6lappiADMgyBFg1MjZcqneMKHsoBRZEjo87kgiRdie+wAF6fLWgWHpxJSeAq6NxGEDE2Wed0TWTDr7e/l6kztfdT3XFAiQWsUBDdzHlGxqKyV/CFYz28k9RYMhPlXmbMav7/uE2Lfm2alowRd8g0f/IAzcRKV0+dws1VvHUZan3zyf/MHq7MuLaFRtK/TmBAz+NEsiMd7SYJ1XQTCyMYjGNHE0hreQwHQbLeINZMC4vTUG/QIDAQAB";
	public static String signType = "RSA2";

	// ↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	// public static String app_id = "2016091800541198";

	// 商户私钥，您的PKCS8格式RSA2私钥
	// public static String merchant_private_key =
	// "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCgnYL4fPIww7hOBUVoCODwqPPu5Ntg4fNuze60VCFHWodXl7DKWil4QxAslvrm8VtPFIG4Wjsx3PZ8yKHoWRNSwaSeKNF2eTJqiV9CmIZvf9UIaqmjPnGBMRqdY25UD3UGFtnbjkSiGTxsVeDlR9oLWZwx6pfZtu3dRIvMH0Ab2uU2jL7xQpklMu5rPdBaQ45lqG4QwsVJQceZLWZZsKJh1eatnjZnbW50po2nH3YGFADqICFCiW2O4jwmAjV0cIc4p4be3rZ2cmIbnRj7nQIzY+chyBzpL0+//fn/cJx+kGZm1Ls64q2uhmP8kfKR98f/eI4/ntofX8mn+AvgVvANAgMBAAECggEATEUf2YHzvEZksd/86n802fNRCsNwjZwebiKqVMWSnACYPncRA7Y29R3bg2Eauioosu/I/dMTQwVroyve/qe17ll4I4a8mObKkx6ytrwZMr9gWUPVVGilm7TGr7B0xsQkTQTy5Ti0zMjxEXzic95f433lFysQetlMMQOI4yB/3/mayd90W087vrjvNtBSt7nej6oQDocnGrXjM6J6bdaFby0pYPSvBE7HoVgXpeCienLxSkHoi2Iqietq/Bd8DeupkrtfKUwADpr1YXjodQeB0QOzXUzSxoxTuVRZtKG3oAOhcmsTb9mEOjaCouPIwkmVXCCnxq3Eyv0T9rY8XkA3AQKBgQDp+1ZdzNr52fjeixOYiDtBVHDiINQ5LSKwXO3Cp1/uaIlpB0MxsBX3FTaT6PCb8g/CXyuzD3GkWK9gfla/NXQCFqNIeLyVVxAxjEUgnYe1kY+ChWgTPMaOSBtWW1mzivF14I6OxtviXvyvnPDB1/KO5YXimLRH35HETNbo3TIxzQKBgQCvusMZWRZRAf5mUOnnNKYKJQtsxb9VVZaKZPpaB87ao2gb6HV09Z0kAotAvctILpMhnmIErs4yfJ8WdUgsY9uDcXzteYdfHdyTWaJM7k0MRJnDdMP/vd8/l2xKxq80BiCNWhrKiDSHpW1iRFlSswJSexaPqAW2i028zgUNfTp3QQKBgET6CyPr2EH/uBYi+cvlnVJNClofQ3D3lVpYit7vaKBnwNptgamMN213m3dPHF9cpLiwRbmru9yvKERR+lCz+VcERW5/6Vg9KlDxAQ/0YKVuG9hma6AAMqiPKT/z/iWnuDb/1AbTKM87IVLD+VWry53EnAuI6NynU9mCrXhIfRuhAoGANQ0T4y4i75fDfo4E3zjku4FNfqwARDnPdb5gWherWhQk1PALraCMrRdbhNMHcKYm4upWuwUu2M0IlhYYENagqYD0bxjWRl/UfGN9/O2gMwjuxrQUi7t9j0wedEChGfqTjzjZh7Uw7paBfD4YHUBPfikMuZfHCcHqWQp1OgpJQUECgYEAtbSkfauZuRKe6qGEvJb2g2l0RV62qVVzYyus3FP8ZcgQFQyNRXRLZLFvHIKXiV8pZyVYaPrXGavax19t2ftosQBXpd1ThgfgYdgAnjfDqc4mIvTfdRh8HNDOaZhv9sJjkbv8hH0Bvx//MSs3DfOmZY6fHFb0CzG1iAqE3ukLVFc=";

	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm
	// 对应APPID下的支付宝公钥。
	// public static String alipay_public_key =
	// "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA4+MlhmlETGeX/iSvELgjC1U19u8a2qmb807fl3bYHtma9vkH8Z8eifgsPevJ8KkFbeRH2gbyjf6T0zoGP+vX9huFodU7Nz5GLgr1Kv6lappiADMgyBFg1MjZcqneMKHsoBRZEjo87kgiRdie+wAF6fLWgWHpxJSeAq6NxGEDE2Wed0TWTDr7e/l6kztfdT3XFAiQWsUBDdzHlGxqKyV/CFYz28k9RYMhPlXmbMav7/uE2Lfm2alowRd8g0f/IAzcRKV0+dws1VvHUZan3zyf/MHq7MuLaFRtK/TmBAz+NEsiMd7SYJ1XQTCyMYjGNHE0hreQwHQbLeINZMC4vTUG/QIDAQAB";

	// 服务器异步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	// public static String notify_url =
	// "http://127.0.0.1:8180/movie/movie/kb/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	// public static String return_url =
	// "http://127.0.0.1:8180/movie/movie/kb/return_url.jsp";

	// 签名方式
	// public static String sign_type = "RSA2";

	// 字符编码格式
	// public static String charset = "utf-8";

	// 支付宝网关
	// public static String gatewayUrl =
	// "https://openapi.alipaydev.com/gateway.do";

	// 支付宝网关
	// public static String log_path = "C:\\";

	// ↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

	/**
	 * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
	 * 
	 * @param sWord
	 *            要写入日志里的文本内容
	 */
	// public static void logResult(String sWord) {
	// FileWriter writer = null;
	// try {
	// writer = new FileWriter(log_path + "alipay_log_" +
	// System.currentTimeMillis() + ".txt");
	// writer.write(sWord);
	// } catch (Exception e) {
	// e.printStackTrace();
	// } finally {
	// if (writer != null) {
	// try {
	// writer.close();
	// } catch (IOException e) {
	// e.printStackTrace();
	// }
	// }
	// }
	// }
}

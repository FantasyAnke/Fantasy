function isSingleInstanceProd(s){var n=["mn","ma","im_hi"];return("|"+n.join("|")+"|").indexOf("|"+s+"|")>-1}function isLoginInstance(s){return s=s||"login",s+""=="login"}function saveInitInstance(s){window._pass_popinit_instance=s}function getInitInstance(){return window._pass_popinit_instance}var passport=passport||window.passport||{};passport._modulePool=passport._modulePool||{},passport._define=passport._define||function(s,n){passport._modulePool[s]=n&&n()},passport._getModule=passport._getModule||function(s){return passport._modulePool[s]};var passport=window.passport||{};passport.pop=passport.pop||{},passport.pop.insertScript=passport.pop.insertScript||function(s,n){var i=document,a=i.createElement("SCRIPT");a.type="text/javascript",a.charset="UTF-8",a.readyState?a.onreadystatechange=function(){("loaded"===a.readyState||"complete"===a.readyState)&&(a.onreadystatechange=null,n&&n())}:a.onload=function(){n&&n()},a.src=s,i.getElementsByTagName("head")[0].appendChild(a)},passport.pop.init=passport.pop.init||function(s){var n={"http:":"http://passport.bdimg.com","https:":"https://ss0.bdstatic.com/5LMZfyabBhJ3otebn9fN2DJv"};if(isSingleInstanceProd(s.apiOpt.product)&&isLoginInstance(s.type)&&getInitInstance())return getInitInstance();var i;i=s&&"https"===s.protocol?"https:":window.location?window.location.protocol.toLowerCase():document.location.protocol.toLowerCase();var a=["pp","mn","wk","cmovie","translate","baidugushitong","ik","exp","waimai","jn","im","do","yuedu","hao123","tb","netdisk","developer","newdev","image_eco","zbsc","bpit_hcm","defensor"],e=s&&s.apiOpt&&s.apiOpt.product||"",t=("|"+a.join("|")+"|").indexOf("|"+e+"|")>-1,p=t?"/passApi/js/uni_loginv4_cbeb14b.js":"/passApi/js/uni_login_e778781.js",c=t?"/passApi/js/uni_loginv4_tangram_b9edfd8.js":"/passApi/js/uni_login_tangram_702be06.js",o=t?"/passApi/css/uni_loginv4_1c50fab.css":"/passApi/css/uni_login_new_a9b11fc.css",_={uni_login:p,uni_login_tangram:c,uni_loginPad:"/passApi/js/uni_loginPad_aefa7ae.js",uni_loginPad_tangram:"/passApi/js/uni_loginPad_tangram_98c2249.js",uni_smsloginEn:"/passApi/js/uni_smsloginEn_d854cfa.js",uni_smsloginEn_tangram:"/passApi/js/uni_smsloginEn_tangram_b0ebd2c.js",uni_loginWap:"/passApi/js/uni_loginWap_1052360.js",uni_loginWap_tangram:"/passApi/js/uni_loginWap_1052360.js",uni_accConnect:"/passApi/js/uni_accConnect_3491e81.js",uni_accConnect_tangram:"/passApi/js/uni_accConnect_tangram_0b9f537.js",uni_accRealName:"/passApi/js/uni_accRealName_6f4f2eb.js",uni_accRealName_tangram:"/passApi/js/uni_accRealName_tangram_7e76338.js",uni_checkPhone:"/passApi/js/uni_checkPhone_1b76a01.js",uni_checkPhone_tangram:"/passApi/js/uni_checkPhone_tangram_d8bf831.js",uni_checkIDcard:"/passApi/js/uni_checkIDcard_d2ba9d2.js",uni_checkIDcard_tangram:"/passApi/js/uni_checkIDcard_tangram_c13e158.js",uni_accSetPwd:"/passApi/js/uni_accSetPwd_e0d3b3f.js",uni_accSetPwd_tangram:"/passApi/js/uni_accSetPwd_tangram_00ca5a9.js",uni_IDCertify:"/passApi/js/uni_IDCertify_efd1887.js",uni_IDCertify_tangram:"/passApi/js/uni_IDCertify_tangram_22687c3.js",uni_travelComplete:"/passApi/js/uni_travelComplete_a574d09.js",uni_travelComplete_tangram:"/passApi/js/uni_travelComplete_tangram_002cf0b.js",uni_bindGuide:"/passApi/js/uni_bindGuide_63c1437.js",uni_bindGuide_tangram:"/passApi/js/uni_bindGuide_tangram_423f05d.js",uni_IDCertifyQrcode:"/passApi/js/uni_IDCertifyQrcode_217d843.js",uni_IDCertifyQrcode_tangram:"/passApi/js/uni_IDCertifyQrcode_tangram_d0dd423.js",uni_loadingApi:"/passApi/js/uni_loadingApi_85c83d7.js",uni_loadingApi_tangram:"/passApi/js/uni_loadingApi_tangram_9ea4dd4.js",uni_secondCardVerify:"/passApi/js/uni_secondCardVerify_360a89c.js",uni_secondCardVerify_tangram:"/passApi/js/uni_secondCardVerify_tangram_c2dad23.js",uni_multiBind:"/passApi/js/uni_multiBind_d5bf081.js",uni_multiBind_tangram:"/passApi/js/uni_multiBind_tangram_e2d9a1c.js",uni_multiUnbind:"/passApi/js/uni_multiUnbind_9f19c66.js",uni_multiUnbind_tangram:"/passApi/js/uni_multiUnbind_tangram_0a234b3.js",uni_changeUser:"/passApi/js/uni_changeUser_e753fa9.js",uni_changeUser_tangram:"/passApi/js/uni_changeUser_tangram_471c626.js",uni_loginMultichoice:"/passApi/js/uni_loginMultichoice_08a059a.js",uni_loginMultichoice_tangram:"/passApi/js/uni_loginMultichoice_tangram_98f19ba.js",uni_confirmWidget:"/passApi/js/uni_confirmWidget_5107812.js",uni_confirmWidget_tangram:"/passApi/js/uni_confirmWidget_tangram_254ebe0.js"},r={login:o,loginWap:"/passApi/css/uni_loginWap_f57424a.css",smsloginEn:"/passApi/css/uni_smsloginEn_eef0a6a.css",accConnect:"/passApi/css/uni_accConnect_ab6dda9.css",accRealName:"/passApi/css/uni_accRealName_a224a37.css",secondCardVerify:"/passApi/css/uni_secondCardVerify_98a0d35.css",checkPhone:"/passApi/css/uni_checkPhone_cd7c7a0.css",checkIDcard:"/passApi/css/uni_checkIDcard_be79680.css",accSetPwd:"/passApi/css/uni_accSetPwd_29f7784.css",IDCertify:"/passApi/css/uni_IDCertify_36e091b.css",IDCertifyQrcode:"/passApi/css/uni_IDCertifyQrcode_1e8827b.css",loadingApi:"/passApi/css/uni_loadingApi_f8732c0.css",loginPad:"/passApi/css/uni_loginPad_af389a4.css",multiBind:"/passApi/css/uni_multiBind_e8d24e4.css",multiUnbind:"/passApi/css/uni_multiUnbind_21428a6.css",changeUser:"/passApi/css/uni_changeUser_c7ae7b4.css",loginMultichoice:"/passApi/css/uni_loginMultichoice_289d3a0.css",confirmWidget:"/passApi/css/uni_confirmWidget_073965e.css",uni_rebindGuide:"/passApi/css/uni_rebindGuide_347ecf2.css",travelComplete:"/passApi/css/uni_travelComplete_8a662dd.css",bindGuide:"/passApi/css/uni_bindGuide_161740f.css"},u=n[i]||n["https:"];s=s||{},s.type=s.type||"login";var d,l=document,g=("_PassUni"+(new Date).getTime(),u+r[s.type]);s.cssUrlWrapper&&(g=cssUrlWrapper.join(t?"uni_loginv4.css":"uni_login.css")),d={show:function(){return d.loadPass(s.apiOpt),d.willShow=!0,d},setSubpro:function(n){return s.apiOpt&&(s.apiOpt.subpro=n),d},setMakeText:function(n){return s.apiOpt&&(s.apiOpt.makeText=n),d},loadPass:function(){var n=l.createElement("link");n.rel="stylesheet",n.type="text/css",n.href=g,n.disabled=!1,n.setAttribute("data-for","result"),l.getElementsByTagName("head")[0].appendChild(n),d.show=function(){return d.willShow=!0,d},s.plugCss&&(n=l.createElement("link"),n.rel="stylesheet",n.type="text/css",n.href=s.plugCss,n.disabled=!1,n.setAttribute("data-for","result"),l.getElementsByTagName("head")[0].appendChild(n)),d.passCallback(),delete d.loadPass},passCallback:function(){d.components.length>0?passport.pop.insertScript(d.components.shift(),d.passCallback):(passport.pop[s.type](s,d,function(){d.willShow&&d.show(),s&&s.onRender&&s.onRender()}),delete d.passCallback,delete d.components)},components:[]};var m="uni_"+s.type;return s.tangram&&(m+="_tangram"),s.apiOpt&&s.apiOpt.product+""=="ik"&&Math.random()<.3&&(d.components.push(u+"/passApi/js/uni/passhunt.js"),s.hunter=!0),d.components.push(u+_[m]),s.cache&&d.loadPass(s.apiOpt),s.id&&l.getElementById(s.id)&&(l.getElementById(s.id).onclick=function(){d.show()}),isSingleInstanceProd(s.apiOpt.product)&&isLoginInstance(s.type)&&saveInitInstance(d),d};
define("common:widget/ui/jsmod/main.js",function(n,i,t){var e,o,r,p=$("script[src*='jsmod.js']");if(p.length>0){r=/(^|&|\\?|#)config=([^&#]*)/;try{e=r.exec(p.prop("src"))[2]}catch(s){e=void 0}}window.__jsmodConfig&&(e=window.__jsmodConfig),function(){var n={};o=function i(t,e){var o=/\W/.test(t)?new Function("obj","var p=[],print=function(){p.push.apply(p,arguments);};with(obj){p.push('"+t.replace(/[\r\t\n]/g," ").split("<%").join("	").replace(/((^|%>)[^\t]*)'/g,"$1\r").replace(/\t=(.*?)%>/g,"',$1,'").split("	").join("');").split("%>").join("p.push('").split("\r").join("\\'")+"');}return p.join('');"):n[t]=n[t]||i(document.getElementById(t).innerHTML);return e?o(e):o}}(),t.exports={version:"1.0.0",config:e,template:o,ie6:/msie 6/i.test(navigator.userAgent)}});
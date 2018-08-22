define("common:widget/ui/jsmod/Dialog/Dialog.js",function(e,t,o){var n,i;n=e("common:widget/ui/jsmod/main.js"),i={backgroundColor:"#FFF"};var s=function(e){var t=this;t.option=$.extend({},i,e),t.init()};s.opacity=.7,s.resetFrame=function(){var e=$(".mod-dialog-frame");0==e.length&&(n.ie6?(s.frame=$('<div class="mod-dialog-frame" style="overflow:auto; overflow-x:hidden; display:none; position: absolute; left:0; top: 0; right:0; bottom: 0; z-index: 1000;">').appendTo("body"),s.frame.css("width",$(window).width()),s.frame.css("height",$(window).height()),s.frame.bgiframe()):s.frame=$('<div class="mod-dialog-frame" style="overflow:auto; display:none; position: fixed; left:0; top: 0; right:0; bottom: 0; z-index: 0;"></div>').appendTo("body"),s.setOpacity()),n.ie6&&s.frame.css("top",$("html").scrollTop()),e.find(".mod-dialog-wrap").length>0&&e.find(".mod-dialog-wrap").detach()},s.disableKeyEvent=function(){$(document).off("keydown.dialog"),s.keyEvent=!1},s.enableKeyEvent=function(){s.keyEvent||($(document).on("keydown.dialog",function(e){27==e.keyCode&&(s._instance&&s._instance.hide({fade:!0}),$(s._instance).trigger("pressesc"))}),s.keyEvent=!0)},s.reset=function(){s.enableKeyEvent(),s.setOpacity(.7)},s.resetEvent||($(window).on("resize.dialog",function(){s._instance&&"none"!=s.frame.css("display")&&(n.ie6&&(s.frame.css("width",$(window).width()),s.frame.css("height",$(window).height()),s.frame.css("top",$("html").scrollTop())),s._instance.adjuestPosition())}),s.resetEvent=!0),s.enableKeyEvent(),s.setOpacity=function(e){var t;void 0!==e&&(s.opacity=e),t=parseInt(255*s.opacity).toString(16),"0"==t&&(t="00"),s.frame&&(s.frame.css("filter","progid:DXImageTransform.Microsoft.gradient(startColorstr=#"+t+"000000,endColorstr=#"+t+"000000"),n.ie6||s.frame.css("background-color","rgba(0, 0, 0,"+s.opacity+")"))},$.extend(s.prototype,{init:function(){var e,t=this;e=$(t.option.html),t.content=$('<div style="overflow:hidden; position: absolute;" class="mod-dialog-wrap"></div>').append(e),t.option.backgroundColor&&t.content.css("background-color",t.option.backgroundColor),s.resetFrame(),t.setBox(),s.frame.append(t.content)},setBox:function(e){var t=this;$.extend(t.option,e),t.option.width&&t.content.css("width",t.option.width),t.option.height&&t.content.css("height",t.option.height),"none"!=s.frame.css("display")&&t.adjuestPosition()},show:function(e){var t=this;e=e||{},$("html").css("overflow","visible"),$("body").css("overflow","hidden"),s.resetFrame(),s.frame.show(),e.fade?t.content.hide().appendTo(s.frame).fadeIn("fast"):s.frame.append(t.content),t.adjuestPosition(),s._instance=t},hide:function(e){e=e||{},$("html").css("overflow",""),$("body").css("overflow",""),e.fade?s.frame.fadeOut("fast"):s.frame.hide()},adjuestPosition:function(){var e,t,o,n,i,a,d=this,r=d.option.offset||{};e=s.frame.height(),t=s.frame.width(),o=d.content.height(),n=d.content.width(),i=e/2-o/2+(r.top||0),a=t/2-n/2+(r.left||0),i=0>i?0:i,a=0>a?0:a,d.content.css("top",i),d.content.css("left",a)},getElement:function(){return this.content},destroy:function(){this.hide(),this.content.remove(),this.content=null}}),o.exports=s});
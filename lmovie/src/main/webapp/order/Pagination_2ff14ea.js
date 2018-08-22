define("common:widget/ui/jsmod/Pagination/Pagination.js",function(e,a,t){var n,g;n=e("common:widget/ui/jsmod/main.js"),g={currentPage:0,maxShowPage:10,textLabel:["首页","上一页","下一页","尾页"],pageLabel:"{#0}",preventInitEvent:!1};var i=function(e,a){var t=this;t.element=$(e),t.option=$.extend({},g,a),t.generatePage()};i.Counst={},i.Counst.PAGE_TPL='<div class="mod-page"><% for (var i = 0; i < renderDatas.length; i++) { %><a href="javascript:void(0);" <% if (renderDatas[i].page !== undefined) { %> data-page="<%= renderDatas[i].page %>" <% } %> class="mod-page-item <%= renderDatas[i].className %>"><%= renderDatas[i].label %></a><% } %></div>',"baidu"==n.config&&(i.Counst.PAGE_TPL='<div class="page"><% for (var i = 0; i < renderDatas.length; i++) { %><a href="javascript:void(0);" <% if (renderDatas[i].page !== undefined) { %> data-page="<%= renderDatas[i].page %>" <% } %> class="page-item <%= renderDatas[i].className %>"><%= renderDatas[i].label %></a><% } %></div>'),$.extend(i.prototype,{generatePage:function(){var e=this,a=e.option;e.generateEvents(),a.pageCount<a.maxShowPage&&(a.maxShowPage=a.pageCount),a.preventInitEvent?e.setPage(a.currentPage):setTimeout(function(){e.setPage(a.currentPage)},0)},setPage:function(e){var a,t,n=this;a=n.getHTML(n.getRenderDatas(e)),n.element.html(a),t=$.Event("page",{page:n.currentPage}),$(n).trigger(t,[{page:n.currentPage}])},generateEvents:function(){{var e=this,a=e.element;e.option}a.delegate("[data-page]","click.page",function(){var a=$(this).data("page");return $.isNumeric(a)?e.setPage(a):"+"==a?e.setPage(e.currentPage+1):"-"==a&&e.setPage(e.currentPage-1),!1})},destory:function(){this.element.undelegate("click.page"),this.element.html("")},destroy:function(){this.destory()},getHTML:function(e){var a;return a=n.template(i.Counst.PAGE_TPL,{renderDatas:e})},getRenderDatas:function(e){var a,t,g,i,r=this,s=r.option,o=[];for(e=parseInt(e),e=0>e?0:e,e=e>s.pageCount-1?s.pageCount-1:e,flag=parseInt(s.maxShowPage/3),a=0>e-flag?0:e-flag,g=0>e-flag?Math.abs(e-flag):0,t=e+(s.maxShowPage-flag)-1>s.pageCount-1?s.pageCount-1:e+(s.maxShowPage-flag)-1,i=e+(s.maxShowPage-flag)-1>s.pageCount-1?Math.abs(e+(s.maxShowPage-flag)-1-(s.pageCount-1)):0,a-=i,t+=g,0!=e&&$.each(s.textLabel.slice(0,2),function(e,a){0==e&&a&&o.push({className:"baidu"==n.config?"page-item-first":"mod-page-item-first",label:a,page:0}),1==e&&a&&o.push({className:"baidu"==n.config?"page-item-prev":"mod-page-item-prev",label:a,page:"-"})}),a;t>=a;a++)o.push({className:a==e?"baidu"==n.config?"page-item-active":"mod-page-item-active":"",label:$.isFunction(s.pageLabel)?s.pageLabel(a):s.pageLabel.replace(/{#0}/g,a+1),page:a});return e!=s.pageCount-1&&$.each(s.textLabel.slice(2,4),function(e,a){0==e&&a&&o.push({className:"baidu"==n.config?"page-item-next":"mod-page-item-next",label:a,page:"+"}),1==e&&a&&o.push({className:"baidu"==n.config?"page-item-last":"mod-page-item-last",label:a,page:s.pageCount-1})}),r.currentPage=e,o}}),t.exports=i});
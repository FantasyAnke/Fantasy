// JavaScript Document
//下面用于图片上传预览功能
//docInput:上传图片按钮的ID
//imgDmo:显示图片的标签（img）的ID
//width:显示的图片宽度
//height:显示的图片高度
function setImagePreview(docInput,imgDmo,width,height) {
    var docObj=document.getElementById(docInput); //jquery写法：$("#"docInput)
    var imgObjPreview=document.getElementById(imgDmo);//jquery写法：$("#"imgDmo)[0]
    if(docObj.files &&docObj.files[0])
    {
        //火狐下，直接设img属性
        imgObjPreview.style.display = 'block';
        imgObjPreview.style.width = width+'px';
        imgObjPreview.style.height = height+'px'; 
        //imgObjPreview.src = docObj.files[0].getAsDataURL();

        //火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式
        imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);
    }
    else
    {
        //IE下，使用滤镜
        docObj.select();
        var imgSrc = document.selection.createRange().text;
        var localImagId = document.getElementById("localImag");
        //必须设置初始大小
        localImagId.style.width = width+'px';
        localImagId.style.height = height+'px'; 
        //图片异常的捕捉，防止用户修改后缀来伪造图片
        try{
            localImagId.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
            localImagId.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
        }
        catch(e)
        {
            alert("您上传的图片格式不正确，请重新选择!");
            return false;
        }
        imgObjPreview.style.display = 'none';
        document.selection.empty();
    }
    return true;
}
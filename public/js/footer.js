// 调用尾部
$(function(){
    $.ajax(
        {
        url:"footer.html",
        type:"get",
        success: function(footer) {
            //替换html 代码
            //用创建 替换  网页中旧代码
            $(footer).replaceAll("footer");
            //追加 header.css
            $(`<link rel="stylesheet" href="./css/footer.css"/>`).appendTo("head");
        }
    })
})
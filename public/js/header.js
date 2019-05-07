// ajax 请求header.html
//在 dom 树加载后执行
$(function(){
    $.ajax(
        {
        url:"header.html",
        type:"get",
        success: function(header) {
            //替换html 代码
            //用创建 替换  网页中旧代码
            $(header).replaceAll("header");
            //追加 header.css
            $(`<link rel="stylesheet" href="./css/header.css"/>`).appendTo("head");
        }
    })
})
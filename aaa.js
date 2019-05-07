(function outer(){
    var num=1;
    function inner(){
        var n=2;
        alert(n+num);
    }
    return inner;
})()
//outer()();
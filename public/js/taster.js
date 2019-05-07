
    axios.get("http://127.0.0.1:8080/taster/taster").then(function(list){
        console.log(list.data);
        new Vue({
            el:"section",
            data:{
                list:list.data
            }
        });
    })

       
        
    

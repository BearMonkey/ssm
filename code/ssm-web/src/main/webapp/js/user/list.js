$().ready(function(){
    //请求用户数据
    $.post(getPath() + "/user/users", {page:1, size:10}, function(data){
    	console.log("data:"+data);
    	var vm = new Vue({
            el: "#userList",
            data: {users:data}
        });
    },'json');
    
});
$().ready(function(){
    $("#btn-signup").click(function(){
    	signUp();
    });
});

/**
 * 注册
 */
function signUp(){
	var url = getPath()+"/login/signUpRight"
	var params = $("#form-signup").serializeObject();
	$.post(url, params, function(data){
		
	});
}

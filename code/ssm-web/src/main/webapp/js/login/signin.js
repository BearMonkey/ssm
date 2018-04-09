$().ready(function(){
	$("#btn-signin").click(function(){
		signIn();
	});
});

/**
 * 登录
 */
function signIn(){
	var params = $("#form-signin").serializeObject();
	var account = params['account'];
	var passwd = params['passwd'];
	console.log("account:" + account + "--passwd:" + passwd);
	var url = getPath()+"/login/signIn";
	$.post(url, params, function(data){
		
	});
}
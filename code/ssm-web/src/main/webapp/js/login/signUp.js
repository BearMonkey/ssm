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
	var account = params['username'];
	var passwd = params['passwd'];
	var confirmPwd = params['confirmPwd'];
	//检验
	if(isEmpty(account)) {
		$("#account").next().text("请输入用户名");
		return;
	}
	if(isEmpty(passwd)) {
		$("#passwd").next().text("请输入密码");
		return;
	}
	if(isEmpty(confirmPwd)) {
		$("#confirmPwd").next().text("请再次输入密码");
		return;
	}
	if(passwd != confirmPwd) {
		$("#confirmPwd").next().text("两次密码输入不一致");
		return;
	}
	
	$.post(url, params, function(data){
		
	});
}

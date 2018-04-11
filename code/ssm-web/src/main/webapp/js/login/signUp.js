$().ready(function(){
    $("#account").blur(function(){
    	console.log(1);
    	validateAccount();	
    });
    $("#passwd").blur(function(){
    	console.log(2);
    	validatePasswd();	
    });
    $("#confirmPwd").blur(function(){
    	console.log(3);
    	validateConfirmPwd();	
    });
    $("#btn-signup").click(function(){
    	console.log(4);
    	signUp();
    });
});

function validateAccount(){
	var account = $("#account").val();
	if(isEmpty(account)) {
		$("#account").next().text("请输入用户名");
		return false;
	} else {
		$("#account").next().text("");
		return true;
	}
}
function validatePasswd(){
	var passwd = $("#passwd").val();
	if(isEmpty(passwd)) {
		$("#passwd").next().text("请输入密码");
		return false;
	} else {
		$("#passwd").next().text("");
		return true;
	}
}
function validateConfirmPwd(){
	var confirmPwd = $("#confirmPwd").val();
	var passwd = $("#passwd").val();
	if(isEmpty(confirmPwd)) {
		$("#confirmPwd").next().text("请再次输入密码");
		return false;
	} else if(confirmPwd != passwd) {
		console.log(confirmPwd+"==" + passwd);
		$("#confirmPwd").next().text("两次密码输入不一致");
		return false;
	} else {
		$("#confirmPwd").next().text("");
		return true;
	}
}

/**
 * 注册
 */
function signUp(){
	var url = getPath()+"/login/signUp"
	var params = $("#form-signup").serializeObject();
	if(!validateAccount()){
		console.log("x");
		return;
	} else if(!validatePasswd()) {
		console.log("y");
		return;
	} else if(!validateConfirmPwd()) {
		console.log("z");
		return;
	} else {
		console.log("here!");
		$("p.text-danger").text("");
		$.post(url, params, function(data){
			console.log(data);
			if(500 == data.code) {
				console.log(data.msg);
			} else {
				console.log(data.msg);
			}
		},"json");
	}
}

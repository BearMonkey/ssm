<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    session.setAttribute("basePath", basePath);
%>
<!DOCTYPE html>
<jsp:include page="../include/header.jsp"></jsp:include>
<html>
  <head>
    <meta charset="UTF-8">
    <title>登录</title>
  </head>
  <body>
    <div id="mainbody" class="wid">
      <div id="signin-area">
        <form id="form-signin">
          <div>
            <label for="account">账号：</label>
            <input type="text" id="account" name="account" value="" placeholder="用户名">
          </div>
          <div>
            <label for="passwd">密码：</label>
            <input type="password" id="passwd" name="passwd" value="" placeholder="密码">
          </div>
          <div>
            <input type="button" id="btn-signin" value="登录">
          </div>
        </form>
      </div>
    </div>
    <script type="text/javascript" src="${basePath }/js/login/signin.js"></script>
  </body>
</html>
<jsp:include page="../include/footer.jsp"></jsp:include>
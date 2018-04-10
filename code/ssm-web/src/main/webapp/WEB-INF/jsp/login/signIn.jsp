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
    <div class="container" id="mainbody">
      <div class="row">
        <div class="col-md-8" id="adv-area"></div>
        <div class="col-md-4" id="signin-area">
          <form id="form-signin">
            <div class="form-group">
              <label for="account">账号：</label>
              <input class="form-control" type="text" id="account" name="account" value="" placeholder="用户名">
              <p class="help-block text-danger"></p>
            </div>
            <div class="form-group">
              <label for="passwd">密码：</label>
              <input class="form-control" type="password" id="passwd" name="passwd" value="" placeholder="密码">
              <p class="help-block text-danger"></p>
            </div>
            <div class="checkbox">
              <label>
                <input type="checkbox">记住我
              </label>
            </div>
            <div class="form-group">
              <button type="button" class="form-control btn btn-success" id="btn-signin">登录</button>
            </div>
          </form>
        </div>
      </div>
    </div>
    <script type="text/javascript" src="${basePath }/js/login/signin.js"></script>
  </body>
</html>
<jsp:include page="../include/footer.jsp"></jsp:include>
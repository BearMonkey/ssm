<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
    session.setAttribute("basePath", basePath);
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${basePath}/css/common/reset.css">
    <link rel="stylesheet" href="${basePath}/css/include/header.css">
    <link rel="stylesheet" href="${basePath}/css/common/common.css">
  </head>
  <body>
    <header id="header" class="wid container">
      <div class="row">
        <img class="col-sm-6" alt="" src=""/>
        <nav class="col-sm-6" id="login-area">
          <ul class="login text-right">
            <li class="login-area-item"><a href="${basePath}/login/signIn">登录</a></li>
            <li class="login-area-item"><a href="${basePath}/login/signUp">注册</a></li>
          </ul>
          <ul class="logout text-right">
            <li class="login-area-item">Monkey</li>
            <li class="login-area-item"><a href="${basePath}/login/singOut">退出</a></li>
          </ul>
        </nav>
      </div>
    </header>
    <script type="text/javascript" src="https://apps.bdimg.com/libs/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/vue"></script>
    <script type="text/javascript" src="${basePath}/js/common/common.js"></script>
  </body>
</html>
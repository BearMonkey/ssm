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
    <link href="http://apps.bdimg.com/libs/bootstrap/3.3.4/css/bootstrap.min.css">
    <link href="http://apps.bdimg.com/libs/fontawesome/4.4.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${basePath}/css/common/reset.css">
    <link rel="stylesheet" href="${basePath}/css/include/header.css">
    <link rel="stylesheet" href="${basePath}/css/common/common.css">
  </head>
  <body>
    <header id="header">
      <nav id="login-area">
        <ul class="login">
          <li class="login-area-item"><a href="${basePath}/login/signIn">登录</a></li>
          <li class="login-area-item"><a href="${basePath}/login/signUp">注册</a></li>
        </ul>
        <ul class="logout">
          <li class="login-area-item">Monkey</li>
          <li class="login-area-item"><a href="${basePath}/login/singOut">退出</a></li>
        </ul>
      </nav>
    </header>
    <script type="text/javascript" src="https://apps.bdimg.com/libs/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://apps.bdimg.com/libs/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/vue"></script>
    <script type="text/javascript" src="${basePath}/js/common/common.js"></script>
  </body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>注册</title>
    <jsp:include page="../include/header.jsp"></jsp:include>
  </head>
  <body>
    <div>sign up</div>
    <jsp:include page="../include/footer.jsp"></jsp:include>
  </body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    session.setAttribute("basePath", basePath);
%>
<!DOCTYPE html>
<jsp:include page="../include/header.jsp"></jsp:include>
<html lang="zh-CN">
  <head>
    <meta charset="UTF-8">
    <title>用户</title>
  </head>
  <body>
    <div>
      <table>
        <thead>
          <tr>
            <th><input id="selectAllUser" type="checkbox" name="selectAllUser"><span>全选</span></th>
            <th>账号</th>
            <th>姓名</th>
            <th>手机号</th>
            <th>操作</th>
          </tr>
        </thead>
        <tbody id="userList">
          <tr v-for="user in users">
            <td><input class="userItem" type="checkbox" name="userItem"></td>
            <td>{{user.account}}</td>
            <td>{{user.name}}</td>
            <td>{{user.tel}}</td>
            <td></td>
          </tr>
        </tbody>
      </table>
    </div>
    <script type="text/javascript" src="${basePath}/js/user/list.js"></script>
  </body>
</html>
<jsp:include page="../include/footer.jsp"></jsp:include>
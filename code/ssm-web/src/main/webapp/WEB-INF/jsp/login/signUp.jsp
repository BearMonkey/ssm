<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<jsp:include page="../include/header.jsp"></jsp:include>
<html>
  <head>
    <meta charset="UTF-8">
    <title>注册</title>
  </head>
  <body>
    <div class="container" id="mainbody">
      <div class="row">
        <div class="col-md-6 col-md-offset-3">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h3 class="panel-title">快速注册</h3>
            </div>
            <div class="panel-body">
              <form id="form-signup" action="">
                <div class="form-group">
                  <label for="">用户名</label>
                  <input class="form-control" type="text" id="username" name="username" value="" placeholder="用户名">
                  <p class="help-block text-danger"></p>
                </div>
                <div class="form-group">
                  <label for="">密码</label>
                  <input class="form-control" type="text" id="password" name="password" value="" placeholder="密码">
                  <p class="help-block text-danger"></p>
                </div>
                <div class="form-group">
                  <label for="">密码确认</label>
                  <input class="form-control" type="text" id="confirmPwd" name="confirmPwd" value="" placeholder="密码确认">
                  <p class="help-block text-danger"></p>
                </div>
                <div class="col-md-6">
                  <button type="button" class="form-control btn btn-success" id="btn-signup">注册</button>
                </div>
                <div class="col-md-6">
                  <button type="button" class="form-control btn btn-default" id="btn-cancel" onclick="javascript:history.back(-1);">取消</button>
                </div>
                <p class="text-danger">asdf</p>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <script type="text/javascript" src="${basePath }/js/login/signUp.js"></script>
  </body>
</html>
<jsp:include page="../include/footer.jsp"></jsp:include>
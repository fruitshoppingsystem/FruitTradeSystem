<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>商家注册</title>
    <link rel="stylesheet" href="../../css/bootstrap.css">
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <script src="../../html/js/bootstrap.js"></script>
    <script src="../../html/js/bootstrap.min.js"></script>
    <script src="../../html/js/jquery.min.js"></script>
</head>
<body style="margin:50px">
<div class="row" style="margin-top:200px;">
    <div class="col-md-6 col-md-offset-3" >
        <div class="well col-md-12">
            <h3 align="center">商家注册</h3>
            <div class="input-group input-group-md">
                <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-user" aria-hidden="true"></i></span>
                <input type="text" class="form-control" placeholder="输入用户名" aria-describedby="sizing-addon1">
            </div>
            <div class="input-group input-group-md">
                <span class="input-group-addon" id="sizing-addon2"><i class="glyphicon glyphicon-lock"></i></span>
                <input type="password" class="form-control" placeholder="输入密码" aria-describedby="sizing-addon2">
            </div>
            <div class="input-group input-group-md">
                <span class="input-group-addon" id="sizing-addon3"><i class="glyphicon glyphicon-lock"></i></span>
                <input type="password" class="form-control" placeholder="重新输入密码" aria-describedby="sizing-addon3">
            </div>
            <div class="input-group input-group-md">
                <span class="input-group-addon" id="sizing-addon4"><i class="glyphicon glyphicon-paperclip"></i></span>
                <input type="password" class="form-control" placeholder="提交营业证书编号" aria-describedby="sizing-addon4">
            </div>
            <br />
            <div>
                <button type="submit" class="btn btn-success btn-block">注册</button>
                <button type="reset" class="btn btn-success btn-block">重置</button>
            </div>
            <div style="text-align: center; margin-top: 10px;">
                <a href="../../index.jsp"><button class="btn btn-info">返回首页</button></a>
                <a href="login.jsp"><button class="btn btn-info">去登录</button></a>
            </div>
        </div>
    </div>
</div>
</body>
</html>
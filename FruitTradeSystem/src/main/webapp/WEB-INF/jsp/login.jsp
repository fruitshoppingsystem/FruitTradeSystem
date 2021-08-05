<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登录</title>
    <link rel="stylesheet" href="../../css/bootstrap.css">
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/index.css">
    <script src="../../html/js/bootstrap.js"></script>
    <script src="../../html/js/bootstrap.min.js"></script>
    <script src="../../html/js/jquery.min.js"></script>
</head>
<body style="margin: 50px">
<div class="row" style="margin-top:100px;" >
    <div class="col-md-6 col-md-offset-3">
        <h3 align="center" class="alert alert-info" style="width: 700px;">欢迎登录水果购物平台</h3>
    </div>
    <div class="col-md-6 col-md-offset-3" >
        <div class="well col-md-12">
            <h3 align="center">用户登录</h3>
            <div class="input-group input-group-md">
                <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-user" aria-hidden="true"></i></span>
                <input type="text" class="form-control" placeholder="用户名" aria-describedby="sizing-addon1">
            </div>
            <div class="input-group input-group-md">
                <span class="input-group-addon" id="sizing-addon2"><i class="glyphicon glyphicon-lock"></i></span>
                <input type="password" class="form-control" placeholder="密码" aria-describedby="sizing-addon2">
            </div>
            <div class="well well-sm" style="text-align:center;">
                <input type="radio" name="kind" value="tea"> 用户
                <input type="radio" name="kind" value="stu"> 管理员
                <input type="radio" name="kind" value="stu"> 商家
            </div>
            <button type="submit" class="btn btn-success btn-block">登录</button>
            <br />
            <a href="${pageContext.request.contextPath}/page/indexPage"><button class="btn btn-success btn-block">返回首页</button></a>
            <div style="text-align: center; margin-top: 10px;">
                <a href="${pageContext.request.contextPath}/page/userRegisterPage"><button class="btn btn-info">用户注册</button></a>
                <a href="${pageContext.request.contextPath}/page/merchantRegisterPage"><button class="btn btn-info">商家注册</button></a>
            </div>
        </div>
    </div>
</div>
</body>
</html>
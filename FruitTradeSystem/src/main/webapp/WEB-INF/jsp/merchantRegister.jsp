<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>商家注册</title>
    <link rel="stylesheet" href="../../css/bootstrap.css">
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <script src="../../html/js/jquery.min.js"></script>
    <script src="../../html/js/bootstrap.js"></script>
    <script src="../../html/js/bootstrap.min.js"></script>
</head>
<body style="margin:50px">
<div class="row" style="margin-top:200px;">
    <div class="col-md-6 col-md-offset-3" >
        <div class="well col-md-12">
            <h3 align="center">商家注册</h3>
            <div class="input-group input-group-md">
                <span class="input-group-addon" id="sizing-addon4"><i class="glyphicon glyphicon-paperclip"></i></span>
                <input id="mCertificatenum" type="text" class="form-control" placeholder="提交营业证书编号" aria-describedby="sizing-addon4" onblur="checkCertificatenum()">
            </div>
            <label id="certificatenum_trip"></label>
            <div class="input-group input-group-md">
                <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-user" aria-hidden="true"></i></span>
                <input id="mName" type="text" class="form-control" placeholder="输入用户名" aria-describedby="sizing-addon1" onblur="checkName()">
            </div>
            <label id="name_trip"></label>
            <div class="input-group input-group-md">
                <span class="input-group-addon" id="sizing-addon2"><i class="glyphicon glyphicon-lock"></i></span>
                <input id="mPassword" type="password" class="form-control" placeholder="输入密码" aria-describedby="sizing-addon2" onblur="checkPassword()">
            </div>
            <label id="password_trip"></label>
            <div class="input-group input-group-md">
                <span class="input-group-addon" id="sizing-addon3"><i class="glyphicon glyphicon-lock"></i></span>
                <input id="mSurePassword" type="password" class="form-control" placeholder="重新输入密码" aria-describedby="sizing-addon3" onblur="checkSurePassword()">
            </div>
            <label id="surePassword_trip"></label>
            <br />
            <div>
                <button id="register" type="submit" class="btn btn-success btn-block" onblur="checkForm()" onclick="submitT()">注册</button>
                <button type="reset" class="btn btn-success btn-block">重置</button>
            </div>
            <div style="text-align: center; margin-top: 10px;">
                <a href="${pageContext.request.contextPath}/page/indexPage"><button class="btn btn-info">返回首页</button></a>
                <a href="${pageContext.request.contextPath}/page/loginPage"><button class="btn btn-info">去登录</button></a>
            </div>
        </div>
    </div>
</div>
<form id="form">

</form>
</body>
<script type="text/javascript">
    function trip(obj, trip) {
        document.getElementById(obj).innerHTML = "<b>" + trip + "</b>";
    }

    function checkForm() {
        if (checkCertificatenum() && checkName() && checkPassword() && checkSurePassword()){
            return true;
        }else {
            alert("格式错误");
            return false;
        }
    }

    function checkCertificatenum() {
        var inputCertificatenum = document.getElementById("mCertificatenum");
        var mCertificatenum = inputCertificatenum.value;
        if (mCertificatenum.length === 15 || mCertificatenum.length === 18) {
            trip("certificatenum_trip", "√");
            return true;
        } else {
            trip("certificatenum_trip", "营业证书编号为15位或18位");
            return false;
        }
    }

    function checkName() {
        //获取用户名输入项m
        var merchantName = document.getElementById("mName");
        var mName = merchantName.value;
        if (mName.length < 1 || mName.length > 10) {

            trip("name_trip", "账号长度为1-10位!!");
            return false;
        } else {
            trip("name_trip", "√");
            return true;
        }
    }

    function checkPassword() {
        //密码长度大于6 和确认必须一致
        var password = document.getElementById("mPassword");
        var merchantPass = password.value;
        if (merchantPass.length < 6|| merchantPass.length > 18) {
            trip("password_trip", "密码为6~18位大大小写数字特殊符号组合!!");
            return false;
        } else {
            trip("password_trip", "√");
            return true;
        }
    }

    function checkSurePassword() {
        //获取确认密码框的值 var
        var password = document.getElementById("mPassword");
        var merchantPass = password.value;
        var surePassword = document.getElementById("mSurePassword");
        var surePass = surePassword.value;
        if (merchantPass.trim() !== surePass.trim()) {
            trip("surePassword_trip", "两次密码不一致!!");
            return false;
        }else {
            trip("surePassword_trip", "√");
            return true;
        }
    }

    function submitT() {
        if (checkForm()){
            var mCertificatenum=$("#mCertificatenum").val();
            var mName=$("#mName").val();
            var mPassword=$("#mPassword").val();
            $.ajax({
                async:false,
                url : "${pageContext.request.contextPath}/merchant/merchantRegister",
                datatype : "String",
                type : "post",
                data:{
                    mCertificatenum:mCertificatenum, mName:mName, mPassword:mPassword
                },success:function (res) {
                    if (res === true){
                        alert("注册成功");
                        document.getElementById("form").action="${pageContext.request.contextPath}/page/loginPage";
                        document.getElementById("form").method="post";
                        document.getElementById("form").submit();
                        <%--window.location.href = "${pageContext.request.contextPath}/page/loginPage";--%>
                        <%--top.location='${pageContext.request.contextPath}/WEB-INF/jsp/login.jsp';--%>
                    }else{
                        alert("注册失败");
                        document.getElementById("form").action="${pageContext.request.contextPath}/page/merchantRegisterPage";
                        document.getElementById("form").method="post";
                        document.getElementById("form").submit();
                        <%--window.location.href = "${pageContext.request.contextPath}/page/userRegisterPage";--%>
                    }
                },error:function () {
                    alert("失败");
                }
            });
        }
    }
</script>
</html>
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
    <script src="../../html/js/jquery.min.js"></script>
    <script src="../../html/js/bootstrap.js"></script>
    <script src="../../html/js/bootstrap.min.js"></script>
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
                <input id="input" type="text" class="form-control" placeholder="邮箱/管理员ID/营业证书编号" aria-describedby="sizing-addon1" onblur="checkInput()">
            </div>
            <label id="input_trip"></label>
            <div class="input-group input-group-md">
                <span class="input-group-addon" id="sizing-addon2"><i class="glyphicon glyphicon-lock"></i></span>
                <input id="password" type="password" class="form-control" placeholder="密码" aria-describedby="sizing-addon2" onblur="checkPassword()">
            </div>
            <label id="password_trip"></label>
            <div class="well well-sm" style="text-align:center;">
                <label>
                    <input type="radio" name="radio" value="user" checked>
                    用户
                </label>
                <label>
                    <input type="radio" name="radio" value="admin">
                    管理员
                </label>
                <label>
                    <input type="radio" name="radio" value="merchant">
                    商家
                </label>
            </div>
                <input id="login" type="submit" class="btn bg-success btn-block" onclick="submit()" value="登录">
            <br />
            <a href="${pageContext.request.contextPath}/page/indexPage"><button class="btn btn-success btn-block">返回首页</button></a>
            <div style="text-align: center; margin-top: 10px;">
                <a href="${pageContext.request.contextPath}/page/userRegisterPage"><button class="btn btn-info">用户注册</button></a>
                <a href="${pageContext.request.contextPath}/page/merchantRegisterPage"><button class="btn btn-info">商家注册</button></a>
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

    function checkInput() {
        var radio = $("input[name='radio']:checked").val();
        if (radio === "user"){
            //校验邮箱:/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/
            var inputEmail = document.getElementById("input");
            var uEmail = inputEmail.value;
            if (!/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/.test(uEmail)) {
                trip("input_trip", "邮箱不合法!!");
                return false;
            } else {
                trip("input_trip", "√");
                return true;
            }
        }else if (radio === "merchant"){
            var inputCertificatenum = document.getElementById("input");
            var mCertificatenum = inputCertificatenum.value;
            if (mCertificatenum.length === 15 || mCertificatenum.length === 18) {
                trip("input_trip", "√");
                return true;
            } else {
                trip("input_trip", "营业证书编号为15位或18位");
                return false;
            }
        }else if (radio === "admin"){
            var inputId = document.getElementById("input");
            var aId = inputId.value;
            if (aId !== "") {
                trip("input_trip", "√");
                return true;
            } else {
                trip("input_trip", "管理员ID不能为空");
                return false;
            }
        }else {
            alert("error");
        }
    }

    function checkPassword() {
        //密码长度6~18
        var password = document.getElementById("password");
        var pass = password.value;
        if (pass.length < 6|| pass.length > 18) {
            trip("password_trip", "密码为6~18位大大小写数字特殊符号组合!!");
            return false;
        } else {
            trip("password_trip", "√");
            return true;
        }
    }

    function checkForm() {
        if (checkInput() && checkPassword()){
            return true;
        }else {
            alert("格式错误");
            return false;
        }
    }

function submit() {
    var radio = $("input[name='radio']:checked").val();
    if (radio === "user"){
        userLogin();
    }else if (radio === "merchant"){
        merchantLogin();
    }else if (radio === "admin"){
        adminLogin();
    }else {
        alert("error");
    }
}
function userLogin() {
    if (checkForm()){
        var uEmail=$("#input").val();
        var uPassword=$("#password").val();
        $.ajax({
            async:false,
            url : "${pageContext.request.contextPath}/user/userLogin",
            datatype : "String",
            type : "post",
            data:{
                uEmail:uEmail, uPassword:uPassword
            },success:function (res) {
                if (res === true){
                    alert("登录成功");
                    document.getElementById("form").action="${pageContext.request.contextPath}/page/userPage";
                    document.getElementById("form").method="post";
                    document.getElementById("form").submit();
                }else{
                    alert("登录失败");
                    document.getElementById("form").action="${pageContext.request.contextPath}/page/loginPage";
                    document.getElementById("form").method="post";
                    document.getElementById("form").submit();
                }
            },error:function () {
                alert("失败");
            }
        });
    }
}
function merchantLogin() {
    if (checkForm()){
        var mCertificatenum=$("#input").val();
        var mPassword=$("#password").val();
        $.ajax({
            async:false,
            url : "${pageContext.request.contextPath}/merchant/merchantLogin",
            datatype : "String",
            type : "post",
            data:{
                mCertificatenum:mCertificatenum, mPassword:mPassword
            },success:function (res) {
                if (res === true){
                    alert("登录成功");
                    document.getElementById("form").action="${pageContext.request.contextPath}/page/merchantPage?mCertificatenum="+mCertificatenum;
                    document.getElementById("form").method="post";
                    document.getElementById("form").submit();
                }else{
                    alert("登录失败");
                    document.getElementById("form").action="${pageContext.request.contextPath}/page/loginPage";
                    document.getElementById("form").method="post";
                    document.getElementById("form").submit();
                }
            },error:function () {
                alert("失败");
            }
        });
    }
}
function adminLogin() {
    if (checkForm()){
        var aId=$("#input").val();
        var aPassword=$("#password").val();
        $.ajax({
            async:false,
            url : "${pageContext.request.contextPath}/admin/adminLogin",
            datatype : "String",
            type : "post",
            data:{
                aId:aId, aPassword:aPassword
            },success:function (res) {
                if (res === true){
                    alert("登录成功");
                    document.getElementById("form").action="${pageContext.request.contextPath}/page/adminPage";
                    document.getElementById("form").method="post";
                    document.getElementById("form").submit();
                }else{
                    alert("登录失败");
                    document.getElementById("form").action="${pageContext.request.contextPath}/page/loginPage";
                    document.getElementById("form").method="post";
                    document.getElementById("form").submit();
                }
            },error:function () {
                alert("失败");
            }
        });
    }
}
</script>
</html>
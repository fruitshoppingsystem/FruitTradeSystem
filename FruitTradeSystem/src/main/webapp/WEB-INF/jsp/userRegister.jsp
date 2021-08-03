<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ch">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>用户注册</title>
    <link rel="stylesheet" href="../../css/bootstrap.css">
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <script src="../../html/js/bootstrap.js"></script>
    <script src="../../html/js/bootstrap.min.js"></script>
    <script src="../../html/js/jquery.min.js"></script>
</head>
<body style="margin:50px">
<div class="row" style="margin-top:200px;" id="userRegisterDiv">
    <div class="col-md-6 col-md-offset-3" >
        <div class="well col-md-12">
            <h3 align="center">用户注册</h3>
            <form id="form">
            <div class="input-group input-group-md">
                <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-folder-close" aria-hidden="true"></i></span>
                <input id="uEmail" type="email" class="form-control" placeholder="输入邮箱" aria-describedby="sizing-addon1" onblur="checkEmail()">
                <label id="email_trip"></label>
            </div>
            <div class="input-group input-group-md">
                <span class="input-group-addon" id="sizing-addon2"><i class="glyphicon glyphicon-user" aria-hidden="true"></i></span>
                <input id="uName" type="text" class="form-control" placeholder="输入用户名" aria-describedby="sizing-addon2" onblur="checkName()">
                <label id="name_trip"></label>
            </div>
            <div class="input-group input-group-md">
                <span class="input-group-addon" id="sizing-addon3"><i class="glyphicon glyphicon-lock"></i></span>
                <input id="uPassword" type="password" class="form-control" placeholder="输入密码" aria-describedby="sizing-addon3" onblur="checkPassword()">
                <label id="password_trip"></label>
            </div>
            <div class="input-group input-group-md">
                <span class="input-group-addon" id="sizing-addon4"><i class="glyphicon glyphicon-lock"></i></span>
                <input id="uSurePassword" type="password" class="form-control" placeholder="重新输入密码" aria-describedby="sizing-addon4" onblur="checkSurePassword()">
                <label id="surePassword_trip"></label>
            </div>
                <div class="input-group input-group-md">
                    <span class="input-group-addon" id="sizing-addon5"><i class="glyphicon glyphicon-lock"></i></span>
                    <input id="uCode" type="password" class="form-control" placeholder="输入验证码" aria-describedby="sizing-addon5" onblur="checkCode()">
                    <label id="code_trip"></label>
                    <input class="btn btn-info" type="button" value="获取验证码" id="get-captcha">
                </div>
            <br />
            <div>
                <input id="register" type="submit" class="btn bg-success btn-block" onblur="checkForm()" onclick="return submitT()" value="注册">
                <input type="reset" class="btn bg-success btn-block" value="重置">
            </div>

            <div style="text-align: center; margin-top: 10px;">
                <a href="../../index.jsp"><button class="btn btn-info">返回首页</button></a>
                <a href="login.jsp"><button class="btn btn-info">去登录</button></a>
            </div>
            </form>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">
    $("#get-captcha").click(function () {
        if($("#uEmail").val()===""){
            alert("邮箱不能为空");
            $("#uEmail").focus();
            return false;
        } else if($("#uEmail").val().indexOf('@')=='-1'||$("#uEmail").val().indexOf('.com')=='-1'){
            alert("请检查邮箱格式是否正确")
        } else{
            $("#get-captcha").attr("disabled", true);
            $("#get-captcha").val("发送中...");
            $.ajax({
                url:'email/send',
                datatype : "json",
                type : "post",
                data:{
                    email:$("#email").val()
                },
                success:function (res) {
                    if(res){
                        alert("验证码发送成功");
                        var count = 60;
                        var countdown = setInterval(CountDown, 1000);
                        function CountDown() {
                            $("#get-captcha").attr("disabled", true);
                            $("#get-captcha").val(count + "s");
                            if (count === 0) {
                                $("#get-captcha").val("重新获取验证码").removeAttr("disabled");
                                clearInterval(countdown);
                                $.ajax({
                                    url : "user/deletecaptcha",
                                    datatype : "json",
                                    type : "post",
                                    success:function () {
                                        alert("获取验证码失效，请重新获取")
                                    }
                                })
                            }
                            count--;
                        }
                    } else{
                        alert("该邮箱不能获取验证码")
                    }
                }
            })
        }
    });

    function trip(obj, trip) {
        document.getElementById(obj).innerHTML = "<b>" + trip + "</b>";
    }

    function checkForm() {
        checkEmail();
        checkName();
        checkPassword();
        checkSurePassword();
    }

    function checkEmail() {
        //校验邮箱:/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/
        var inputEmail = document.getElementById("uEmail");
        var uEmail = inputEmail.value;
        if (!/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/.test(uEmail)) {
            trip("email_trip", "邮箱不合法!!");
            return false;
        } else {
            trip("email_trip", "√");
            return true;
        }
    }

    function checkName() {
        //获取用户名输入项
        var userNname = document.getElementById("uName");
        var uName = userNname.value;
        if (uName.length < 1 || uName.length > 10) {

            trip("name_trip", "账号长度为1-10位!!");
            return false;
        } else {
            trip("name_trip", "√");
            return true;
        }
    }

    function checkPassword() {
        //密码长度大于6 和确认必须一致
        var password = document.getElementById("uPassword");
        var userPass = password.value;
        if (userPass.length < 6|| userPass.length > 18) {
            trip("password_trip", "密码为6~18位大大小写数字特殊符号组合!!");
            return false;
        } else {
            trip("password_trip", "√");
            return true;
        }
    }

    function checkSurePassword() {
        //获取确认密码框的值 var
        var password = document.getElementById("uPassword");
        var userPass = password.value;
        var surePassword = document.getElementById("uSurePassword");
        var surePass = surePassword.value;
        if (userPass.trim() !== surePass.trim()) {
            trip("surePassword_trip", "两次密码不一致!!");
            return false;
        }else {
            trip("surePassword_trip", "√");
            return true;
        }
    }

    function checkCode() {
        $.ajax({
            url:"user/checkcaptcha",
            data:{
                captcha:$("#uCode").val()
            },
            dataType:"json",
            type:"post",
            success:function (res) {
                if(res===false){
                    trip("code_trip", "验证码错误!!");
                    return false;
                }else{
                    trip("code_trip", "√");
                    return true;
                }
            }
        });
    }
    function submitT() {
        if (checkForm()){
            var uEmail=$("#uEmail").val();
            var uName=$("#uName").val();
            var uPassword=$("#uPassword").val();
            // $.ajax({ url: "userRegisterController", data:{"uEmail":uEmail,"uName":uName,"uPassword":uPassword}
            // , success: function(){
            //     alert("注册成功！")
            // }, error: function () {
            //     alert("注册失败！")
            // }
            // });
            document.getElementById("Form").action="user/userRegister?uEmail="+uEmail+"&uName="+uName+"&uPassword="+uPassword;
            document.getElementById("Form").submit();
        }
        return checkForm();
    }
</script>
</html>

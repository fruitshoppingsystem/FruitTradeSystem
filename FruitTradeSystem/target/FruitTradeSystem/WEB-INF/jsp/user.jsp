<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户个人界面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user.css" />
    <script src="${pageContext.request.contextPath}/html/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/html/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/html/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        window.onload = function(){
            document.getElementById("showbox1").onclick = function(){
                document.getElementById("box2").style.display = "none";
                document.getElementById("box3").style.display = "none";
                document.getElementById("box1").style.display = "block";
            };
            document.getElementById("showbox2").onclick = function(){
                document.getElementById("box1").style.display = "none";
                document.getElementById("box3").style.display = "none";
                document.getElementById("box2").style.display = "block";
            };
            document.getElementById("showbox3").onclick = function(){
                document.getElementById("box1").style.display = "none";
                document.getElementById("box2").style.display = "none";
                document.getElementById("box3").style.display = "block";
            };
        }
    </script>
</head>
<body style="margin:50px">
<div class="modal-content" style="background-color:ghostwhite" id="back">
    <h1 align="center">${user.uName}</h1>
    <p align="center"><label>收货地址：</label>${user.uAddress}  <label>联系电话：</label>${user.uPhonenum}</p>
    <div class="menu">
        <ul class="nav nav-pills">
            <li><a ><button style="border-style: hidden; background:none" onclick="index()">首页</button></a></li>
            <li><a id="showbox1">修改个人信息</a></li>
            <li><a id="showbox2">我的购物车</a></li>
            <li><a id="showbox3">我的订单</a></li>
            <li><a ><button style="border-style: hidden; background:none" onclick="vip()">开通VIP</button></a></li>
            <li><a ><button style="border-style: hidden; background:none" onclick="logout()">退出登录</button></a></li>
            <li><a ><button style="border-style: hidden; background:none" onclick="deleteUser()">注销账号</button></a></li>
        </ul>
    </div>
    <div id="box1">
        <h3>修改个人信息</h3>
            <label>用户名：<input type="text" name="uName" id="uName" value="${user.uName}"></label>
            <br>
            <label>地址：<input type="text" name="uAddress" id="uAddress" value="${user.uAddress}"></label>
            <br>
            <label>电话：<input type="text" name="uPhonenum" id="uPhonenum" value="${user.uPhonenum}" ></label>
            <br>
            <input type="button" value="修改" onclick="updateUserInfo()">
    </div>
    <div id="box2">
        <h3 align="center">我的购物车</h3>
        <label>总金额：</label>${totalPrice}<br />
        <label>VIP金额：</label>${vipTotalPrice}<br />
        <table class="table table-hover table-bordered" border="1" style="background-color:gainsboro">
            <tr>
                <td>商品名称</td>
                <td>商品价格</td>
                <td>VIP价格</td>
                <td>商品数量</td>
                <td>商品规格</td>
                <td>是否为VIP商品</td>
                <td>店铺名称</td>
                <td>操作</td>
            </tr>
            <c:forEach items="${shoppingCart}" var="shoppingCart">
            <tr>
                <td>${shoppingCart.gName}</td>
                <td>${shoppingCart.gPrice}</td>
                <td>${shoppingCart.gPrice}*0.7</td>
                <td>${shoppingCart.sSum}</td>
                <td>${shoppingCart.gSize}</td>
                <td>${shoppingCart.gVIP}</td>
                <td>${shoppingCart.mName}</td>
                <td>
                    <input type="button" value="结算" onclick="jiesuan('${shoppingCart.mCertificatenum}', ${shoppingCart.gId}, ${shoppingCart.sSum}, ${shoppingCart.sId}, ${shoppingCart.gPrice})" />
                    <input type="button" value="移除" onclick="deleteShoppingCart(${shoppingCart.sId})"/>
                </td>
            </tr>
            </c:forEach>
        </table>
<%--        <input type="button" value="结算" onclick="jiesuan()" />--%>
    </div>
    <div id="box3">
        <h3 align="center">我的订单</h3>
        <table class="table table-hover table-bordered" border="2" style="background-color:gainsboro">
            <tr>
                <td>订单号</td>
                <td>商品名称</td>
                <td>商品价格</td>
                <td>商品数量</td>
                <td>商品规格</td>
                <td>是否为VIP商品</td>
                <td>收货地址</td>
                <td>商家名称</td>
                <td>商家电话</td>
                <td>快递单号</td>
                <td>状态</td>
                <td>操作</td>
            </tr>
            <c:forEach items="${orders}" var="order">
            <tr>
                <td>${order.oId}</td>
                <td>${order.gName}</td>
                <td>${order.gPrice}</td>
                <td>${order.gSum}</td>
                <td>${order.gSize}</td>
                <td>${order.gVIP}</td>
                <td>${order.uPlace}</td>
                <td>${order.mName}</td>
                <td>${order.mPhonenum}</td>
                <td>${order.oTrackingnum}</td>
                <td>${order.oState}</td>
                <td>
                    <input type="button" value="确认收货" onclick="checkGood(${order.oId}, '${order.oState}')">
                    <input type="button" value="评论" onclick="comments('${order.uEmail}', '${order.mCertificatenum}', '${order.oState}', ${order.gId}, ${order.oId})">
                </td>
            </tr>
            </c:forEach>
        </table>
    </div>
</div>
<form id="form">

</form>
</body>
<script type="text/javascript">
    function logout() {
        var uEmail = "${user.uEmail}";
        $.ajax({
            async:false,
            url : "${pageContext.request.contextPath}/user/userLogout",
            datatype : "String",
            type : "post",
            data:{
                uEmail: uEmail
            },success:function (res) {
                if (res === true){
                    alert("退出成功");
                    document.getElementById("form").action="${pageContext.request.contextPath}/page/indexPage";
                    document.getElementById("form").method="post";
                    document.getElementById("form").submit();
                }else{
                    alert("退出失败");
                }
            },error:function () {
                alert("失败");
            }
        });
    }

    function index() {
        var uEmail = "${uEmail}";
        document.getElementById("form").action="${pageContext.request.contextPath}/page/indexPage?uEmail="+uEmail;
        document.getElementById("form").method="post";
        document.getElementById("form").submit();
    }

    function updateUserInfo() {
        var uEmail = "${uEmail}";
        var uName = $("#uName").val();
        var uAddress = $("#uAddress").val();
        var uPhonenum = $("#uPhonenum").val();
        $.ajax({
            async : false,
            url : "${pageContext.request.contextPath}/user/updateUser",
            datatype : "String",
            type : "post",
            data:{
                uEmail:uEmail, uName:uName, uAddress:uAddress, uPhonenum:uPhonenum
            },success:function () {
                alert("修改成功");
                document.getElementById("form").action="${pageContext.request.contextPath}/page/userPage?uEmail="+uEmail;
                document.getElementById("form").method="post";
                document.getElementById("form").submit();
            },error:function () {
                alert("修改失败");
            }
        });
    }

    function deleteUser() {
        var uEmail = "${uEmail}";
        $.ajax({
            async:false,
            url : "${pageContext.request.contextPath}/user/deleteUser",
            datatype : "String",
            type : "post",
            data:{
                uEmail: uEmail
            },success:function (res) {
                if (res === true){
                    alert("注销成功");
                    document.getElementById("form").action="${pageContext.request.contextPath}/page/indexPage";
                    document.getElementById("form").method="post";
                    document.getElementById("form").submit();
                }else{
                    alert("注销失败");
                }
            },error:function () {
                alert("失败");
            }
        });
    }

    function comments(uEmail, mCertificatenum, oState, gId, oId) {
        if (oState === "已收货"){
            document.getElementById("form").action="${pageContext.request.contextPath}/page/commentPage?uEmail="+uEmail+"&mCertificatenum="+mCertificatenum+"&gId="+gId+"&oId="+oId;
            document.getElementById("form").method="post";
            document.getElementById("form").submit();
        }else if (oState === "已评论"){
            alert("已评论");
        }else {
            alert("请收货后评论");
        }

    }

    function deleteShoppingCart(sId) {
        var uEmail = "${uEmail}";
        $.ajax({
            async:false,
            url : "${pageContext.request.contextPath}/shoppingCart/deleteShoppingCart",
            datatype : "String",
            type : "post",
            data:{
                sId: sId
            },success:function (res) {
                if (res === true){
                    alert("移除成功");
                    document.getElementById("form").action="${pageContext.request.contextPath}/page/userPage?uEmail="+uEmail;
                    document.getElementById("form").method="post";
                    document.getElementById("form").submit();
                }else{
                    alert("移除失败");
                }
            },error:function () {
                alert("失败");
            }
        });
    }

    function jiesuan(mCertificatenum, gId, sSum ,sId, gPrice) {
        var uVIP = ${user.uVIP};
        var uEmail = "${uEmail}";
        if (uVIP === 1){
            price = gPrice*0.7*sSum;
        }else {
            price = gPrice*sSum;
        }
        if (confirm("请支付"+price+"元")){
            $.ajax({
                url: "${pageContext.request.contextPath}/order/addOrder",
                type: "post",
                datatype: "String",
                data: {uEmail:uEmail, mCertificatenum:mCertificatenum, gId:gId, sSum:sSum},
                success: function (data) {
                    if (data.type === "success") {
                        alert(data.msg);
                        document.getElementById("form").action="${pageContext.request.contextPath}/page/userPage?uEmail="+uEmail;
                        document.getElementById("form").method="post";
                        document.getElementById("form").submit();
                    } else {
                        alert(data.msg);
                    }
                }, error: function () {
                    alert("失败");
                }
            });
            deleteShoppingCart(sId);
        }else {
            document.getElementById("form").action="${pageContext.request.contextPath}/page/userPage?uEmail="+uEmail;
            document.getElementById("form").method="post";
            document.getElementById("form").submit();
        }
    }

    function vip() {
        var uEmail = "${uEmail}";
        if (confirm("请支付10元")){
            $.ajax({
                url: "${pageContext.request.contextPath}/user/vip",
                type: "post",
                datatype: "String",
                data: {uEmail:uEmail},
                success: function (res) {
                    if (res === true) {
                        alert("开通成功");
                        document.getElementById("form").action="${pageContext.request.contextPath}/page/userPage?uEmail="+uEmail;
                        document.getElementById("form").method="post";
                        document.getElementById("form").submit();
                    } else {
                        alert("开通失败");
                    }
                }, error: function () {
                    alert("失败");
                }
            });
        }else {
            document.getElementById("form").action="${pageContext.request.contextPath}/page/userPage?uEmail="+uEmail;
            document.getElementById("form").method="post";
            document.getElementById("form").submit();
        }
    }
    
    function checkGood(oId, oState) {
        if (oState === "已发货"){
            var uEmail = "${uEmail}";
            $.ajax({
                url: "${pageContext.request.contextPath}/order/checkGood",
                type: "post",
                datatype: "String",
                data: {oId:oId},
                success: function (res) {
                    if (res === true) {
                        alert("收货成功");
                        document.getElementById("form").action="${pageContext.request.contextPath}/page/userPage?uEmail="+uEmail;
                        document.getElementById("form").method="post";
                        document.getElementById("form").submit();
                    } else {
                        alert("收货失败");
                    }
                }, error: function () {
                    alert("失败");
                }
            });
        }else if (oState === "已付款"){
            alert("商家未发货");
        }else {
            alert("已确认收货");
        }
    }
</script>
</html>

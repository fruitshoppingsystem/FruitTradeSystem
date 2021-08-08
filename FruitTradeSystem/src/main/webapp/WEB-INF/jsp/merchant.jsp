<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>商家个人界面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/merchant.css" />
    <script src="${pageContext.request.contextPath}/html/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/html/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/html/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        window.onload = function(){
            document.getElementById("showbox1").onclick = function(){
                document.getElementById("box2").style.display = "none";
                document.getElementById("box3").style.display = "none";
                document.getElementById("box1").style.display = "block";
            }
            document.getElementById("showbox2").onclick = function(){
                document.getElementById("box1").style.display = "none";
                document.getElementById("box3").style.display = "none";
                document.getElementById("box2").style.display = "block";
            }
            document.getElementById("showbox3").onclick = function(){
                document.getElementById("box1").style.display = "none";
                document.getElementById("box2").style.display = "none";
                document.getElementById("box3").style.display = "block";
            }
        }
    </script>
</head>
<body style="margin:50px">
<div class="modal-content" style="background-color:ghostwhite" id="back">
    <h1 align="center">${mName}</h1><h6 align="center"><label>评分：</label>${mScore}</h6>
    <p align="center"><label>地址：</label>${mAddress}  <label>电话：</label>${mPhonenum}</p>
    <div class="menu">
        <ul class="nav nav-pills">
            <li><a ><button style="border-style: hidden; background:none" onclick="index()">首页</button></a></li>
            <li><a id="showbox1">修改店铺信息</a></li>
            <li><a id="showbox2">我的商品</a></li>
            <li><a id="showbox3">我的订单</a></li>
            <li><a ><button style="border-style: hidden; background:none" onclick="logout()">退出登录</button></a></li>
            <li><a href="#">注销店铺</a></li>
        </ul>
    </div>
    <div id="box1">
        <h3>店铺信息</h3>
        <form id="merchantInfo">
            <label><input type="hidden" name="mCertificatenum" id="mCertificatenum" value="${mCertificatenum}"></label>
            <label>用户名：<input type="text" name="mName" id="mName" value="${mName}"></label>
            <br>
            <label>地址：<input type="text" name="mAddress" id="mAddress" value="${mAddress}"></label>
            <br>
            <label>电话：<input type="text" name="mPhonenum" id="mPhonenum" value="${mPhonenum}" ></label>
            <br>
           <input type="button" value="修改" onclick="updateMerchantInfo()">
        </form>
    </div>
    <div id="box2">
        <h3 align="center">我的商品</h3>
        <a ><button class="active" onclick="addGoods()">添加商品</button></a>
        <table class="table table-hover table-bordered" border="2" style="background-color:gainsboro">
            <tr>
                <td>商品名称</td>
                <td>商品价格</td>
                <td>商品产地</td>
                <td>商品规格</td>
                <td>是否为VIP商品</td>
                <td>剩余库存</td>
                <td>操作</td>
            </tr>
            <c:forEach items="${goods}" var="good">
            <tr>
                <td>${good.gName}</td>
                <td>${good.gPrice}</td>
                <td>${good.gPlace}</td>
                <td>${good.gSize}</td>
                <td>${good.gVIP}</td>
                <td>${good.gSum}</td>
                <td>
                    <input type="button" value="修改" onclick="updateGood(${good.gId})"/>
                    <input type="button" value="删除" onclick="deleteGood(${good.gId})"/>
                </td>
            </tr>
            </c:forEach>
        </table>
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
                <td>用户名称</td>
                <td>收货地址</td>
                <td>用户电话</td>
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
                    <td>${order.uName}</td>
                    <td>${order.uPlace}</td>
                    <td>${order.uPhonenum}</td>
                    <td>${order.oTrackingnum}</td>
                    <td>${order.oState}</td>
                    <td>
                        <input type="button" value="上传快递单号" onclick="uploadTrackingnum(${order.oId})"/>
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
        var mCertificate = "${mCertificatenum}";
        $.ajax({
            async:false,
            url : "${pageContext.request.contextPath}/merchant/merchantLogout",
            datatype : "String",
            type : "post",
            data:{
                mCertificatenum: mCertificate
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
        document.getElementById("form").action="${pageContext.request.contextPath}/page/indexPage";
        document.getElementById("form").method="post";
        document.getElementById("form").submit();
    }

    function updateMerchantInfo() {
        var mCertificatenum = $("#mCertificatenum").val();
        var mName = $("#mName").val();
        var mAddress = $("#mAddress").val();
        var mPhonenum = $("#mPhonenum").val();
        $.ajax({
            async:false,
            url : "${pageContext.request.contextPath}/merchant/updateMerchant",
            datatype : "String",
            type : "post",
            data:{
                "mCertificatenum":mCertificatenum, "mName":mName, "mAddress":mAddress, "mPhonenum":mPhonenum
            },success:function () {
                alert("修改成功");
                document.getElementById("form").action="${pageContext.request.contextPath}/page/merchantPage?mCertificatenum="+mCertificatenum;
                document.getElementById("form").method="post";
                document.getElementById("form").submit();
            },error:function () {
                alert("修改失败");
            }
        });
    }

    function addGoods() {
        var mCertificatenum = "${mCertificatenum}";
        document.getElementById("form").action="${pageContext.request.contextPath}/page/addGoodsPage?mCertificatenum="+mCertificatenum;
        document.getElementById("form").method="post";
        document.getElementById("form").submit();
    }

    function updateGood(gId) {
        document.getElementById("form").action="${pageContext.request.contextPath}/page/updateGoodsPage?gId="+gId;
        document.getElementById("form").method="post";
        document.getElementById("form").submit();
    }

    function deleteGood(gId) {
        document.getElementById("form").action="${pageContext.request.contextPath}/good/deleteGood?gId="+gId;
        document.getElementById("form").method="post";
        document.getElementById("form").submit();
    }

    function uploadTrackingnum(oId) {
        var oTrackingnum = prompt("请输入快递单号");
        if (oTrackingnum !== ''){
            document.getElementById("form").action="${pageContext.request.contextPath}/order/uploadTrackingnum?oTrackingnum="+oTrackingnum+"&oId="+oId;
            document.getElementById("form").method="post";
            document.getElementById("form").submit();
        }
    }

    function deleteMerchant() {
        var mCertificate = "${mCertificatenum}";
        $.ajax({
            async:false,
            url : "${pageContext.request.contextPath}/merchant/deleteMerchant",
            datatype : "String",
            type : "post",
            data:{
                mCertificatenum: mCertificate
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
</script>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8">
    <title>商品详情页</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/goods.css" />
    <script src="${pageContext.request.contextPath}/html/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/html/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/html/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        window.onload = function(){
            document.getElementById("showbox1").onclick = function(){
                document.getElementById("box2").style.display = "none";
                document.getElementById("box1").style.display = "block";
            };
            document.getElementById("showbox2").onclick = function(){
                document.getElementById("box1").style.display = "none";
                document.getElementById("box2").style.display = "block";
            };
        }
    </script>
</head>
<body style="margin:50px">
<div class="modal-content" style="background-color:ghostwhite" id="back">
    <h1 align="center">${good.gName}</h1>
    <div class="menu">
        <ul class="nav nav-pills">
            <li><a ><button style="border-style: hidden; background:none" onclick="index()">首页</button></a></li>
            <li><a id="showbox1">商品信息</a></li>
            <li><a ><button style="border-style: hidden; background:none" onclick="goShop()">进入店铺</button></a></li>
            <li><a id="showbox2">查看评论</a></li>
        </ul>
    </div>
    <div class="container" id="box1">
        <div class="leftContent">
            <img src="${pageContext.request.contextPath}/html/img/${good.gImage}" class="img" alt="${good.gName}"/>
        </div>
        <div class="rightContent">
            <br />
            <table style="font-size: 15px" >
                <tr>
                    <td>价格</td>
                    <td>${good.gPrice}</td>
                </tr>
                <tr>
                    <td>商家</td>
                    <td>${merchant.mName}</td>
                </tr>
                <tr>
                    <td>规格</td>
                    <td>${good.gSize}</td>
                </tr>
                <tr>
                    <td>产地</td>
                    <td>${good.gPlace}</td>
                </tr>
                <tr>
                    <td>剩余库存</td>
                    <td>${good.gSum}</td>
                </tr>
                <tr>
                    <td>是否为VIP商品</td>
                    <td>${good.gVIP}</td>
                </tr>
                <tr>
                    <td>购买数量</td>
                    <td><input type="number" min="1" class="form-control" id="sSum"/></td>
                </tr>
                <tr>
                    <td>
                        <button class="btn btn-toolbar" onclick="jiesuan()">购买</button>
                    </td>
                    <td>
                        <a ><button class="btn btn-toolbar" onclick="addShoppingCart()">加入购物车</button></a>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <div id="box2" class="container">
        <h3 align="center">用户评论</h3>
        <table class="table table-hover table-bordered table-responsive table-striped">
            <c:forEach items="${comments}" var="comment">
            <tr>
                <td>评论人</td>
                <td>${comment.uName}</td>
            </tr>
            <tr>
                <td>用户评分</td>
                <td>${comment.score}</td>
            </tr>
            <tr>
                <td>评论时间</td>
                <td>${comment.time}</td>
            </tr>
            <tr>
                <td>评论内容</td>
                <td>${comment.content}</td>
            </tr>
            </c:forEach>
        </table>
    </div>
</div>
<form id="form">

</form>
</body>
<script type="text/javascript">
    function index() {
        var uEmail = "${uEmail}";
        document.getElementById("form").action="${pageContext.request.contextPath}/page/indexPage?uEmail="+uEmail;
        document.getElementById("form").method="post";
        document.getElementById("form").submit();
    }

    function goShop() {
        var uEmail = "${uEmail}";
        var mCertificatenum = "${merchant.mCertificatenum}";
        document.getElementById("form").action="${pageContext.request.contextPath}/page/shopPage?mCertificatenum="+mCertificatenum+"&uEmail="+uEmail;
        document.getElementById("form").method="post";
        document.getElementById("form").submit();
    }

    function jiesuan()
    {
        var uEmail = "${uEmail}";
        var uVIP = ${uVIP};
        var mCertificatenum = "${good.mCertificatenum}";
        var gId = ${good.gId};
        var gPrice = ${good.gPrice};
        var sSum = $("#sSum").val();
        var gVIP = ${good.gVIP};
        if (uVIP === 1){
            price = gPrice*0.7*sSum;
        }else {
            price = gPrice*sSum;
        }
        if (uEmail === ""){
            alert("请登录用户账号");
        }else if (gVIP === 1 && uVIP !== 1){
            alert("请开通VIP");
        }else if (sSum === ""){
            alert("请输入购买数量");
        }else if (sSum < 1){
            alert("购买数量最少为1");
        }else if (sSum > ${good.gSum}){
            alert("库存不足");
        }else {
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
            }
        }
    }

    function addShoppingCart() {
        var uEmail = "${uEmail}";
        var uVIP = ${uVIP};
        var mCertificatenum = "${good.mCertificatenum}";
        var gId = ${good.gId};
        var sSum = $("#sSum").val();
        var gName = "${good.gName}";
        var gPrice = ${good.gPrice};
        var gSize = "${good.gSize}";
        var gVIP = ${good.gVIP};
        var mName = "${merchant.mName}";
        var mPhonenum = "${merchant.mPhonenum}";
        if (uEmail === ""){
            alert("请登录用户账号");
        }else if (gVIP === 1 && uVIP !== 1){
            alert("请开通VIP");
        }else if (sSum === ""){
            alert("请输入购买数量");
        }else if (sSum < 1){
            alert("购买数量最少为1");
        }else if (sSum > ${good.gSum}){
            alert("库存不足");
        }else {
            $.ajax({
                url: "${pageContext.request.contextPath}/shoppingCart/addShoppingCart",
                type: "post",
                datatype: "String",
                data: {uEmail:uEmail, mCertificatenum:mCertificatenum, gId:gId, sSum:sSum, gName:gName, gPrice:gPrice, gSize:gSize, gVIP:gVIP, mName:mName, mPhonenum:mPhonenum},
                success: function (res) {
                    if (res === true) {
                        alert("添加成功");
                        document.getElementById("form").action="${pageContext.request.contextPath}/page/userPage?uEmail="+uEmail;
                        document.getElementById("form").method="post";
                        document.getElementById("form").submit();
                    } else {
                        alert("添加失败");
                    }
                }, error: function () {
                    alert("失败");
                }
            });
        }
    }
</script>
</html>
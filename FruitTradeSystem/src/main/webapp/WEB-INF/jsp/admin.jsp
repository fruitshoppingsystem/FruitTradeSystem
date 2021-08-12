<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>管理员</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin.css">
    <script src="${pageContext.request.contextPath}/html/js/jquery-3.6.0.js"></script>
    <script src="${pageContext.request.contextPath}/html/js/jquery-3.6.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/html/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/html/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        window.onload = function(){
            document.getElementById("showbox1").onclick = function(){
                document.getElementById("box2").style.display = "none";
                document.getElementById("box3").style.display = "none";
                document.getElementById("box4").style.display = "none";
                document.getElementById("box5").style.display = "none";
                document.getElementById("box6").style.display = "none";
                document.getElementById("box1").style.display = "block";
            }
            document.getElementById("showbox2").onclick = function(){
                document.getElementById("box1").style.display = "none";
                document.getElementById("box3").style.display = "none";
                document.getElementById("box4").style.display = "none";
                document.getElementById("box5").style.display = "none";
                document.getElementById("box6").style.display = "none";
                document.getElementById("box2").style.display = "block";
            }
            document.getElementById("showbox3").onclick = function(){
                document.getElementById("box1").style.display = "none";
                document.getElementById("box2").style.display = "none";
                document.getElementById("box4").style.display = "none";
                document.getElementById("box5").style.display = "none";
                document.getElementById("box6").style.display = "none";
                document.getElementById("box3").style.display = "block";
            }
            document.getElementById("showbox4").onclick = function(){
                document.getElementById("box1").style.display = "none";
                document.getElementById("box2").style.display = "none";
                document.getElementById("box3").style.display = "none";
                document.getElementById("box5").style.display = "none";
                document.getElementById("box6").style.display = "none";
                document.getElementById("box4").style.display = "block";
            }
            document.getElementById("showbox5").onclick = function(){
                document.getElementById("box1").style.display = "none";
                document.getElementById("box2").style.display = "none";
                document.getElementById("box3").style.display = "none";
                document.getElementById("box4").style.display = "none";
                document.getElementById("box6").style.display = "none";
                document.getElementById("box5").style.display = "block";
            }
            document.getElementById("showbox6").onclick = function(){
                document.getElementById("box1").style.display = "none";
                document.getElementById("box2").style.display = "none";
                document.getElementById("box3").style.display = "none";
                document.getElementById("box4").style.display = "none";
                document.getElementById("box5").style.display = "none";
                document.getElementById("box6").style.display = "block";
            }
        }
    </script>
</head>
<body style="margin:50px">
<div class="modal-content" style="background-color:ghostwhite" id="back">
    <h1 align="center">${admin.aName}</h1>
    <div class="menu">
        <ul class="nav nav-pills">
            <li><a ><button style="border-style: hidden; background:none" onclick="index()">首页</button></a></li>
            <li><a id="showbox1">管理用户</a></li>
            <li><a id="showbox2">管理商家</a></li>
            <li><a id="showbox3">管理订单</a></li>
            <li><a id="showbox4">管理商品</a></li>
            <li><a id="showbox5">管理评论</a></li>
            <li><a id="showbox6">审核</a></li>
            <li><a ><button style="border-style: hidden; background:none" onclick="logout()">退出登录</button></a></li>
        </ul>
    </div>
    <div id="box1">
        <h1 align="center">用户列表</h1>
        <table class="table table-hover table-bordered" border="2" style="background-color:gainsboro">
            <tr>
                <td>邮箱</td>
                <td>用户名</td>
                <td>收货地址</td>
                <td>电话</td>
                <td>是否为VIP</td>
                <td>状态</td>
                <td>操作</td>
            </tr>
            <c:forEach items="${users}" var="user">
            <tr>
                <td>${user.uEmail}</td>
                <td>${user.uName}</td>
                <td>${user.uAddress}</td>
                <td>${user.uPhonenum}</td>
                <td>${user.uVIP}</td>
                <td>${user.uState}</td>
                <td>
                    <input type="button" value="修改" />
                </td>
            </tr>
            </c:forEach>
        </table>
    </div>
    <div id="box2">
        <h1 align="center">商家列表</h1>
        <table class="table table-hover table-bordered" border="2" style="background-color:gainsboro">
            <tr>
                <td>营业证书编号</td>
                <td>店铺名</td>
                <td>地址</td>
                <td>电话</td>
                <td>评分</td>
                <td>状态</td>
                <td>操作</td>
            </tr>
            <c:forEach items="${acceptMerchants}" var="acceptMerchant">
            <tr>
                <td>${acceptMerchant.mCertificatenum}</td>
                <td>${acceptMerchant.mName}</td>
                <td>${acceptMerchant.mAddress}</td>
                <td>${acceptMerchant.mPhonenum}</td>
                <td>${acceptMerchant.mScore}</td>
                <td>${acceptMerchant.mState}</td>
                <td>
                    <input type="button" value="修改" />
                </td>
            </tr>
            </c:forEach>
        </table>
    </div>
    <div id="box3">
        <h1 align="center">订单列表</h1>
        <table class="table table-hover table-bordered" border="2" style="background-color:gainsboro;">
            <tr>
                <td>订单号</td>
                <td>商品编号</td>
                <td>商品名称</td>
                <td>商品价格</td>
                <td>商品数量</td>
                <td>商品规格</td>
                <td>商品是否为VIP</td>
                <td>用户邮箱</td>
                <td>用户名称</td>
                <td>收货地址</td>
                <td>用户电话</td>
                <td>商家编号</td>
                <td>商家名称</td>
                <td>商家电话</td>
                <td>快递单号</td>
                <td>状态</td>
                <td>操作</td>
            </tr>
            <c:forEach items="${orders}" var="order">
            <tr>
                <td>${order.oId}</td>
                <td>${order.gId}</td>
                <td>${order.gName}</td>
                <td>${order.gPrice}</td>
                <td>${order.gSum}</td>
                <td>${order.gSize}</td>
                <td>${order.gVIP}</td>
                <td>${order.uEmail}</td>
                <td>${order.uName}</td>
                <td>${order.uPlace}</td>
                <td>${order.uPhonenum}</td>
                <td>${order.mCertificatenum}</td>
                <td>${order.mName}</td>
                <td>${order.mPhonenum}</td>
                <td>${order.oTrackingnum}</td>
                <td>${order.oState}</td>
                <td>
                    <input type="button" value="修改" />
                    <input type="button" value="删除" />
                </td>
            </tr>
            </c:forEach>
        </table>
    </div>
    <div id="box4">
        <h1 align="center">商品列表</h1>
        <table class="table table-hover table-bordered" border="2" style="background-color:gainsboro">
            <tr>
                <td>商品编号</td>
                <td>商家编号</td>
                <td>商品名称</td>
                <td>商品价格</td>
                <td>剩余库存</td>
                <td>商品产地</td>
                <td>商品规格</td>
                <td>操作</td>
            </tr>
            <c:forEach items="${goods}" var="good">
            <tr>
                <td>${good.gId}</td>
                <td>${good.mCertificatenum}</td>
                <td>${good.gName}</td>
                <td>${good.gPrice}</td>
                <td>${good.gSum}</td>
                <td>${good.gPlace}</td>
                <td>${good.gSize}</td>
                <td>
                    <input type="button" value="删除" />
                </td>
            </tr>
            </c:forEach>
        </table>
    </div>
    <div id="box5">
        <h1 align="center">评论列表</h1>
        <table class="table table-hover table-bordered" border="2" style="background-color:gainsboro">
            <tr>
                <td>评论编号</td>
                <td>评论人</td>
                <td>评论人邮箱</td>
                <td>评论时间</td>
                <td>对应商品编号</td>
                <td>对应店铺编号</td>
                <td>对应店铺名称</td>
                <td>评分</td>
                <td>评论内容</td>
                <td>操作</td>
            </tr>
            <c:forEach items="${comments}" var="comment">
            <tr>
                <td>${comment.cId}</td>
                <td>${comment.uName}</td>
                <td>${comment.uEmail}</td>
                <td>${comment.time}</td>
                <td>${comment.gId}</td>
                <td>${comment.mCertificatenum}</td>
                <td>${comment.mName}</td>
                <td>${comment.score}</td>
                <td>${comment.content}</td>
                <td>
                    <input type="button" value="删除" />
                </td>
            </tr>
            </c:forEach>
        </table>
    </div>
    <div id="box6">
        <h1 align="center">审核中……</h1>
        <table class="table table-hover table-bordered" border="2" style="background-color:gainsboro">
            <tr>
                <td>店铺名称</td>
                <td>店铺营业证书编号</td>
                <td>审核结果</td>
            </tr>
            <c:forEach items="${notAcceptMerchants}" var="notAcceptMerchant">
            <tr>
                <td>${notAcceptMerchant.mName}</td>
                <td>${notAcceptMerchant.mCertificatenum}</td>
                <td>
                    <input type="button" value="通过" />
                    <input type="button" value="不通过" />
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
        var aId = "${aId}";
        $.ajax({
            async:false,
            url : "${pageContext.request.contextPath}/admin/adminLogout",
            datatype : "String",
            type : "post",
            data:{
                aId: aId
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


</script>
</html>

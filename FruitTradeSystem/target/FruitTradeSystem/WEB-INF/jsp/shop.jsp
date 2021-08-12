<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>店铺界面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/shop.css" />
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
    <h1 align="center">${mName}</h1>
    <div class="menu">
        <ul class="nav nav-pills">
            <li><a ><button style="border-style: hidden; background:none" onclick="index()">首页</button></a></li>
            <li><a id="showbox1">店铺信息</a></li>
            <li><a id="showbox2">商品区</a></li>
            <li><a id="showbox3">VIP商品区</a></li>
        </ul>
    </div>
    <div id="box1">
        <table align="center" class="table-hover table-condensed" style="background-color:gainsboro">
            <tr>
                <td><label>评分:</label></td>
                <td>${mScore}</td>
            </tr>
            <tr>
                <td><label>店铺地址:</label></td>
                <td>${mAddress}</td>
            </tr>
            <tr>
                <td><label>联系电话:</label></td>
                <td>${mPhonenum}</td>
            </tr>
        </table>
    </div>
    <div id="box2">
        <table align="center" class="table-hover table-condensed">
            <tr>
                <c:forEach items="${goods}" var="good" varStatus="status">
                    <c:if test="${status.index%4==0}">
                    </tr>
                    <tr>
                    </c:if>
                    <td>
                        <img src="${pageContext.request.contextPath}/html/img/${good.gImage}" class="img" alt="${good.gName}"/>
                        <a onclick="goGoodPage(${good.gId})">${good.gName}&nbsp;￥:${good.gPrice}</a>
                    </td>
                </c:forEach>
            </tr>

        </table>
    </div>
    <div id="box3">
        <table align="center" class="table-hover table-condensed">
            <tr>
                <c:forEach items="${vipGoods}" var="vipGood" varStatus="status">
                    <c:if test="${status.index%4==0}">
                    </tr>
                    <tr>
                    </c:if>
                    <td>
                        <img src="${pageContext.request.contextPath}/html/img/${vipGood.gImage}" class="img" alt="${vipGood.gName}"/>
                        <a onclick="goGoodPage(${vipGood.gId})">${vipGood.gName}&nbsp;￥:${vipGood.gPrice}</a>
                    </td>
                </c:forEach>
            </tr>
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
    function goGoodPage(gId) {
        var uEmail = "${uEmail}";
        document.getElementById("form").action="${pageContext.request.contextPath}/page/goodsPage?gId="+gId+"&uEmail="+uEmail;
        document.getElementById("form").method="post";
        document.getElementById("form").submit();
    }
</script>
</html>

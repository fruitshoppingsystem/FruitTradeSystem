<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>首页</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
    <script src="${pageContext.request.contextPath}/html/js/jquery-3.6.0.js"></script>
    <script src="${pageContext.request.contextPath}/html/js/jquery-3.6.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/html/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/html/js/bootstrap.min.js"></script>
</head>
<body style="margin: 50px">
<div class="modal-content" style="background-color:ghostwhite">
    <br />
    <div>
        <h1 align="center">水果购物平台</h1>
    </div>
    <div class="row" style="margin-top:30px;">
        <div class="col-md-2 col-md-offset-11">
            <a href="${pageContext.request.contextPath}/page/userRegisterPage"><span class="glyphicon glyphicon-user"></span> 用户注册</a>
        </div>
        <div class="col-md-2 col-md-offset-11">
            <a href="${pageContext.request.contextPath}/page/merchantRegisterPage"><span class="glyphicon glyphicon-shopping-cart"></span> 商家注册</a>
        </div>
        <div class="col-md-2 col-md-offset-11">
            <a href="${pageContext.request.contextPath}/page/loginPage"><span class="glyphicon glyphicon-log-in"></span> 登录</a>
        </div>
        <div class="col-md-6 col-md-offset-3" >
            <div class="input-group input-group-md" >
                <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-search" aria-hidden="true"></i></span>
                <input type="text" class="form-control" value="请输入商品名称" aria-describedby="sizing-addon1">
                <div class="input-group-btn">
                    <button class="btn btn-default">查询</button>
                </div>
            </div>
        </div>
    </div>
    <hr />
    <div class="modal-content" style="background-image: url(../../html/img/background.jpeg);" id="box">
        <h3 align="center">商品区</h3>
        <br/>
        <table align="center">
            <tr>
                <c:forEach items="${goods}" var="good" begin="0" end="3" step="1">
                <td>
                    <img src="${pageContext.request.contextPath}/html/img/${good.gImage}" class="img" alt="${good.gName}"/>
                    <a href="">${good.gName}&nbsp;$:${good.gPrice}</a>
                </td>
                </c:forEach>
            </tr>
            <tr>
                <c:forEach items="${goods}" var="good" begin="4" end="7" step="1">
                    <td>
                        <img src="${pageContext.request.contextPath}/html/img/${good.gImage}" class="img" alt="${good.gName}"/>
                        <a href="">${good.gName}&nbsp;$:${good.gPrice}</a>
                    </td>
                </c:forEach>
            </tr>
        </table>
        <br />
    </div>
    <hr />
    <div id="box" class="modal-content" style="background-image: url(../../html/img/background.jpeg);">
        <h3 align="center">VIP商品区</h3>
        <br/>
        <table align="center">
            <tr>
                <c:forEach items="${vipGoods}" var="vipGood" begin="0" end="3">
                    <td>
                        <img src="${pageContext.request.contextPath}/html/img/${vipGood.gImage}" class="img" alt="${vipGood.gName}"/>
                        <a href="">${vipGood.gName}&nbsp;$:${vipGood.gPrice}</a>
                    </td>
                </c:forEach>
            </tr>
            <tr>
                <c:forEach items="${vipGoods}" var="vipGood" begin="4" end="7">
                    <td>
                        <img src="${pageContext.request.contextPath}/html/img/${vipGood.gImage}" class="img" alt="${vipGood.gName}"/>
                        <a href="">${vipGood.gName}&nbsp;$:${vipGood.gPrice}</a>
                    </td>
                </c:forEach>
            </tr>
        </table>
        <br />
    </div>
    <hr />
    <div id="box" class="modal-content" style="background-image: url(../../html/img/background.jpeg);">
        <h3 align="center">店铺区</h3>
        <br/>
        <table align="center">
            <tr>
                <c:forEach items="${merchants}" var="merchant" begin="0" end="1">
                    <td>
                        <a href="">${merchant.mName}</a>
                    </td>
                    &nbsp;
                </c:forEach>
            </tr>
            <tr>
                <c:forEach items="${merchants}" var="merchant" begin="2" end="3">
                    <td>
                        <a href="">${merchant.mName}</a>
                    </td>
                    &nbsp;
                </c:forEach>
            </tr>
        </table>
        <br />
    </div>
    <br />
    <br />
    <br />
</div>
</body>
<script type="text/javascript">
    function x() {

    }
</script>
</html>
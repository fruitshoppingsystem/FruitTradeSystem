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
                <input id="searchText" type="text" class="form-control" placeholder="请输入商品名称或商家名称" aria-describedby="sizing-addon1">
                <div class="input-group-btn">
                    <button class="btn btn-default" id="search" onclick="search()">查询</button>
                </div>
            </div>
        </div>
    </div>
    <hr />
    <div id="box">
    <div class="modal-content" style="background-image: url(../../html/img/background.jpeg);">
        <h3 align="center">商品区</h3>
        <br/>
        <table align="center" class="table-hover table-condensed">
            <tr>
                <c:forEach items="${goods}" var="good" begin="0" end="3" step="1">
                <td>
                    <img src="${pageContext.request.contextPath}/html/img/${good.gImage}" class="img" alt="${good.gName}"/>
                    <a onclick="goGoodPage(${good.gId})">${good.gName}&nbsp;￥:${good.gPrice}</a>
                </td>
                </c:forEach>
            </tr>
            <tr>
                <c:forEach items="${goods}" var="good" begin="4" end="7" step="1">
                    <td>
                        <img src="${pageContext.request.contextPath}/html/img/${good.gImage}" class="img" alt="${good.gName}"/>
                        <a onclick="goGoodPage(${good.gId})">${good.gName}&nbsp;￥:${good.gPrice}</a>
                    </td>
                </c:forEach>
            </tr>
        </table>
        <br />
    </div>
    <hr />
    <div class="modal-content" style="background-image: url(../../html/img/background.jpeg);">
        <h3 align="center">VIP商品区</h3>
        <br/>
        <table align="center" class="table-hover table-condensed">
            <tr>
                <c:forEach items="${vipGoods}" var="vipGood" begin="0" end="3">
                    <td>
                        <img src="${pageContext.request.contextPath}/html/img/${vipGood.gImage}" class="img" alt="${vipGood.gName}"/>
                        <a onclick="goGoodPage(${vipGood.gId})">${vipGood.gName}&nbsp;￥:${vipGood.gPrice}</a>
                    </td>
                </c:forEach>
            </tr>
            <tr>
                <c:forEach items="${vipGoods}" var="vipGood" begin="4" end="7">
                    <td>
                        <img src="${pageContext.request.contextPath}/html/img/${vipGood.gImage}" class="img" alt="${vipGood.gName}"/>
                        <a onclick="goGoodPage(${vipGood.gId})">${vipGood.gName}&nbsp;￥:${vipGood.gPrice}</a>
                    </td>
                </c:forEach>
            </tr>
        </table>
        <br />
    </div>
    <hr />
    <div class="modal-content" style="background-image: url(../../html/img/background.jpeg);">
        <h3 align="center">店铺区</h3>
        <br/>
        <table align="center" class="table-hover table-condensed">
            <tr>
                <c:forEach items="${merchants}" var="merchant" begin="0" end="1">
                    <td>
                        <a onclick="goShopPage('${merchant.mCertificatenum}')">${merchant.mName}</a>
                    </td>
                    &nbsp;
                </c:forEach>
            </tr>
            <tr>
                <c:forEach items="${merchants}" var="merchant" begin="2" end="3">
                    <td>
                        <a onclick="goShopPage('${merchant.mCertificatenum}')">${merchant.mName}</a>
                    </td>
                    &nbsp;
                </c:forEach>
            </tr>
        </table>
        <br />
    </div>
    </div>
    <br />
    <br />
    <br />
</div>
<form id="form">

</form>
</body>
<script type="text/javascript">
    function goGoodPage(gId) {
        var uEmail = "${uEmail}";
        document.getElementById("form").action="${pageContext.request.contextPath}/page/goodsPage?gId="+gId+"&uEmail="+uEmail;
        document.getElementById("form").method="post";
        document.getElementById("form").submit();
    }
    function goShopPage(mCertificatenum) {
        var uEmail = "${uEmail}";
        document.getElementById("form").action="${pageContext.request.contextPath}/page/shopPage?mCertificatenum="+mCertificatenum+"&uEmail="+uEmail;
        document.getElementById("form").method="post";
        document.getElementById("form").submit();
    }

    function search(){
        var uEmail = "${uEmail}";
        var inputText = document.getElementById("searchText").value;
        if(inputText!==""){//检测键盘输入的内容是否为空，为空就不发出请求
            document.getElementById("form").action="${pageContext.request.contextPath}/search/getData?inputText="+inputText+"&uEmail="+uEmail;
            document.getElementById("form").method="post";
            document.getElementById("form").submit();
            <%--$.ajax({--%>
            <%--    type: 'POST',--%>
            <%--    url: '${pageContext.request.contextPath}/search/getData',--%>
            <%--    cache:false,//不从浏览器缓存中加载请求信息--%>
            <%--    data: {--%>
            <%--        'data' : "%" + inputText + "%",//发送的数据--%>
            <%--        uEmail:uEmail--%>
            <%--    }--%>
            <%--});--%>
        }else{
            alert("请输入关键词");
        }
    }
</script>
</html>
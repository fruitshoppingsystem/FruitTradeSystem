<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>搜索结果</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/search.css">
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
    <div id="searchBox" >
        <div class="modal-content" style="background-image: url(../../html/img/background.jpeg);">
            <h3 align="center">商品区</h3>
            <br/>
            <table align="center" class="table-hover table-condensed">
                <tr>
                    <c:forEach items="${searchGoods}" var="searchGood" varStatus="status">
                    <c:if test="${status.index%4==0}">
                </tr>
                <tr>
                    </c:if>
                    <td>
                        <img src="${pageContext.request.contextPath}/html/img/${searchGood.gImage}" class="img" alt="${searchGood.gName}"/>
                        <a onclick="goGoodPage(${searchGood.gId})">${searchGood.gName}&nbsp;￥:${searchGood.gPrice}</a>
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
                    <c:forEach items="${searchVIPGoods}" var="searchVIPGood" varStatus="status">
                    <c:if test="${status.index%4==0}">
                </tr>
                <tr>
                    </c:if>
                    <td>
                        <img src="${pageContext.request.contextPath}/html/img/${searchVIPGood.gImage}" class="img" alt="${searchVIPGood.gName}"/>
                        <a onclick="goGoodPage(${searchVIPGood.gId})">${searchVIPGood.gName}&nbsp;￥:${searchVIPGood.gPrice}</a>
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
                    <c:forEach items="${searchMerchants}" var="searchMerchant" varStatus="status">
                    <c:if test="${status.index%4==0}">
                </tr>
                <tr>
                    </c:if>
                    <td>
                        <a onclick="goShopPage('${searchMerchant.mCertificatenum}')">${searchMerchant.mName}</a>
                    </td>
                    </c:forEach>
                </tr>
            </table>
            <br />
        </div>
    </div>
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

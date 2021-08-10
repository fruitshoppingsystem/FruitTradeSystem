<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>评论界面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/comment.css" />
    <script src="${pageContext.request.contextPath}/html/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/html/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/html/js/bootstrap.min.js"></script>
</head>
<body style="margin:50px">
<div class="modal-content" style="background-color:ghostwhite" id="back">
    <h3 align="center">请评价此商品</h3>
    <div id="box">
        <form id="comment">
            <label>分数：
                <select id="score">
                    <option value="" selected="selected">--请选择--</option>
                    <option value="0">0分</option>
                    <option value="1">1分</option>
                    <option value="2">2分</option>
                    <option value="3">3分</option>
                    <option value="4">4分</option>
                    <option value="5">5分</option>
                </select>
            </label>

            <label>评论内容：
                <textarea id="content" rows="3"></textarea>
            </label>
        </form>
        <br />
        <div>
            <button type="submit" class="btn btn-success btn-default" onclick="comment()">提交</button>
            <button type="reset" class="btn btn-success btn-default">重置</button>
            <a ><button class="btn btn-info" onclick="goUserPage()">返回</button></a>
        </div>
    </div>
</div>
<form id="form">

</form>
</body>
<script type="text/javascript">
    function goUserPage() {
        var uEmail = "${uEmail}";
        document.getElementById("form").action="${pageContext.request.contextPath}/page/userPage?uEmail="+uEmail;
        document.getElementById("form").method="post";
        document.getElementById("form").submit();
    }

    function comment() {
        var uEmail = ${uEmail};
        var mCertificatenum = ${mCertificatenum};
        var score = $("#score option:selected");
        var content = $("#content").val();
        var time = new Date().getTimezoneOffset();
        alert(time);
    }
</script>
</html>


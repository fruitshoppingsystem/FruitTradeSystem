<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/8/4
  Time: 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>跳转</title>
</head>
<body>
<form id="form">

</form>
</body>
<script type="text/javascript">
    window.onload = function () {
        document.getElementById("form").action="${pageContext.request.contextPath}/page/indexPage";
        document.getElementById("form").method="post";
        document.getElementById("form").submit();
    }
</script>
</html>

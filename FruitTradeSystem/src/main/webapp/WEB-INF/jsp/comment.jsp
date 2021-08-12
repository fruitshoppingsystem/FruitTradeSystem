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
                    <option value="-1" selected="selected">--请选择--</option>
                    <option value="0">0分</option>
                    <option value="1">1分</option>
                    <option value="2">2分</option>
                    <option value="3">3分</option>
                    <option value="4">4分</option>
                    <option value="5">5分</option>
                </select>
            </label>
            <br>
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
    Date.prototype.Format = function (fmt) { // author: meizz
        var o = {
            "M+": this.getMonth() + 1, // 月份
            "d+": this.getDate(), // 日
            "h+": this.getHours(), // 小时
            "m+": this.getMinutes(), // 分
            "s+": this.getSeconds(), // 秒
            "q+": Math.floor((this.getMonth() + 3) / 3), // 季度
            "S": this.getMilliseconds() // 毫秒
        };
        if (/(y+)/.test(fmt))
            fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
        for (var k in o)
            if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
        return fmt;
    };
    function goUserPage() {
        var uEmail = "${uEmail}";
        document.getElementById("form").action="${pageContext.request.contextPath}/page/userPage?uEmail="+uEmail;
        document.getElementById("form").method="post";
        document.getElementById("form").submit();
    }

    function comment() {
        var uEmail = "${uEmail}";
        var mCertificatenum = "${mCertificatenum}";
        var gId = ${gId};
        var oId = ${oId};
        var score = $("#score option:selected").val();
        var content = $("#content").val();
        var time = new Date().Format("yyyy-MM-dd hh:mm:ss");
        if (score < 0){
            alert("请选择分数");
        }else if (content.length > 1000){
            alert("评论内容不能超过1000字");
        }else {
            $.ajax({
                async:false,
                url : "${pageContext.request.contextPath}/comment/addComment",
                datatype : "String",
                type : "post",
                data:{
                    uEmail: uEmail, mCertificatenum: mCertificatenum, gId:gId, score:score, content:content, time:time
                },success:function (res) {
                    if (res === true){
                        alert("评论成功");
                        $.ajax({
                            url: "${pageContext.request.contextPath}/order/comment",
                            type: "post",
                            datatype: "String",
                            data: {oId:oId},
                            success: function (res) {
                                if (res === true) {
                                    document.getElementById("form").action="${pageContext.request.contextPath}/page/userPage?uEmail="+uEmail;
                                    document.getElementById("form").method="post";
                                    document.getElementById("form").submit();
                                }
                            }, error: function () {
                                alert("失败");
                            }
                        });
                    }else{
                        alert("评论失败");
                    }
                },error:function () {
                    alert("失败");
                }
            });
        }
    }
</script>
</html>


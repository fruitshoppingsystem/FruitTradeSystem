<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>添加商品</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/html/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/html/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/html/js/bootstrap.min.js"></script>
</head>
<body style="margin: 50px;">
<div class="row" style="margin-top:100px;" >
    <div class="col-md-6 col-md-offset-3" >
        <div class="well col-md-12">
            <h3 align="center">添加商品</h3>
            <div class="input-group input-group-md">
                <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon" aria-hidden="true"></i></span>
                <input id="gName" type="text" class="form-control" placeholder="商品名称" aria-describedby="sizing-addon1">
            </div>
            <div class="input-group input-group-md">
                <span class="input-group-addon" id="sizing-addon2"><i class="glyphicon" aria-hidden="true"></i></span>
                <input id="gPrice" type="text" class="form-control" placeholder="商品价格" aria-describedby="sizing-addon2">
            </div>
            <div class="input-group input-group-md">
                <span class="input-group-addon" id="sizing-addon3"><i class="glyphicon" aria-hidden="true"></i></span>
                <input id="gPlace" type="text" class="form-control" placeholder="商品产地" aria-describedby="sizing-addon3">
            </div>
            <div class="input-group input-group-md">
                <span class="input-group-addon" id="sizing-addon4"><i class="glyphicon" aria-hidden="true"></i></span>
                <input id="gSize" type="text" class="form-control" placeholder="商品规格" aria-describedby="sizing-addon4">
            </div>
            <div class="input-group input-group-md">
                <span class="input-group-addon" id="sizing-addon5"><i class="glyphicon" aria-hidden="true"></i></span>
                <input id="gSum" type="text" class="form-control" placeholder="商品库存" aria-describedby="sizing-addon5">
            </div>
            <div class="input-group input-group-md">
                <span class="input-group-addon" id="sizing-addon6"><i class="glyphicon" aria-hidden="true"></i></span>
                <label class="form-control" aria-describedby="sizing-addon6">是否为VIP商品:
                    <input type="radio" name="VIP" value="0" checked>否
                    <input type="radio" name="VIP" value="1" >是
                </label>
            </div>
            <div class="input-group input-group-md">
                <span class="input-group-addon" id="sizing-addon7"><i class="glyphicon" aria-hidden="true"></i></span>
                <form enctype="multipart/form-data" id="uploadForm">
                    <label class="form-control" aria-describedby="sizing-addon7">上传图片</label>
                    <input type='file' id='image' class="form-control" aria-describedby="sizing-addon7" accept="image/*">
<%--                    <input type='button' onclick='upload()' value='上传图片' class="form-control" aria-describedby="sizing-addon7">--%>
                </form>
            </div>
            <br />
            <button type="submit" class="btn btn-success btn-block" onclick="upload()">添加</button>
            <button type="reset" class="btn btn-success btn-block">重置</button>
            <button type="button" class="btn btn-success btn-block" onclick="goMerchantPage()">返回</button>
        </div>
    </div>
</div>
<form id="form">

</form>
</body>
<script type="text/javascript">
    function goMerchantPage(){
        var mCertificatenum = "${mCertificatenum}";
        document.getElementById("form").action="${pageContext.request.contextPath}/page/merchantPage?mCertificatenum="+mCertificatenum;
        document.getElementById("form").method="post";
        document.getElementById("form").submit();
    }
    function upload() {
        if ($("#image").val() === ''){
            alert("请选择图片");
            return;
        }
        var formData = new FormData($("#uploadForm")[0]);
        formData.append('imagePath', $('#image')[0].files[0]);
        $.ajax({
            url: "${pageContext.request.contextPath}/saveImage/saveImage",
            type: "post",
            datatype: "json",
            data: formData,
            contentType: false,
            processData: false,
            success: function (data) {
                if (data.type === "success") {
                    alert(data.msg);
                    path = data.filename;
                    addGood(path);
                } else {
                    alert(data.msg);
                }
            }, error: function () {
                alert("图片保存失败");
            }
        });
    }
    function addGood(path) {
        var mCertificatenum="${mCertificatenum}";
        var gName=$("#gName").val();
        var gPrice=$("#gPrice").val();
        var gPlace=$("#gPlace").val();
        var gSize=$("#gSize").val();
        var gSum=$("#gSum").val();
        var gVIP=$('input[type=radio][name=VIP]:checked').val();
        var gImage= path;
        $.ajax({
            async:false,
            url : "${pageContext.request.contextPath}/good/addGood",
            type : "post",
            datatype:"String",
            data:{mCertificatenum:mCertificatenum, gName:gName, gPrice:gPrice, gPlace:gPlace, gSize:gSize, gSum:gSum, gVIP:gVIP, gImage:gImage},
            success:function (data) {
                if (data.type === "success"){
                    alert(data.msg);
                    document.getElementById("form").action="${pageContext.request.contextPath}/page/merchantPage?mCertificatenum="+mCertificatenum;
                    document.getElementById("form").method="post";
                    document.getElementById("form").submit();
                }else {
                    alert("添加失败");
                }
            },error:function () {
                alert("添加失败");
            }
        });
    }
</script>
</html>

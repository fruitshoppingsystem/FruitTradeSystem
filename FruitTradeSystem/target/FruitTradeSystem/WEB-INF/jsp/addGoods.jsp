<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>添加商品</title>
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
</head>
<body style="margin: 50px;">
<div class="row" style="margin-top:100px;" >
    <div class="col-md-6 col-md-offset-3" >
        <div class="well col-md-12">
            <h3 align="center">添加商品</h3>
            <div class="input-group input-group-md">
                <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon" aria-hidden="true"></i></span>
                <input type="text" class="form-control" placeholder="商品名称" aria-describedby="sizing-addon1">
            </div>
            <div class="input-group input-group-md">
                <span class="input-group-addon" id="sizing-addon2"><i class="glyphicon" aria-hidden="true"></i></span>
                <input type="text" class="form-control" placeholder="商品价格" aria-describedby="sizing-addon2">
            </div>
            <div class="input-group input-group-md">
                <span class="input-group-addon" id="sizing-addon3"><i class="glyphicon" aria-hidden="true"></i></span>
                <input type="text" class="form-control" placeholder="商品产地" aria-describedby="sizing-addon3">
            </div>
            <div class="input-group input-group-md">
                <span class="input-group-addon" id="sizing-addon4"><i class="glyphicon" aria-hidden="true"></i></span>
                <input type="text" class="form-control" placeholder="商品规格" aria-describedby="sizing-addon4">
            </div>
            <div class="input-group input-group-md">
                <span class="input-group-addon" id="sizing-addon5"><i class="glyphicon" aria-hidden="true"></i></span>
                <input type="text" class="form-control" placeholder="商品库存" aria-describedby="sizing-addon5">
            </div>
            <div class="input-group input-group-md">
                <span class="input-group-addon" id="sizing-addon6"><i class="glyphicon" aria-hidden="true"></i></span>
                <input type="text" class="form-control" placeholder="是否为VIP商品" aria-describedby="sizing-addon6">
            </div>
            <div class="input-group input-group-md">
                <span class="input-group-addon" id="sizing-addon7"><i class="glyphicon" aria-hidden="true"></i></span>
                <label class="form-control" aria-describedby="sizing-addon7">上传图片</label>
                <input type="file" class="form-control" aria-describedby="sizing-addon1">
            </div>
            <br />
            <button type="submit" class="btn btn-success btn-block">添加</button>
            <button type="reset" class="btn btn-success btn-block">重置</button>
            <br />
            <a href="merchant.jsp"><button class="btn btn-success btn-block">返回</button></a>
        </div>
    </div>
</div>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8">
    <title>商品详情页</title>
    <link rel="stylesheet" href="../../css/bootstrap.min.css" />
    <link href="../../css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="../../css/goods.css" />
    <script type="text/javascript">
        window.onload = function(){
            document.getElementById("showbox1").onclick = function(){
                document.getElementById("box2").style.display = "none";
                document.getElementById("box1").style.display = "block";
            }
            document.getElementById("showbox2").onclick = function(){
                document.getElementById("box1").style.display = "none";
                document.getElementById("box2").style.display = "block";
            }
        }
        function jiesuan()
        {
            alert("支付");
        }
    </script>
</head>
<body style="margin:50px">
<div class="modal-content" style="background-color:ghostwhite" id="back">
    <h1 align="center">商品名称</h1>
    <div class="menu">
        <ul class="nav nav-pills">
            <li><a href="index.jsp">首页</a></li>
            <li><a id="showbox1">商品信息</a></li>
            <li><a href="shop.jsp">进入店铺</a></li>
            <li><a id="showbox2">查看评论</a></li>
        </ul>
    </div>
    <div class="container" id="box1">
        <div class="leftContent">
            <img src="../../html/img/apple.jpg" class="img"/>
        </div>
        <div class="rightContent">
            <br />
            <table style="font-size: 15px" >
                <tr>
                    <td>价格</td>
                    <td>***</td>
                </tr>
                <tr>
                    <td>商家</td>
                    <td>***</td>
                </tr>
                <tr>
                    <td>规格</td>
                    <td>***</td>
                </tr>
                <tr>
                    <td>产地</td>
                    <td>***</td>
                </tr>
                <tr>
                    <td>剩余库存</td>
                    <td>***</td>
                </tr>
                <tr>
                    <td>是否为VIP商品</td>
                    <td>***</td>
                </tr>
                <tr>
                    <td>购买数量</td>
                    <td><input type="text" value="单位：千克" /></td>
                </tr>
                <tr>
                    <td>
                        <button class="btn btn-toolbar" onclick="jiesuan()">购买</button>
                    </td>
                    <td>
                        <a href="user.jsp"><button class="btn btn-toolbar">加入购物车</button></a>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <div id="box2" class="container">
        <h3 align="center">用户评论</h3>
        <table class="table table-hover table-bordered table-responsive table-striped">
            <tr>
                <td>（用户/商家）</td>
                <td></td>
            </tr>
            <tr>
                <td>评论人</td>
                <td>***</td>
            </tr>
            <tr>
                <td>用户评分</td>
                <td>5</td>
            </tr>
            <tr>
                <td>评论时间</td>
                <td>****/**/**</td>
            </tr>
            <tr>
                <td>评论内容</td>
                <td>********************************************</td>
            </tr>
        </table>
    </div>
</div>
</body>
</html>
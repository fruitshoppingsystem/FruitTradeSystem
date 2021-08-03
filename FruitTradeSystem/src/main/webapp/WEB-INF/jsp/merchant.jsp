<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>商家个人界面</title>
    <link rel="stylesheet" href="../../css/bootstrap.min.css" />
    <link href="../../css/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="../../css/merchant.css" />
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
    <h1 align="center">商家名称</h1>
    <div class="menu">
        <ul class="nav nav-pills">
            <li><a href="../../index.jsp">首页</a></li>
            <li><a id="showbox1">店铺信息</a></li>
            <li><a id="showbox2">我的商品</a></li>
            <li><a id="showbox3">我的订单</a></li>
            <li><a href="../../index.jsp">退出登录</a></li>
            <li><a href="#">注销店铺</a></li>
        </ul>
    </div>
    <div id="box1">
        <h3>店铺信息</h3>
        <table class="table-bordered" border="0" style="background-color:gainsboro">
            <tr>
                <td><label>地址</label></td>
                <td>
                    <input type="text" />
                </td>
            </tr>
            <tr>
                <td><label>电话</label></td>
                <td>
                    <input type="text" />
                </td>
            </tr>
        </table>
        <input type="button" value="修改" />
    </div>
    <div id="box2">
        <h3 align="center">我的商品</h3>
        <a href="addGoods.jsp"><button class="active">添加商品</button></a>
        <table class="table table-hover table-bordered" border="2" style="background-color:gainsboro">
            <tr>
                <td>商品名称</td>
                <td>商品价格</td>
                <td>商品产地</td>
                <td>商品规格</td>
                <td>是否为VIP商品</td>
                <td>剩余库存</td>
                <td>操作</td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>
                    <input type="button" value="修改" />
                    <input type="button" value="删除" />
                </td>
            </tr>
        </table>
    </div>
    <div id="box3">
        <h3 align="center">我的订单</h3>
        <table class="table table-hover table-bordered" border="2" style="background-color:gainsboro">
            <tr>
                <td>订单号</td>
                <td>商品名称</td>
                <td>商品价格</td>
                <td>用户名称</td>
                <td>收货地址</td>
                <td>用户电话</td>
                <td>快递 单号</td>
                <td>状态</td>
                <td>操作</td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>
                    <input type="button" value="上传快递单号" />
                </td>
            </tr>
        </table>
    </div>
</div>
</body>
</html>

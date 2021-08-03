<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>管理员</title>
    <link rel="stylesheet" href="../../css/bootstrap.min.css" />
    <link href="../../css/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="../../css/admin.css" />
    <script type="text/javascript">
        window.onload = function(){
            document.getElementById("showbox1").onclick = function(){
                document.getElementById("box2").style.display = "none";
                document.getElementById("box3").style.display = "none";
                document.getElementById("box4").style.display = "none";
                document.getElementById("box5").style.display = "none";
                document.getElementById("box6").style.display = "none";
                document.getElementById("box1").style.display = "block";
            }
            document.getElementById("showbox2").onclick = function(){
                document.getElementById("box1").style.display = "none";
                document.getElementById("box3").style.display = "none";
                document.getElementById("box4").style.display = "none";
                document.getElementById("box5").style.display = "none";
                document.getElementById("box6").style.display = "none";
                document.getElementById("box2").style.display = "block";
            }
            document.getElementById("showbox3").onclick = function(){
                document.getElementById("box1").style.display = "none";
                document.getElementById("box2").style.display = "none";
                document.getElementById("box4").style.display = "none";
                document.getElementById("box5").style.display = "none";
                document.getElementById("box6").style.display = "none";
                document.getElementById("box3").style.display = "block";
            }
            document.getElementById("showbox4").onclick = function(){
                document.getElementById("box1").style.display = "none";
                document.getElementById("box2").style.display = "none";
                document.getElementById("box3").style.display = "none";
                document.getElementById("box5").style.display = "none";
                document.getElementById("box6").style.display = "none";
                document.getElementById("box4").style.display = "block";
            }
            document.getElementById("showbox5").onclick = function(){
                document.getElementById("box1").style.display = "none";
                document.getElementById("box2").style.display = "none";
                document.getElementById("box3").style.display = "none";
                document.getElementById("box4").style.display = "none";
                document.getElementById("box6").style.display = "none";
                document.getElementById("box5").style.display = "block";
            }
            document.getElementById("showbox6").onclick = function(){
                document.getElementById("box1").style.display = "none";
                document.getElementById("box2").style.display = "none";
                document.getElementById("box3").style.display = "none";
                document.getElementById("box4").style.display = "none";
                document.getElementById("box5").style.display = "none";
                document.getElementById("box6").style.display = "block";
            }
        }
    </script>
</head>
<body style="margin:50px">
<div class="modal-content" style="background-color:ghostwhite" id="back">
    <h1 align="center">管理员界面</h1>
    <div class="menu">
        <ul class="nav nav-pills">
            <li><a href="../../index.jsp">首页</a></li>
            <li><a id="showbox1">管理用户</a></li>
            <li><a id="showbox2">管理商家</a></li>
            <li><a id="showbox3">管理订单</a></li>
            <li><a id="showbox4">管理商品</a></li>
            <li><a id="showbox5">管理评论</a></li>
            <li><a id="showbox6">审核</a></li>
            <li><a href="../../index.jsp">退出</a></li>
        </ul>
    </div>
    <div id="box1">
        <h1 align="center">用户列表</h1>
        <table class="table table-hover table-bordered" border="2" style="background-color:gainsboro">
            <tr>
                <td>用户名</td>
                <td>性别</td>
                <td>收货地址</td>
                <td>电话</td>
                <td>操作</td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>
                    <input type="button" value="修改" />
                </td>
            </tr>
        </table>
    </div>
    <div id="box2">
        <h1 align="center">商家列表</h1>
        <table class="table table-hover table-bordered" border="2" style="background-color:gainsboro">
            <tr>
                <td>店铺名</td>
                <td>描述</td>
                <td>地址</td>
                <td>电话</td>
                <td>操作</td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>
                    <input type="button" value="修改" />
                </td>
            </tr>
        </table>
    </div>
    <div id="box3">
        <h1 align="center">订单列表</h1>
        <table class="table table-hover table-bordered" border="2" style="background-color:gainsboro;">
            <tr>
                <td>订单号</td>
                <td>商品名称</td>
                <td>商品价格</td>
                <td>用户名称</td>
                <td>收货地址</td>
                <td>用户电话</td>
                <td>商家名称</td>
                <td>商家电话</td>
                <td>快递单号</td>
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
                <td></td>
                <td></td>
                <td>
                    <input type="button" value="修改" />
                    <input type="button" value="删除" />
                </td>
            </tr>
        </table>
    </div>
    <div id="box4">
        <h1 align="center">商品列表</h1>
        <table class="table table-hover table-bordered" border="2" style="background-color:gainsboro">
            <tr>
                <td>商品编号</td>
                <td>商品名称</td>
                <td>商品价格</td>
                <td>剩余库存</td>
                <td>商品产地</td>
                <td>商品规格</td>
                <td>商家名称</td>
                <td>商家电话</td>
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
                    <input type="button" value="删除" />
                </td>
            </tr>
        </table>
    </div>
    <div id="box5">
        <h1 align="center">评论列表</h1>
        <table class="table table-hover table-bordered" border="2" style="background-color:gainsboro">
            <tr>
                <td>评论人</td>
                <td>评论时间</td>
                <td>对应商品</td>
                <td>对应店铺</td>
                <td>评论内容</td>
                <td>操作</td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>
                    <input type="button" value="删除" />
                </td>
            </tr>
        </table>
    </div>
    <div id="box6">
        <h1 align="center">审核中……</h1>
        <table class="table table-hover table-bordered" border="2" style="background-color:gainsboro">
            <tr>
                <td>店铺名称</td>
                <td>店铺营业证书编号</td>
                <td>审核结果</td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td>
                    <input type="button" value="通过" />
                    <input type="button" value="不通过" />
                </td>
            </tr>
        </table>
    </div>
</div>

</body>
</html>

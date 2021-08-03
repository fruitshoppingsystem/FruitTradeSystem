<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>店铺界面</title>
    <link rel="stylesheet" href="../../css/bootstrap.min.css" />
    <link href="../../css/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="../../css/shop.css" />
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
    <h1 align="center">店铺名称</h1>
    <div class="menu">
        <ul class="nav nav-pills">
            <li><a href="../../index.jsp">首页</a></li>
            <li><a id="showbox1">店铺信息</a></li>
            <li><a id="showbox2">商品区</a></li>
            <li><a id="showbox3">VIP商品区</a></li>
        </ul>
    </div>
    <div id="box1">
        <h3>店铺信息</h3>
        <table class="table-bordered" style="background-color:gainsboro">
            <tr>
                <td><label>店铺地址:</label></td>
                <td></td>
            </tr>
            <tr>
                <td><label>联系电话:</label></td>
                <td></td>
            </tr>
        </table>
    </div>
    <div id="box2">
        <h3>商品区</h3>
        <table>
            <tr>
                <td>
                    <img src="../../html/img/apple.jpg"/>
                    <a href="">商品名称</a>
                </td>
                <td>
                    <img src="../../html/img/apple.jpg"/>
                    <a href="">商品名称</a>
                </td>
            </tr>
            <tr>
                <td>
                    <img src="../../html/img/apple.jpg"/>
                    <a href="">商品名称</a>
                </td>
                <td>
                    <img src="../../html/img/apple.jpg"/>
                    <a href="">商品名称</a>
                </td>
            </tr>
        </table>
    </div>
    <div id="box3">
        <h3>VIP商品区</h3>
        <table>
            <tr>
                <td>
                    <img src="../../html/img/apple.jpg"/>
                    <a href="">商品名称</a>
                </td>
                <td>
                    <img src="../../html/img/apple.jpg"/>
                    <a href="">商品名称</a>
                </td>
            </tr>
            <tr>
                <td>
                    <img src="../../html/img/apple.jpg"/>
                    <a href="">商品名称</a>
                </td>
                <td>
                    <img src="../../html/img/apple.jpg"/>
                    <a href="">商品名称</a>
                </td>
            </tr>
        </table>
    </div>
</div>
</body>
</html>

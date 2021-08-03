<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>首页</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/index.css">
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.min.js"></script>
</head>
<body style="margin: 50px">
<div class="modal-content" style="background-color:ghostwhite">
    <br />
    <div>
        <h1 align="center">水果购物平台</h1>
    </div>
    <div class="row" style="margin-top:30px;">
        <div class="col-md-2 col-md-offset-11">
            <a href="userRegister.html"><span class="glyphicon glyphicon-user"></span> 用户注册</a>
        </div>
        <div class="col-md-2 col-md-offset-11">
            <a href="merchantRegister.html"><span class="glyphicon glyphicon-shopping-cart"></span> 商家注册</a>
        </div>
        <div class="col-md-2 col-md-offset-11">
            <a href="login.html"><span class="glyphicon glyphicon-log-in"></span> 登录</a>
        </div>
        <div class="col-md-6 col-md-offset-3" >
            <div class="input-group input-group-md" >
                <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-search" aria-hidden="true"></i></span>
                <input type="text" class="form-control" value="请输入商品名称" aria-describedby="sizing-addon1">
                <div class="input-group-btn">
                    <button class="btn btn-default">查询</button>
                </div>
            </div>
        </div>
    </div>
    <hr />
    <div class="modal-content" style="background-image: url(img/background.jpeg);" id="box">
        <h3 align="center">商品区</h3>
        <br/>
        <table align="center">
            <tr>
                <td>
                    <img src="img/apple.jpg" class="img"/>
                    <a href="">商品名称</a>
                </td>
                <td>
                    <img src="img/apple.jpg" class="img"/>
                    <a href="">商品名称</a>
                </td>
                <td>
                    <img src="img/apple.jpg" class="img"/>
                    <a href="">商品名称</a>
                </td>
                <td>
                    <img src="img/apple.jpg" class="img"/>
                    <a href="">商品名称</a>
                </td>
            </tr>
            <tr>
                <td>
                    <img src="img/apple.jpg" class="img"/>
                    <a href="">商品名称</a>
                </td>
                <td>
                    <img src="img/apple.jpg" class="img"/>
                    <a href="">商品名称</a>
                </td>
                <td>
                    <img src="img/apple.jpg" class="img"/>
                    <a href="">商品名称</a>
                </td>
                <td>
                    <img src="img/apple.jpg" class="img"/>
                    <a href="">商品名称</a>
                </td>
            </tr>
        </table>
        <br />
    </div>
    <hr />
    <div id="box" class="modal-content" style="background-image: url(img/background.jpeg);">
        <h3 align="center">VIP商品区</h3>
        <br/>
        <table align="center">
            <tr>
                <td>
                    <img src="img/apple.jpg" class="img"/>
                    <a href="">商品名称</a>
                </td>
                <td>
                    <img src="img/apple.jpg" class="img"/>
                    <a href="">商品名称</a>
                </td>
                <td>
                    <img src="img/apple.jpg" class="img"/>
                    <a href="">商品名称</a>
                </td>
                <td>
                    <img src="img/apple.jpg" class="img"/>
                    <a href="">商品名称</a>
                </td>
            </tr>
            <tr>
                <td>
                    <img src="img/apple.jpg" class="img"/>
                    <a href="">商品名称</a>
                </td>
                <td>
                    <img src="img/apple.jpg" class="img"/>
                    <a href="">商品名称</a>
                </td>
                <td>
                    <img src="img/apple.jpg" class="img"/>
                    <a href="">商品名称</a>
                </td>
                <td>
                    <img src="img/apple.jpg" class="img"/>
                    <a href="">商品名称</a>
                </td>
            </tr>
        </table>
        <br />
    </div>
    <hr />
    <div id="box" class="modal-content" style="background-image: url(img/background.jpeg);">
        <h3 align="center">店铺区</h3>
        <br/>
        <table align="center">
            <tr>
                <td>
                    <a href="">店铺名称</a>
                </td>
                <td>
                    <a href="">店铺名称</a>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="">店铺名称</a>
                </td>
                <td>
                    <a href="">店铺名称</a>
                </td>
            </tr>
        </table>
        <br />
    </div>
    <br />
    <br />
    <br />
</div>
</body>
</html>
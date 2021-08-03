<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>评论界面</title>
    <link rel="stylesheet" href="../../css/bootstrap.min.css" />
    <link href="../../css/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="../../css/comment.css" />
</head>
<body style="margin:50px">
<div class="modal-content" style="background-color:ghostwhite" id="back">
    <h3 align="center">请评价此商品</h3>
    <div id="box">
        <table>
            <tr>
                <td>分数：</td>
                <td>
                    <select οnchange="changestars(this.value)">
                        <option value="" selected="selected">--请选择--</option>
                        <option value="0">0分</option>
                        <option value="0.5">0.5分</option>
                        <option value="1">1分</option>
                        <option value="1.5">1.5分</option>
                        <option value="2">2分</option>
                        <option value="2.5">2.5分</option>
                        <option value="3">3分</option>
                        <option value="3.5">3.5分</option>
                        <option value="4">4分</option>
                        <option value="4.5">4.5分</option>
                        <option value="5">5分</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>评论内容：</td>
                <td>
                    <textarea rows="3"></textarea>
                </td>
            </tr>
        </table>
        <br />
        <div>
            <button type="submit" class="btn btn-success btn-default">提交</button>
            <button type="reset" class="btn btn-success btn-default">重置</button>
            <a href="user.jsp"><button class="btn btn-info">返回</button></a>
        </div>
    </div>
</div>
</body>
</html>


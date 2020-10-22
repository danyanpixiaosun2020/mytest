<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>智能搜索系统 -- 板块管理</title>

</head>

<body data-msg="${requestScope.result.msg}">
<div class="container">
    <div class="content">
        <div class="main">
            <h2>板块管理</h2>
            <p><a href="">添加板块</a></p>
            <table>
                <tr>
                    <td>板块名</td>
                    <td>操作<></td>
                    <td></td>
                </tr>
            </table>
        </div>
    </div>
    友情链接：<a href="www.baidu.com">百度</a>
</div>
<script src="/assets/jquery-3.4.1.min.js" type="text/javascript"></script>
<script src="/assets/home.js" type="text/javascript"></script>
</body>
</html>
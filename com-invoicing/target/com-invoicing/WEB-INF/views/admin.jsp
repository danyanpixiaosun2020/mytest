<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>智能搜索系统 -- 管理员界面</title>
   <style>
       td { border:2px solid black;}
       table { border-collapse: collapse; border-spacing: 0; }

   </style>
</head>
<body data-msg="${requestScope.id}" data-del="${requestScope.isDel}">
<a id="linkLogout" href="javascript:;">退出登录</a>
<div class="container">
    <div class="login">
        <h1 class="text-center">智能搜索系统-管理员个人中心</h1>
        <div>
        <table >
            <tr>
                <c:forEach var="plate" items="${requestScope.list2}">
                    <td><a href="/admin?id=${plate.id}">${plate.pname}</a></td>
                </c:forEach>
            </tr>
            <tr>
                <td><a href="/newsAdd" class="newsAdd">新增</td>
            </tr>
        </table>
        </div>
        </div>
        <table >
            <tr>
                <td>id</td>
                <td>内容</td>
                <td>类型</td>
                <td>关键字</td>
                <td>操作</td>
            </tr>
            <c:forEach var="news" items="${requestScope.list1}">
            <tr id="btnDel">
                <td>${news.id}</td>
                <td>${news.content}</td>
                <td>${news.type}</td>
                <td>${news.keywords}</td>
                <td><a type="button" href="/newsEdit?id=${news.id}">修改</a> <button class="click" type="button"  data-id="${news.id}">删除</button></td>

            </tr>
            </c:forEach>
        </table>
</div>
    </div>
</div>
<script src="/assets/jquery-3.4.1.min.js" type="text/javascript"></script>
<script src="/assets/admin.js" type="text/javascript"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>智能搜索系统 -- 注册</title>
    <link href="/assets/style.css" rel="stylesheet">
</head>
<body data-msg="${requestScope.result.msg}">
<div class="container">
    <div class="login">
        <h1 class="text-center">智能搜索系统-注册</h1>
        <form id="loginForm" action="/register" method="post" class="login-form">
            <label for="username">用户名：</label>
            <input type="text" id="username" name="username">
            <label for="password">密码：</label>
            <input type="password" id="password" name="password">

            <p class="text-center">
                <button type="submit">注册</button>
                <a href="/login">返回登录界面</a>
            </p>
        </form>
    </div>
</div>j
<script src="/assets/jquery-3.4.1.min.js" type="text/javascript"></script>
<script src="/assets/register.js" type="text/javascript"></script>
</body>
</html>
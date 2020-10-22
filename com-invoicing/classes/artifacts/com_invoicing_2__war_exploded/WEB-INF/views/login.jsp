<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>智能搜索系统 -- 登录</title>
		<link href="/assets/style.css" rel="stylesheet">
	</head>
	<body data-msg="${requestScope.result.msg}">
		<div class="container">
			<div class="login">
				<h1 class="text-center">智能搜索系统-登录</h1>
				<form id="loginForm" action="/login" method="post" class="login-form">
					<label for="username">用户名：</label>
					<input type="text" id="username" name="username">
					<label for="password">密码：</label>
					<input type="password" id="password" name="password">

					<p class="text-center">
						<button type="submit">登录</button>
						<a id="linkRegister" href="/register">注册</a>
					</p>
				</form>
			</div>
		</div>
		<script src="/assets/jquery-3.4.1.min.js" type="text/javascript"></script>
		<script src="/assets/login.js" type="text/javascript"></script>
	</body>
</html>
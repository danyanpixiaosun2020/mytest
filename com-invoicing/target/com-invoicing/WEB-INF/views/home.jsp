<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>智能搜索系统 -- 主界面</title>

	</head>

	<body data-msg="${requestScope.result.msg}">
		<div class="container">
			<div class="content">
				<div class="main">
					<form id="home" action="/news" method="post" class="login-form">
						<input type="text" id="keyword" name="keyword"><button type="submit" style="width:200px" >搜文章</button><a id="linkLogout" href="javascript:;">退出登录</a>
					</form>
				</div>
				<div>
					<table>
						<tr>
							<c:forEach var="plate" items="${requestScope.list2}">
								<td><a href="/news?id=${plate.id}">${plate.pname}</a></td>
							</c:forEach>
						</tr>
					</table>
					<c:forEach var="news" items="${requestScope.list1}">
						<td><a href="/message?id=${news.id}"><h2>${news.keywords}</h2></a></td>
						<td>${news.content}</td>
					</c:forEach>

				</div>
			</div>
			友情链接：<a href="www.baidu.com">百度</a>
		</div>
		<script src="/assets/jquery-3.4.1.min.js" type="text/javascript"></script>
		<script src="/assets/home.js" type="text/javascript"></script>
	</body>
</html>
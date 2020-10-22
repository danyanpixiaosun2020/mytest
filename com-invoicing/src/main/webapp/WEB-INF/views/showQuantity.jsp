<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>小型进销存系统 -- 查看库存</title>
		<link href="/assets/style.css" rel="stylesheet">
	</head>
	<body data-msg="${requestScope.result.msg}">
		<div class="container">
			<p>欢迎：${sessionScope.users.realName}，<a id="linkLogout" href="javascript:;">退出登录</a></p>
			<div class="content">
				<div class="left">
					<%@ include file="menu.jsp" %>
				</div>
				<div class="main">
					<form id="showQuantityForm" action="/showQuantity">
						<span class="small-title">查看库存：</span>
						<label for="productId">商品名称：</label>
						<select id="productId" name="id">
							<option value="">--请选择商品--</option>
							<c:forEach var="product" items="${requestScope.products}">
								<option value="${product.id}">${product.productName}</option>
							</c:forEach>
						</select>
						<button type="submit">保存</button>
					</form>
					<c:if test="${not empty requestScope.quantity}">
						<h1>该商品的库存数量是：${requestScope.quantity}</h1>
					</c:if>
				</div>
			</div>
		</div>
		<script src="/assets/jquery-3.4.1.min.js" type="text/javascript"></script>
		<script src="/assets/home.js" type="text/javascript"></script>
		<script src="/assets/showQuantity.js" type="text/javascript"></script>
	</body>
</html>
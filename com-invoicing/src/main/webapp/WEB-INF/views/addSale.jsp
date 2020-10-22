<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>小型进销存系统 -- 销售</title>
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
					<div class="form">
						<form id="addSaleForm" action="/addSale" method="post">
							<table>
								<tr>
									<td><h2>添加销售：</h2></td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td>商品名称：</td>
									<td>
										<select id="productId" name="product.id">
											<option value="">--请选择商品--</option>
											<c:forEach var="product" items="${requestScope.products}">
												<option value="${product.id}">${product.productName}</option>
											</c:forEach>
										</select>
									</td>
								</tr>
								<tr>
									<td>销售单价：</td>
									<td><input type="text" id="price" name="price"></td>
								</tr>
								<tr>
									<td>销售数量：</td>
									<td><input type="text" id="quantity" name="quantity"></td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td><button type="submit">保存</button></td>
								</tr>
							</table>
						</form>
					</div>
				</div>
			</div>
		</div>
		<script src="/assets/jquery-3.4.1.min.js" type="text/javascript"></script>
		<script src="/assets/home.js" type="text/javascript"></script>
		<script src="/assets/addSale.js" type="text/javascript"></script>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>小型进销存系统 -- 销售信息查询</title>
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
					<div class="search">
						<form action="/searchSale">
							<span class="small-title">销售信息查询：</span>
							<label>排序方式：</label>
							<select id="type" name="type">
								<option value="saleDate"${requestScope.type eq 'saleDate' ? ' selected' : ''}>销售日期</option>
								<option value="totalPrice"${requestScope.type eq 'totalPrice' ? ' selected' : ''}>单笔总价</option>
							</select>
							<button type="submit">提交</button>
						</form>
						<c:if test="${requestScope.pageInfo.total gt 0}" var="flag">
							<table class="table">
								<thead>
									<tr>
										<th>ID</th>
										<th>商品</th>
										<th>单价</th>
										<th>数量</th>
										<th>总价</th>
										<th>销售日期</th>
										<th>销售员</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="sale" items="${requestScope.pageInfo.list}">
										<tr>
											<td>${sale.id}</td>
											<td>${sale.product.productName}</td>
											<td>${sale.price}</td>
											<td>${sale.quantity}</td>
											<td>${sale.totalPrice}</td>
											<td><fmt:formatDate value="${sale.saleDate}" pattern="yyyy-MM-dd"/></td>
											<td>${sale.users.realName}</td>
										</tr>
									</c:forEach>
								</tbody>
								<tfoot>
									<tr>
										<td colspan="7" class="text-center">
											<c:if test="${requestScope.pageInfo.isFirstPage}" var="isFirstPage">
												首页 | 上一页
											</c:if>
											<c:if test="${not isFirstPage}">
												<a href="javascript:;" data-num="1">首页</a> | 
												<a href="javascript:;" data-num="${requestScope.pageInfo.prePage}">上一页</a>
											</c:if>
											<c:if test="${requestScope.pageInfo.isLastPage}" var="isLastPage">
												下一页 | 尾页
											</c:if>
											<c:if test="${not isLastPage}">
												<a href="javascript:;" data-num="${requestScope.pageInfo.nextPage}">下一页</a> | 
												<a href="javascript:;" data-num="${requestScope.pageInfo.pages}">尾页</a>
											</c:if>
											第${requestScope.pageInfo.pageNum}页/共${requestScope.pageInfo.pages}页(${requestScope.pageInfo.total}条记录)
										</td>
									</tr>	
								</tfoot>
							</table>
						</c:if>
						<c:if test="${not flag}">
							<h1 class="title text-center">暂时没有销售记录</h1>
						</c:if>
					</div>
				</div>
			</div>
		</div>
		<script src="/assets/jquery-3.4.1.min.js" type="text/javascript"></script>
		<script src="/assets/home.js" type="text/javascript"></script>
		<script src="/assets/searchSale.js" type="text/javascript"></script>
	</body>
</html>
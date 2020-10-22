<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>智能搜索系统 -- 新闻详情</title>

</head>

<body data-id="${requestScope.news.id}">
<div class="container">
    <a id="linkLogout" href="javascript:;">退出登录</a>
    <div class="content">
        <div class="main">
           <h2> ${requestScope.news.keywords}</h2>
            <p>${requestScope.news.content}</p>
            <h3>用户留言</h3>
            <c:forEach var="message" items="${requestScope.list}">
                <p>用户：${message.username}</p>
                <p>评论：${message.content}</p>
            </c:forEach>
            <form id="home" action=""  class="login-form">
                <input type="text" id="content" name="content" style="width:200px"><button id="messageBtn" type="button">评论</button>
            </form>
        </div>
    </div>

</div>
<script src="/assets/jquery-3.4.1.min.js" type="text/javascript"></script>
<script src="/assets/message.js" type="text/javascript"></script>
</body>
</html>
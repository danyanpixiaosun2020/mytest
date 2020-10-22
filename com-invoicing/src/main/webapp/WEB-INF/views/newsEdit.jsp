<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>智能搜索系统 -- 新闻修改</title>

</head>

<body data-msg="${requestScope.result.msg}">
<div class="container">
    <a  href="/admin">返回主页</a>
    <a id="linkLogout" href="javascript:;">退出登录</a>
    <div class="content">

        <form id="home" action="newsEdit" method="post"  class="login-form">
            <input type="hidden" id="" name="id" value="${requestScope.news.id}">
            内容：<input type="text" id="content" name="content" value="${requestScope.news.content}">
            关键字：<input type="text" id="keywords" name="keywords" value="${requestScope.news.keywords}">
            <button type="submit">提交</button>
        </form>
    </div>

</div>
<script src="/assets/jquery-3.4.1.min.js" type="text/javascript"></script>
<script src="/assets/newsEdit.js" type="text/javascript"></script>
</body>
</html>
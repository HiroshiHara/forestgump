<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jp.co.forestgump.beans.User" %>
<%
// リクエストスコープにエラーメッセージが保存されていればフォームの下に表示
String errorMsg = (String)request.getAttribute("ErrorMsg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
</head>
<body>
	<form action="/forestgump/login" method="post">
		ID:<input type="text" name="id"><br>
		PASSWORD:<input type="password" name="password"><br>
		<input type="submit" value="LOGIN">
	</form>
	<% if (errorMsg != null) { %>
		<%= errorMsg.toString() %>
	<% } %>
</body>
</html>
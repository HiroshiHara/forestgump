<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jp.co.forestgump.beans.User" %>
<%
// セッションスコープに"Admin"のキーでインスタンスが保存されていなければログイン失敗のメッセージを表示する
User user = (User)session.getAttribute("Admin");
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
	<% if (user == null) { %>
		<p>faild to Authentification.</p>
	<% } %>
</body>
</html>
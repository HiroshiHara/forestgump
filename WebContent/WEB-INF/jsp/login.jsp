<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
</head>
<body>
	<form action="/forestgump/LoginServlet" method="post">
		ID:<input type="text" name="id"><br>
		PASSWORD:<input type="password" name="password"><br>
		<input type="submit" value="LOGIN">
	</form>
</body>
</html>
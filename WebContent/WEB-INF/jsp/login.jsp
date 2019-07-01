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
  <link rel="stylesheet" href="/forestgump/css/reset.css">
  <link rel="stylesheet" href="/forestgump/css/login.css">
  <title>LOGIN</title>
</head>

<body>
  <div class="main-wrapper">
    <div class="login-form">
      <form action="/forestgump/login" method="post">
        <input type="text" name="id" placeholder="ID" autocomplete="off"><br>
        <input type="password" name="password" placeholder="PASSWORD"><br>
        <input type="submit" value="LOGIN">
        <% if (errorMsg != null) { %>
          <p class="error-message"><%= errorMsg.toString() %></p>
        <% } %>
      </form>
    </div>
  </div>
  <!-- IE9以前でもplaceholder属性が使えるようにするpolyfill -->
  <script src="/forestgump/js/placeholders.min.js" charset="utf-8"></script>
  <script src="/forestgump/js/formcheck.js" charset="utf-8"></script>
</body>

</html>

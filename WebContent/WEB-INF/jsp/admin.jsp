<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja" dir="ltr">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>管理者メニュー</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="css/admin.css">
</head>

<body>
  <!-- navigation bar -->
  <nav class="navbar navbar-expand-sm navbar-dark bg-dark mb-2">
    <a href="#" class="navbar-brand">FGJW</a>
    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navmenu" aria-controls="navmenu" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navmenu">
      <div class="navbar-nav">
        <a href="#member-wrapper" class="nav-item nav-link">MEMBER</a>
        <a href="#flyer-wrapper" class="nav-item nav-link">FLYER</a>
        <a href="/forestgump/login" class="nav-item nav-link">LOGOUT</a>
      </div>
    </div>
  </nav>
  <!-- container -->
  <div class="container">
    <!-- member-list -->
    <div class="member-wrapper" id="member-wrapper">
      <h3>MEMBER</h3>
      <a class="collapse-button"
      data-toggle="collapse"
      href="#member-list"
      role="button"
      aria-expand="false"
      aria-controls="member-list"
      id="collapse-btn-member">+</a>
      <table class="table table-bordered table-hover" id="member-table">
        <thead class="thead-dark">
          <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>REGIST DATE</th>
          </tr>
        </thead>
        <tbody class="member-list collapse" id="member-list">
          <!-- 要素の数だけ繰り返し表示 -->
          <tr>
            <td><a href="#">1000</a></td>
            <td>Shunsuke Mori</td>
            <td>2019/06/07</td>
          </tr>
          <tr>
            <td><a href="#">1001</a></td>
            <td>Jun Nasuno</td>
            <td>2019/06/07</td>
          </tr>
          <tr>
            <td><a href="#">1002</a></td>
            <td>Masahito Nobe</td>
            <td>2019/06/07</td>
          </tr>
          <!-- 要素の数だけ繰り返し表示ここまで -->
        </tbody>
      </table>
      <a href="#" class="button">ADD</a>
    </div>
    <!-- flyer-list -->
    <div class="flyer-wrapper" id="flyer-wrapper">
      <h3>FLYER</h3>
      <a class="collapse-button"
      data-toggle="collapse"
      href="#flyer-list"
      role="button"
      aria-expand="false"
      aria-controls="flyer-list"
      id="collapse-btn-flyer">+</a>
      <table class="table table-bordered table-hover" id="flyer-table">
        <thead class="thead-dark">
          <tr>
            <th>ID</th>
            <th>TITLE</th>
            <th>LIVE DATE</th>
          </tr>
        </thead>
        <tbody class="flyer-list collapse" id="flyer-list">
          <!-- 要素の数だけ繰り返し表示 -->
          <tr>
            <td><a href="#">1000</a></td>
            <td>1st Live at LIFETIME</td>
            <td>2012/03/04</td>
          </tr>
          <tr>
            <td><a href="#">1001</a></td>
            <td>KIRAKU@2012</td>
            <td>2012/03/23</td>
          </tr>
          <tr>
            <td><a href="#">1002</a></td>
            <td>対バン vs SSH</td>
            <td>2012/05/15</td>
          </tr>
          <!-- 要素の数だけ繰り返し表示ここまで -->
        </tbody>
      </table>
      <a href="#" class="button">ADD</a>
    </div>
  </div>
  <script type="text/javascript">
    document.addEventListener('DOMContentLoaded', function() {
      document.getElementById('collapse-btn-flyer').addEventListener('click', function() {
        var icon = document.getElementById('collapse-btn-flyer').textContent;
        if (icon === '+') {
          document.getElementById('collapse-btn-flyer').textContent = '-';
          return;
        }
        if (icon === '-') {
          document.getElementById('collapse-btn-flyer').textContent = '+';
          return;
        }
        return;
      }, false);
      document.getElementById('collapse-btn-member').addEventListener('click', function() {
        var icon = document.getElementById('collapse-btn-member').textContent;
        if (icon === '+') {
          document.getElementById('collapse-btn-member').textContent = '-';
          return;
        }
        if (icon === '-') {
          document.getElementById('collapse-btn-member').textContent = '+';
          return;
        }
        return;
      }, false);
    }, false);
  </script>
</body>

</html>

</body>
</html>
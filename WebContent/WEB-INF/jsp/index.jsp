<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja" dir="ltr">

<head>
  <meta charset="utf-8">
  <title>Forest Gump Jazz Workers</title>
  <link rel="stylesheet" href="/forestgump/css/normalize.css">
  <link rel="stylesheet" href="/forestgump/css/index.css">
  <link rel="stylesheet" href="/forestgump/css/modaal.min.css">
</head>

<body>
  <header class="header">
    <p class="site-title-sub">BigBand Jazz Band</p>
    <h1 class="site-title">Forest Gump Jazz Workers</h1>
    <p class="site-description">We are a BigBand jazz band that is active in Shizuoka.</p>
    <!-- ページ内リンク -->
    <div class="buttons">
      <a class="button" href="#about">ABOUT</a>
      <a class="button button-showy" href="#contact">CONTACT</a>
    </div>
  </header>
  <section class="about" id="about">
    <h2 class="heading">ABOUT US</h2>
    <p class="about-text">
      私達は静岡県内を中心に活動する社会人ビッグバンド・ジャズサークルです。<br>
      2011年に静岡大学ジャズサークル「Standard Harmoney Jazz Orchestra」及び<br>
      「Jazz Phenomena」の有志達で結成されました。
    </p>
    <p class="about-text">
      演奏ジャンルはCount Basie, Buddy Rich等の往年の名曲に留まらず、ラテンやコンテンポラリー、<br>
      時々ポップスなど、ジャンルの幅に囚われず多様な音楽に挑戦しています。<br>
    </p>
  </section>
  <section class="live">
    <h2 class="heading">LIVE</h2>
    <div class="live-wrapper clearfix">
      <p class="live-text">
        年1回行われる春先の自主企画ライブを目標に、日々の練習に励んでいます。<br>
        また、県内ジャズフェスへの出演など各種イベントでの演奏も行っています。<br>
        メンバーによっては別バンドでのライブもあり、FGJWの音楽的多様性に貢献しています。
      </p>
      <a class="live-info button" data-group="gallery" href="images/live1.jpg">INFO & HISTORY</a>
      <a class="live-info button" data-group="gallery" href="images/live1.jpg" style="display:none;">Flyer</a>
      <a class="live-info button" data-group="gallery" href="images/live1.jpg" style="display:none;">Flyer</a>
    </div>
  </section>
  <section class="member">
    <h2 class="heading">MEMBER</h2>
    <p class="member-text">
      癖の強すぎるだいたい15, 6人ぐらいのメンバーたち。<br>
      社会人バンドを名乗りつつも、社会というものがよくわかっていない。
    </p>
    <a class="more-member button" href="/forestgump/member">MORE</a>
  </section>
  <section class="contact" id="contact">
    <h2 class="heading">CONTACT</h2>
    <form class="contact-form" action="" method="post">
      <input type="text" id="name" placeholder="NAME" autocomplete="off">
      <input type="email" id="email" placeholder="E-MAIL" autocomplete="off">
      <textarea id="message" placeholder="MESSAGE" autocomplete="off"></textarea>
      <input id="submit-contact" type="submit" value="SEND">
    </form>
  </section>
  <footer class="footer">
    © Hiroshi Hara
  </footer>
  <script src="/forestgump/js/formcheck.js" charset="utf-8"></script>
  <!-- IE9以前でもplaceholder属性が使えるようにするpolyfill -->
  <script src="/forestgump/js/placeholders.min.js" charset="utf-8"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
  <script src="/forestgump/js/modaal.min.js" charset="utf-8"></script>
  <script type="text/javascript">
    $('.live-info').modaal({
      type: 'image'
    });
  </script>
</body>

</html>

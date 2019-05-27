'use strict';

$(function() {
  $(".modalOpen").click(function() {
    var navClass = $(this).attr("class"),
    href = $(this).attr("href");
    $(href).fadeIn();
    $(this).addClass("open");
    return false;
  });

  $(".modalClose").click(function() {
    $(this).parents(".modal").fadeOut();
    $(".modalOpen").removeClass("open");
    return false;
  });
});

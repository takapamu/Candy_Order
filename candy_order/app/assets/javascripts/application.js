// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require activestorage
//= require cocoon
//= require_tree .
//= require bootstrap-sprockets
//= require data-confirm-modal


/*$(window).bind('scroll', function () {
  previousTop: 0;
  var currentTop = $(window).scrollTop();
  if (currentTop < this.previousTop ) {
    $('header').addClass('visible');
  } else {
      $('header').removeClass('visible');
  }
  this.previousTop = currentTop;
});*/

$(function() {
    $('.Toggle').click(function() {
      $(this).toggleClass('active');
      $('.menu').toggleClass('open');
      if( $('.menu').hasClass('open') ){
          $('#main-menu').css('margin-top', $('#menu').outerHeight());
      }else{
          $('#main-menu').css('margin-top', '');
      }
      $(window).on('resize', function(){
         if( $('.menu').hasClass('open') ){
            $('#main-menu').css('margin-top', $('#menu').outerHeight());
         }else{
            $('#main-menu').css('margin-top', '');
        }

      });
    });
});

$(function() {
  $('.slide-area').slick({
    dots: true,
    infinite: true,
    speed: 500,
    fade: true,
    autoplay: true,
    autoplaySpeed: 2500,
    cssEase: 'linear'
  });
});

$(window).load(function () {
    // 消えるタイミングはお好みで
    $('.loading').delay(1500).fadeOut(300);
});
// 10秒待っても読み込みが終わらない時は強制的にローディング画面をフェードアウト
function stopload(){
    $('.loading').delay(1000).fadeOut(700);
}
setTimeout('stopload()',10000);

$( '.js-input' ).keyup(function() {
  if( $(this).val() ) {
     $(this).addClass('not-empty');
  } else {
     $(this).removeClass('not-empty');
  }
});

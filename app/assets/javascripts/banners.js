// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(function(){
  $(".slideshow").slidesjs({
    width: 960,
    height: 300,
    navigation: {
      active: true
    },
    pagination: {
      active: true
    }
  });
});
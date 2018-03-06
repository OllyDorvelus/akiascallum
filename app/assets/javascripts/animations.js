$(document).ready(function() {
  $('.navli').mouseenter(function(){
    //$(this).animate({backgroundColor: 'yellow'},500)
    $(this).animate({borderWidth: '2px'},200)
  }).mouseleave(function(){
    $(this).animate({borderWidth: '0px'},200)
  })
  
  $('.animationimg').mouseenter(function(){
    $(this).animate({height: 200, width: 245}, 200)
  }).mouseleave(function(){
    $(this).animate({height: 180, width: 225}, 200)
  })
})
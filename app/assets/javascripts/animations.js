$(document).on('turbolinks:load', function() {
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
  
  $('.gallery-img-container').mouseenter(function(){
   // $(".caption").removeClass("hidden")
    var caption = $(this).find(".caption")
    var img = $(this).find(".gallery-list-img")
        img.animate({
        opacity: "0.3"
    }, 200)
     caption.removeClass("hidden")
  }).mouseleave(function(){
    var caption = $(this).find(".caption")
    var img = $(this).find(".gallery-list-img")
    img.animate({
        opacity: "1"
    }, 200)
    caption.addClass("hidden")
  })

  
 // $('.background-image').css("background-image", "url(<%= image_path 'kiadesk.jpg' %>)" )
  
 // var photoArrays = ['kiadesk.jpg', 'kiacongress.jpg', "kigbag.jpg", "kiarunback.jpg"]
  
//   function changeImage() {
//     setInterval(function() {
      
    
//    // $('.background-image').fadeOut(1000)
//     $('.background-image').css("background-image", "url()" )
//   //  $('.background-image').fadeIn(1000)
//       }, 2000)
//   }
  
//   changeImage()
  
});





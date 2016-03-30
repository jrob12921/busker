$(document).ready(function(){

  $(".click-row").click(function(){
    window.document.location = $(this).data("href")
  })

})
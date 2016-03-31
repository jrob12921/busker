$(document).ready(function(){

  $(".click-row").click(function(){
    window.document.location = $(this).data("href")
  })

// NEED TO ADD RADIO-CHECKED!!!

  $("#down").click(function(){
    if($("#down").attr("class","fa fa-thumbs-o-down")){

      $("#up").attr("class","fa fa-thumbs-o-up")
      $("#down").attr("class","fa fa-thumbs-down" )

    }else{

      $("#up").attr("class","fa fa-thumbs-up")
      $("#down").attr("class","fa fa-thumbs-o-down" )
    }
  })

  $("#up").click(function(){
    if($("#up").attr("class","fa fa-thumbs-o-up")){

      $("#up").attr("class","fa fa-thumbs-up")
      $("#down").attr("class","fa fa-thumbs-o-down" )

    }else{

      $("#up").attr("class","fa fa-thumbs-o-up")
      $("#down").attr("class","fa fa-thumbs-down" )
    }
  })

})
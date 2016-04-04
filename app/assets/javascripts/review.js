$(document).ready(function(){

  //This is to make a review clickable
  $(".click-row").click(function(){
    window.document.location = $(this).data("href")
  })

  //these #up and #down click events are for ratings
  $("#down").click(function(){

    if(!$("#review_rating_false")[0].checked){
      
      $("#review_rating_false")[0].checked = true
      $("#down").attr("class","fa fa-5x fa-thumbs-down")

      $("#review_rating_true")[0].checked = false
      $("#up").attr("class","fa fa-5x fa-thumbs-o-up")

    }
  })

  $("#up").click(function(){
    if(!$("#review_rating_true")[0].checked){

      $("#review_rating_true")[0].checked = true
      $("#up").attr("class","fa fa-5x fa-thumbs-up")

      $("#review_rating_false")[0].checked = false
      $("#down").attr("class","fa fa-5x fa-thumbs-o-down")

    }
  })

  //this function is to populate the thumbs up/down on the edit review page
  if($("#review_rating_true")[0].checked){
    $("#up").attr("class","fa fa-5x fa-thumbs-up")
  }else if($("#review_rating_false")[0].checked){
    $("#down").attr("class","fa fa-5x fa-thumbs-down")    
  }

  //this change function is to make the update button appear when a user selects a new avatar on the update review page
  $(".pick_file").change(function() {
    $(".update_file").attr("style","")
  })




})



$(document).ready(function(){

  $(".click-row").click(function(){
    window.document.location = $(this).data("href")
  })

// NEED TO ADD RADIO-CHECKED!!!

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


  $("#pick_file").change(function() {
    $("#update_file").attr("style","")
  })


})



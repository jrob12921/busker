$(document).ready(function(){

  $(".click-row").click(function(){
    window.document.location = $(this).data("href")
  })

// NEED TO ADD RADIO-CHECKED!!!

  $("#down").click(function(){

    if(!$("#review_rating_down")[0].checked){

      $("#review_rating_down")[0].checked = true
      $("#down").attr("class","fa fa-5x fa-thumbs-down")

      $("#review_rating_up")[0].checked = false
      $("#up").attr("class","fa fa-5x fa-thumbs-o-up")

      // console.log($  ("#review_rating_up")[0])
      // console.log($("#review_rating_down")[0])

    }
  })

  $("#up").click(function(){

    if(!$("#review_rating_up")[0].checked){

      $("#review_rating_up")[0].checked = true
      $("#up").attr("class","fa fa-5x fa-thumbs-up")

      $("#review_rating_down")[0].checked = false
      $("#down").attr("class","fa fa-5x fa-thumbs-o-down")

      // console.log($("#review_rating_up")[0])
      // console.log($("#review_rating_down")[0])

    }
  })

})
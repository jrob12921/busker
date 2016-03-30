$(document).ready(function() {
  /* Activating Best In Place */
  jQuery(".best_in_place").best_in_place();

  $('.best_in_place').bind("ajax:success", function () {$(this).closest('tr').effect('highlight'); });

$('.best_in_place').bind("ajax:success", function(){ alert('Name updated for '+$(this).data('username')); });

$('.best_in_place').bind("ajax:success", function(){ alert('Name updated for '+$(this).data('fname')); });

$('.best_in_place').bind("ajax:success", function(){ alert('Name updated for '+$(this).data('lname')); });

$('.best_in_place').bind("ajax:success", function(){ alert('Name updated for '+$(this).data('borough')); });

$('.best_in_place').bind("ajax:success", function(){ alert('Name updated for '+$(this).data('neighborhood')); });
});


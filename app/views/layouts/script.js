var clicksL = 0; 
var clicksD = 0;

$("#like").click(function(){ clicksL++; $('.figure1').html(clicksL);});

$("#dislike").click(function(){ clicksD++; $('.figure2').html(clicksD);});
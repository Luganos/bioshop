$(function(){

$("#spin").on("click",function(){console.log("ttt")});
$('.sl').slick({
    /*vertical:true,
    verticalSwiping:true,
    autoplaySpeed:3000,
    autoplay:true*/
});



$('.idTop').click(function(){
       $('html, body').animate({scrollTop:0}, 'slow');
   });

var open_small_menu = 0;

$("#open_small_menu").on("click", function(){
    if(!open_small_menu){
    $(".open_header_menu_small").css({"display":"block"});
    open_small_menu = 1;
}else{
    $(".open_header_menu_small").css({"display":"none"});
    open_small_menu = 0;
}
});



});

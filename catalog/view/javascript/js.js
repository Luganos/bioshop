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

$('#refresh_input_cart').on("click", function(){
            $("#send_col_product_big_cart").submit();
            //console.log($('#refresh_input_cart').val());
            //location.reload();
    });




var target = document.getElementById('loader');

var opts = {
  lines: 9, // число линий для отрисоки
  length: 28, // длинна каждой линии
  width: 7, // ширина линий
  radius: 28, // радиус внутреннего круга
  corners: 1, // радиус скругления границ
  rotate: 0, // поворот
  direction: 1, // направление движения: 1: по часовой, -1: против часовой
  color: '#000', // цвет: #rgb или #rrggbb или массив цветов
  speed: 1, // скорость вращения
  trail: 56, // процент скорости затухания
  shadow: false, // тени
  hwaccel: false, // аппаратное ускорение
  className: 'spinner', // дополнительный CSS-класс
  zIndex: 2e9, // z-index (вплоть до 2000000000)
  top: '50%', // отступ сверху
  left: '50%' // отступ слева
};

var spinner = new Spinner(opts).spin(target);



});


$(window).load(function(){
    $("#loader").fadeOut(300, function(){
       // spinner.stop(); // останавливаем лоадер
        $(this).remove(); // убиваем его
        /*$(".wrapper").fadeIn(300, function(){ // показываем весь контент
            // какой-то код после отображения всего контента
        });*/
    });
});
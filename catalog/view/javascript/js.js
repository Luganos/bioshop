console.log("ter");
$(function(){

$("#spin").on("click",function(){console.log("ttt")});
$('.sl').slick({
    prevArrow: '<button type="button"><img src="catalog/view/theme/bioshop-prime/image/right-slid.png"></button>',
    nextArrow: '<button type="button"><img src="catalog/view/theme/bioshop-prime/image/left-slid.png"></button>'
    /*vertical:true,
    verticalSwiping:true,
    autoplaySpeed:3000,
    autoplay:true*/
});



$('.idTop').click(function(){
       $('html, body').animate({scrollTop:10}, 'slow');
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

$('.refresh_input_cart').on("click", function(){
            $("#send_col_product_big_cart").submit();
            //console.log($('#refresh_input_cart').val());
            //location.reload();
            console.log('trali vali');
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

/*------popup_one-----*/
$('#close-windows-send').on('click',function(){
       $('.popup_one').css({'visibility':'hidden'});
});

//Send form to API
$('#send-form-for-contact').on('click',function(){

          $.ajax({
               url: 'index.php?route=information/contact',
               type: 'post',
               data: $(".popup_one_content :input"),
               dataType: 'json',
               beforeSend: function() {

                   $("#send-form-for-contact").button('loading');

               },
               complete: function() {

                   $("#send-form-for-contact").button('reset');

               },
              success: function(json) {
                         if (json['error']) {
                           // alert(json['error']);
                           // alert(json['error']['name']);
                            $('#input_error_name_footer').html(json['error']['name']);
                            $('#input_error_tel_footer').html(json['error']['email']);

                            $('#name').parent().addClass('has-error');
                            $('#phone').parent().addClass('has-error');

                         }
                         if (json['success'] == 1) {
                            //alert('Success');
                            $('.popup_one').css({'visibility':'hidden'});
                            console.log("hidden ok");
                         }
              }
    });
});

$("#phone").mask("+38(999) 999-9999");

/*------END_popup_one-----*/

/*------popup_two-----*/
$('#close-windows-send_checkout').on('click',function(){
       $('.popup_two').css({'visibility':'hidden'});
});
/*
$('#send-form-for-contact').on('click',function(){
       $('.popup_two').css({'visibility':'hidden'});
});*/


$('#click_footer').on('click',function(){

        $('.popup_one').css({'visibility':'visible'});

});
/*------END_popup_two-----*/

/*
//-----Border_volume-----------

var click = 1;

function Click(){
    if(click){
        $('.img-thumbnail').css({"border": "3px solid white"});
        $(this).css({"border": "3px solid rgb(201,230,238)"});
        click = 1;
    }
    else{
        $(this).css({"border": "3px solid white"});
        click = 0;
    }
};


$('.img-thumbnail').on("click", Click);

//-----END_Border_volume-------
*/

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



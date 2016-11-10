<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
     <h1 class="checkout_h1"><?php echo $heading_title; ?></h1>
     <div id = "loggin-by-social-network" style ="display: none"><h5>Войти через:</h5><div id ="show-social-login"><?php echo $content_top; ?></div></div>
     <div class ="col-sx-6 col-lg-6">
        <div id ="for-customer-type" style ="display: none">
          <div id ="container-new-customer" class="col-sx-6">
            <ul class="nav nav-tabs product_nav-tabs show-new-customer">
                <h1 class="checkout_login_h1">Получатель заказа</h1>
                <li class="active product_nav-tabs_one checkout_nav-tabs_one" id ="show-new-customer"><a href="#new-customer" data-toggle="tab">Я новый покупатель</a></li>
                <li class="product_nav-tabs_one checkout_nav-tabs_one" id ="show-old-customer"><a href="#old-customer" data-toggle="tab">Я постоянный клиент</a></li>
                <li class="product_nav-tabs_one checkout_nav-tabs_one" id ="show-easy-customer"><a href="#easy-customer" data-toggle="tab">Быстрый заказ</a></li>
            </ul>
          <div class="tab-content product_tab-content checkout_tab-content">
              <div class="tab-pane active" id="new-customer">
                  <div class="form-group required">
                      <label class="col-sm-2 control-label" for="input-firstname"><span data-toggle="tooltip" title="Имя и фамилия">Имя и фамилия</span></label>
                      <div class="col-sm-12 checkout_login_input">
                          <input type="text" name="firstname" value="" placeholder="Иван Иванов " id="input-firstname" class="form-control" />
                          <span id="input_error_name"></span>
                      </div>

                  </div>
                  <div class="form-group required">
                      <label class="col-sm-2 control-label" for="input-email"><span data-toggle="tooltip" title="Эл.почта">Эл.почта</span></label>
                      <div class="col-sm-12 checkout_login_input">
                          <input type="text" name="email" value="" placeholder="bioshop@ua.com" id="input-email" class="form-control" />
                      </div>
                  </div>
                  <div class="form-group required">
                      <label class="col-sm-2 control-label" for="input-telephone"><span data-toggle="tooltip" title="Телефон">Телефон</span></label>
                      <div class="col-sm-12 checkout_login_input">
                          <input type="text" name="telephone" value="" placeholder="067-123-4567" id="phone" class="form-control" />
                      </div>
                  </div>
                  <div class="form-group required">
                      <label class="col-sm-2 control-label" for="input-city"><span data-toggle="tooltip" title="Город">Город</span></label>
                      <div class="col-sm-12 checkout_login_input">
                          <input type="text" name="city" value="" placeholder="Киев" id="input-phone" class="form-control" />
                      </div>
                  </div>
                  <div class="form-group required">
                      <label class="col-sm-2 control-label" for="input-address_1"><span data-toggle="tooltip" title="Адрес">Адрес</span></label>
                      <div class="col-sm-12 checkout_login_input">
                          <input type="text" name="address_1" value="" placeholder="Улица, дом, квартира" id="input-phone" class="form-control" />
                      </div>
                  </div>
                  <div class="form-group">
                      <label class="col-sm-2 control-label" for="input-comment"><span data-toggle="tooltip" title="Комментарий">Комментарий</span></label>
                      <div class="col-sm-12 checkout_login_input">
                          <textarea name="" id="" cols="90" rows="5">

                          </textarea>
                      </div>
                  </div>
                  <div class="form-group required">
                      <label class="col-sm-2 control-label" for="input-password"><span data-toggle="tooltip" title="Пароль">Пароль</span></label>
                      <div class="col-sm-12 checkout_login_input">
                          <input type="password" name="password" value="" placeholder="" id="input-email" class="form-control" />
                      </div>
                  </div>
                  <div class="form-group required">
                      <label class="col-sm-2 control-label" for="input-confirm"><span data-toggle="tooltip" title="Подтвердить пароль">Подтвердить пароль</span></label>
                      <div class="col-sm-12 checkout_login_input">
                          <input type="password" name="confirm" value="" placeholder="" id="input-email" class="form-control" />
                      </div>
                  </div>
                  <div class ="row">
                         <button type="button" style ="margin-top: 20px !important; margin-left: 25px !important" id="button-register" data-loading-text="Загрузка" class="button_red_input">Регистрация</button>
                  </div>
                  <div id ="register-done"></div>
              </div>
              <div class="tab-pane" id="old-customer">
                 <div class="form-group">
                      <label class="col-sm-2 control-label" for="input-email"><span data-toggle="tooltip" title="Эл.почта">Эл.почта</span></label>
                      <div class="col-sm-10">
                          <input type="text" name="email" value="" placeholder="" id="input-email" class="form-control" />
                      </div>
                  </div>
                  <div class="form-group">
                      <label class="col-sm-2 control-label" for="input-password"><span data-toggle="tooltip" title="Пароль">Пароль</span></label>
                      <div class="col-sm-10">
                          <input type="password" name="password" value="" placeholder="" id="input-phone" class="form-control" />
                      </div>
                  </div>
                  <div class="form-group">
                      <div class="col-sm-10" style ="margin-top: 20px !important;">
                         <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>
                      </div>
                  </div>
                  <div class ="row" >
                         <button type="button" style ="margin-top: 40px !important; margin-left: 25px !important" id="button-login" data-loading-text="Загрузка" class="button_red_input">Войти</button>
                     </div>
              </div>
              <div class="tab-pane" id="easy-customer">
                 <div class="form-group">
                      <label class="col-sm-2 control-label" for="input-email"><span data-toggle="tooltip" title="Эл.почта">Эл.почта</span></label>
                      <div class="col-sm-10">
                          <input type="text" name="email" value="" placeholder="" id="input-email" class="form-control" />
                      </div>
                  </div>
                  <div class="form-group">
                      <label class="col-sm-2 control-label" for="input-password"><span data-toggle="tooltip" title="Пароль">Пароль</span></label>
                      <div class="col-sm-10">
                          <input type="password" name="password" value="" placeholder="" id="input-phone" class="form-control" />
                      </div>
                  </div>
                  <div class="form-group">
                      <label class="col-sm-2 control-label" for="input-phone"><span data-toggle="tooltip" title="Телефон">Телефон</span></label>
                      <div class="col-sm-10">
                          <input type="text" name="phone" value="" placeholder="" id="phone" class="form-control" />
                      </div>
                  </div>
                  <div class ="row" >
                        <button type="button" style ="margin-top: 40px !important; margin-left: 290px !important" id="button-forbid-easy-buy" data-loading-text="Загрузка" class="button_red_input">Оформить заказ</button>
                 </div>
              </div>
          </div>
       </div>
      </div>
      <div id ="for-payment-address" style ="display: none"></div>
      <div id ="for-shipping-method" style ="display: none">
          <h1 class="checkout_login_h1">Доставка</h1>
          <p class="control-label ">Способ доставки</p>
           <div class="form-group">
               <div class="col-sm-12 checkout_address_deliveri">
                   <input type="text" name="shipping_method" value="" placeholder="" class="form-control" />
               </div>
           </div>
      </div>
      <div id ="for-shipping-address" style ="display: none">
          <p class="control-label">Адрес доставки</p>
          <div class="form-group">
               <div class="col-sm-12 checkout_address_deliveri">
                   <input type="text" name="address_2" value="" placeholder="" id="input-address_2" class="form-control " />
                   <span id="input_error_address_2"></span>
               </div>
          </div>
      </div>
      <div id ="for-payment-method" style ="display: none">
         <h1 class="checkout_login_h1">Оплата</h1>
         <p class="control-label">Способ оплаты</p>
         <div class="form-group">
            <div class="col-sm-12 checkout_address_deliveri">
                <input type="text" name="payment_method" value="" placeholder=""  class="form-control" />
            </div>
         </div>
      </div>
      <div id ="for-confirm-button" style ="display: none">
           <div class ="row" >
                <button type="button" style ="margin-top: 40px !important; margin-left: 20px !important"  id = "button-forbid-buy" data-loading-text="Загрузка" class="button_red_input">Оформить заказ</button>
           </div>
      </div>
    </div>
    <div class ="col-sm-6">
         <div class ="for-customer-cart"></div>
     </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<div class="popup_two">
    <div class="popup_two_content">
        <button type="button" style="margin-right: 10px !important; margin-top: 0px;" class="close" id ="close-windows-send_checkout" >&times;</button>
        <p>Вы должны войти или зарегистрироваться!</p>
    </div>
</div>
<script type="text/javascript"><!--
 $(function(){

     showcart.MainCase(0);

   <?php if ($voucher) { ?>

      checkout.data.voucher = true;

   <?php } else { ?>

      checkout.data.voucher = false;

   <?php } ?>

    //Is user login?
    <?php if (!$logged) { ?>                      //No

          checkout.MainCase(0);
          checkout.data.redirect = true;
          checkout.data.logged = false;

    <?php } else { ?>                             //Yes

          checkout.data.redirect = false;
          checkout.data.logged = true;
          checkout.MainCase(1);
          checkout.MainCase(5);

    <?php } ?>

});

//Cart object
var showcart = {

    data: {
            SwitchState: 0,
            redirect: null,
            error: null,
            progress: null,
            path: null,
            url: null,
            coupon: null,
            voucher: null,
            value: null,
            json: null

    },

    MainCase:function(step) {

      var step;

      switch (step) {

             //Start load html
             case 0:
                     showcart.startLoad();
             break;

             //Hook event after load
             case 1:
                     showcart.pushButtonCoupon();
                     showcart.edit();
             break;

             //Was changed shipping method
             case 2:
                     showcart.changeShippingMethod();
             break;

             //Send request to voucher API
             case 3:

                     showcart.voucher();

             break;

             //Send request to coupon API
             case 4:
                     showcart.coupon();

             break;

             //Update small cart
             case 5:
                     showcart.pushButtonCoupon();
                     showcart.smallCartUpdate();
                     showcart.edit();

             break;

             //Update small cart icon
             case 6:
                     showcart.iconCartUpdate();

             break;

             default:

             break;

      }



    },

    iconCartUpdate: function() {

       $('#cart > button').html('<span id="cart-total" class="cart_small_js"><i><img src="catalog/view/theme/bioshop-prime/image/basket_bg.png" alt=""></i><div class="header_pay_circle header_pay_circle_js"><span >' + showcart.data.json.quantity + '</span></div>' + '<p class="wert">' +showcart.data.json.total+ '<span class="wert">' + '</span>');
       $('#cart > ul').load('index.php?route=common/cart/info ul li');
    },

    smallCartUpdate: function() {

            showcart.data.url = 'index.php?route=checkout/checkout_cart/info';
            showcart.data.id = null;
            showcart.data.value = { "info" : "info" };;
            showcart.data.progress = null;
            showcart.data.redirect = false;
            showcart.ajaxJson(showcart.data.url, showcart.data.value, 6, showcart.data.id, showcart.data.progress);



    },

    showError: function(id, errors){
        if(id == ".checkout_cart_input_cupon"){
          $('.input_error_cupon').html(errors);
          $(id).addClass('has-error');
        }else{
          $('.input_error_sertificat').html(errors);
          $(id).addClass('has-error');
        }





    },

    startLoad: function() {

         showcart.data.url = 'index.php?route=checkout/checkout_cart';
         showcart.data.id = '.for-customer-cart';
         showcart.ajaxHtml(showcart.data.url, 1, showcart.data.id);
    },


    changeShippingMethod: function() {

            showcart.data.url = 'index.php?route=checkout/checkout_cart';
            showcart.data.id = '.for-customer-cart';
            showcart.data.value = { "shipping_method" : checkout.data.shipping_method };
            showcart.data.progress = null;
            showcart.ajaxChange(showcart.data.url, showcart.data.value, 1, showcart.data.id, showcart.data.progress);

    },

    coupon: function() {

            showcart.data.url = 'index.php?route=total/coupon/coupon';
            showcart.data.id = '.checkout_cart_input_cupon';
            showcart.data.value = { 'coupon': showcart.data.coupon };
            showcart.data.progress = null;
            showcart.data.redirect = false;
            showcart.ajaxJson(showcart.data.url, showcart.data.value, null, showcart.data.id, showcart.data.progress);


    },

    voucher: function() {

            showcart.data.url = 'index.php?route=total/voucher/voucher';
            showcart.data.id = '.checkout_cart_input_sertificat';
            showcart.data.value = { 'voucher': showcart.data.voucher };
            showcart.data.progress = null;
            showcart.data.redirect = false;
            showcart.ajaxJson(showcart.data.url, showcart.data.value, null, showcart.data.id, showcart.data.progress);



    },

    pushButtonCoupon: function() {

        $('.checkout_cart_input_submit').on('click', function() {

            showcart.data.voucher = $('input[name=\'voucher\']').val();

            showcart.data.coupon = $('input[name=\'coupon\']').val();

            showcart.data.error = null;

            if (showcart.data.voucher) {

                showcart.MainCase(3);

                if(showcart.data.error === null) {

                    showcart.MainCase(2);
                }

            } else if (showcart.data.coupon) {
                //console.log(json['error']);
                //$('.input_error_cupon').html(error);
                showcart.MainCase(4);

                if(showcart.data.error === null) {

                    showcart.MainCase(2);
                }


            } else if (showcart.data.coupon && showcart.data.voucher) {

                showcart.MainCase(3);

                if(showcart.data.error === null) {

                    showcart.MainCase(4);

                    if(showcart.data.error === null) {

                        showcart.MainCase(2);
                    }


                }


            }

        });

    },

    edit: function() {

        $('.you_order_form-control').on('click', function() {



            var elem = document.getElementsByClassName("you_order_form-control");
        
            var quantity = { };
            
            for (var i = 0; i < elem.length; ++i) {

                      quantity[elem[i].name] = elem[i].value;
            }

            var shipping_method = $('#select-shipping-method :selected').val();


            showcart.data.url = 'index.php?route=checkout/checkout_cart/edit';
            showcart.data.id = '.for-customer-cart';
            showcart.data.value = { 'quantity' : quantity, 'shipping_method': shipping_method };
            showcart.data.progress = null;
            showcart.data.redirect = false;
            showcart.ajaxChange(showcart.data.url, showcart.data.value, 5, showcart.data.id, showcart.data.progress, showcart.data.redirect);



        });

    },

    remove: function(product_id) {

            var shipping_method = $('#select-shipping-method :selected').val();

            showcart.data.url = 'index.php?route=checkout/checkout_cart/remove';
            showcart.data.id = '.for-customer-cart';
            showcart.data.value = { key: product_id, shipping_method: shipping_method };
            showcart.data.progress = null;
            showcart.data.redirect = false;
            showcart.ajaxChange(showcart.data.url, showcart.data.value, 5, showcart.data.id, showcart.data.progress, showcart.data.redirect);

    },

    showHtml: function(id, html) {

          $(id).html(html);
    },

    ajaxChange: function(url, data, callback, id, progress, redirect) {

      var url, data, callback, id, progress, redirect;

          $.ajax({
               url: url,
               type: 'post',
               async: false,
               data: data,
               dataType: 'html',
               beforeSend: function() {

                      if(progress !== null) {
                         $(progress).button('loading');
                      }

               },
               complete: function() {
                   if(progress !== null) {
                      $(progress).button('reset');
                   }
               },
              success: function(json) {


                        if(id !== null) {

                            showcart.showHtml(id, json);
                         }

                         if(json !== undefined) {

                             if (callback !== null) {
                                showcart.MainCase(callback);

                             }
                         }


                        if (json['redirect'] && redirect) {
                           showcart.data.path = json['redirect'];
                           showcart.redirect();

                        }



              }
    });

  },

  ajaxHtml: function(url, callback, id) {

      var url, callback, id;

     $.ajax({
           url: url,
           dataType: 'html',
           async: false,
           success: function(html) {

                         if(id !== null) {

                            showcart.showHtml(id, html);
                         }

                         if(html !== undefined) {

                             if (callback !== null) {
                                showcart.MainCase(callback);
                             }
                         }
           }
    });
  },

    ajaxJson: function(url, data, callback, id, progress, redirect) {

      var url, data, callback, id, progress, redirect;

          $.ajax({
               url: url,
               type: 'post',
               async: false,
               data: data,
               dataType: 'json',
               beforeSend: function() {

                      if(progress !== null) {
                         $(progress).button('loading');
                      }

               },
               complete: function() {
                   if(progress !== null) {
                      $(progress).button('reset');
                   }
               },
              success: function(json) {

                         if (json['error']) {

                             showcart.data.error = json['error'];

                             showcart.showError(id, showcart.data.error);


                         } else {

                             if (callback !== null) {

                                if(json !== undefined) {

                                  showcart.data.json = json;
                                }

                                showcart.MainCase(callback);
                             }
                         }

                        if (json['redirect'] && redirect) {
                           showcart.data.path = json['redirect'];
                           showcart.redirect();
                        }



              }
       });
  }

};

//Checkout object
var checkout = {

        //Common variables
	data:{
	      SwitchState: 0,
	      url: 0,
              value: null,
              id: null,
              progress: null,
              redirect: null,
              path: null,
              error: null,
              shipping_address: null,
              shipping_method: null,
              payment_method: null,
              voucher: null,
              logged: 0
	},

   //It is main execute switch

   MainCase:function(step) {

      var step;

      switch (step) {

            //User is not logged
	     case 0:
                    checkout.showAllField();
                    checkout.hiddenField();
                    checkout.login();

	     break;

             //User is logged
	     case 1:
                    checkout.showField();
                    checkout.hiddenField();
                    checkout.createConfirmButton();
		    checkout.payment();
	     break;


	     case 2:

                   checkout.hiddenField();
                   checkout.MainCase(3);

	     break;

             //Hook event on buttons "Login" and "Register"
	     case 3:

		   checkout.loginSave();
                   checkout.registerSave();
                   checkout.MainCase(5);

	     break;

             //Save data for payment address
             case 4:

                    checkout.paymentSave();
                    checkout.confirmCustomer();


	     break;

             //Load shipping method
             case 5:

                   checkout.shippingMethod();

	     break;

             //Load shipping address
             case 6:

                   checkout.shippingAddress();

             break;

             //Load payment method
             case 7:

                    checkout.paymentMethod();

             break;


             //Hook action after change field
             case 8:
                    if (checkout.data.logged) {


                        checkout.changeShippingMethod();
                    } else {

                        checkout.showSocialLogin();
                    }

                    checkout.confirmEasyCustomer();
                    checkout.forbiddenBuy();

             break;

             //Confirm buy button is pushed
             case 9:

                    checkout.shippingAddressSave();

             break;

             case 10:

                    checkout.shippingMethodSave();

             break;

             case 11:

                    checkout.paymentMethodSave();

             break;

            case 12:

                   checkout.confirmBuy();

            break;


            //Wait for shipping
            case 13:

                  //alert('Please wait');

            break;

            //Guest shipping start
            case 14:

                  checkout.guestSave();

            break;

            //Guest confirm
            case 15:

                  checkout.guestConfirm();

            break;

            //Guest success
            case 16:

                  checkout.guestSuccess();

            break;

             default: break;

      }
  },

  showSocialLogin: function() {

      $('#loggin-by-social-network').show();

  },

  guestSave: function() {

         checkout.data.url = 'index.php?route=checkout/guest/save';
         checkout.data.id = '#easy-customer';
         checkout.data.value = $('#easy-customer :input');
         checkout.data.redirect = true;
         checkout.data.progress = null;
         checkout.ajaxJson(checkout.data.url, checkout.data.value, 15, checkout.data.id, checkout.data.progress, checkout.data.redirect);


  },

  guestConfirm: function() {

         checkout.data.url = 'index.php?route=checkout/confirm_guest';
         checkout.data.id = null;
         checkout.data.value = null;
         checkout.data.redirect = true;
         checkout.data.progress = null;
         checkout.ajaxJson(checkout.data.url, checkout.data.value, 16, checkout.data.id, checkout.data.progress, checkout.data.redirect);


  },

  guestSuccess: function() {

        window.location.href = 'index.php?route=checkout/success_guest';

  },


  savePaymentMethodFirst: function () {

      checkout.data.url = 'index.php?route=checkout/payment_method/save';
      checkout.data.id = '#select-payment-method';
      checkout.data.value = { "payment_method": checkout.data.payment_method };
      checkout.data.redirect = true;
      checkout.data.progress = null;
      checkout.ajaxJson(checkout.data.url, checkout.data.value, 8, checkout.data.id, checkout.data.progress, checkout.data.redirect);


  },

  createConfirmButton: function() {

      var html = '';
      html += '<div class ="row" >';
      html +=    '<button type="button" style ="margin-top: 40px !important; margin-left: 260px !important"  id = "button-confirm" data-loading-text="Загрузка" class="button_red_input">Оформить заказ</button>';
      html += '</div>';
      var id = '#for-confirm-button';
      checkout.showHtml(id, html);

  },

  collectData: function() {

      checkout.data.shipping_address = $('#shipping-address-input :input');
      checkout.data.shipping_method = $('#select-shipping-method :selected').val();
      checkout.data.payment_method = $('#select-payment-method :selected').val();
  },

  forbiddenBuy: function() {

      $('#button-forbid-buy').on('click', function(){
          $('.popup_two').css({'visibility':'visible'});
     });
  },


  confirmCustomer: function() {
      $('#button-confirm').on('click', function(){

          if (checkout.data.voucher) {

              checkout.collectData();
              checkout.MainCase(11);

          } else {

             checkout.collectData();
             checkout.MainCase(9);
          }


      });

  },

  shippingAddressSave: function() {

      checkout.data.url = 'index.php?route=checkout/shipping_address/save';
      checkout.data.id = '#select-shipping-address';
      checkout.data.value = checkout.data.shipping_address;
      checkout.data.redirect = true;
      checkout.data.progress = null;
      checkout.ajaxJson(checkout.data.url, checkout.data.value, 10, checkout.data.id, checkout.data.progress, checkout.data.redirect);

  },

  shippingMethodSave: function() {

      checkout.data.url = 'index.php?route=checkout/shipping_method/save';
      checkout.data.id = '#select-shipping-method';
      checkout.data.value = { "shipping_method": checkout.data.shipping_method };
      checkout.data.redirect = true;
      checkout.data.progress = null;
      checkout.ajaxJson(checkout.data.url, checkout.data.value, 11, checkout.data.id, checkout.data.progress, checkout.data.redirect);
  },

  paymentMethodSave: function() {

      checkout.data.url = 'index.php?route=checkout/payment_method/save';
      checkout.data.id = '#select-payment-method';
      checkout.data.value = { "payment_method": checkout.data.payment_method};
      checkout.data.redirect = true;
      checkout.data.progress = null;
      checkout.ajaxJson(checkout.data.url, checkout.data.value, 12, checkout.data.id, checkout.data.progress, checkout.data.redirect);
  },


  confirmEasyCustomer: function() {

      $('#button-confirm-easy-buy').on('click', function() {

            checkout.MainCase(14);

      });
  },

  redirect: function() {

      location = checkout.data.path;
  },

  login: function() {

       checkout.data.url = 'index.php?route=checkout/login';
       checkout.data.id = '#for-customer-type';
       checkout.ajaxHtml(checkout.data.url, 2, checkout.data.id);


  },

  payment: function() {

       checkout.data.url = 'index.php?route=checkout/payment_address';
       checkout.data.id = '#for-payment-address';
       checkout.ajaxHtml(checkout.data.url, 4, checkout.data.id);

  },

  paymentSave: function() {

            checkout.data.url = 'index.php?route=checkout/payment_address/save';
            checkout.data.id = null;
            checkout.data.value = $('#payment-address-input :input');
            checkout.data.progress = null;
            checkout.ajaxJson(checkout.data.url, checkout.data.value, null, checkout.data.id, checkout.data.progress, checkout.data.redirect);

  },

  loginSave: function() {

        $('#button-login').on('click', function() {

            checkout.data.url = 'index.php?route=checkout/login/save';
            checkout.data.id = '#old-customer';
            checkout.data.value = $('#old-customer :input');
            checkout.data.progress = '#button-login';
            checkout.ajaxJson(checkout.data.url, checkout.data.value, 1, checkout.data.id, checkout.data.progress, checkout.data.redirect);
        });

  },

  registerSave: function() {

        $('#button-register').on('click', function() {

            checkout.data.url = 'index.php?route=checkout/register/save';
            checkout.data.id = '#new-customer';
            checkout.data.value = $('#new-customer :input');
            checkout.data.progress = '#button-register';
            checkout.ajaxJson(checkout.data.url, checkout.data.value, 1, checkout.data.id, checkout.data.progress);

        });

  },

  //Load all existing shipping method
  shippingMethod: function() {

       checkout.data.url = 'index.php?route=checkout/shipping_method';
       checkout.data.id = '#for-shipping-method';
       checkout.ajaxHtml(checkout.data.url, 6, checkout.data.id);
  },

  //Load all existing address for chose shipping method
  shippingAddress: function() {

       checkout.data.url = 'index.php?route=checkout/shipping_address';
       checkout.data.id = '#for-shipping-address';
       checkout.ajaxHtml(checkout.data.url, 7, checkout.data.id);
  },

  //Load all existing payment method
  paymentMethod: function() {

       checkout.data.url = 'index.php?route=checkout/payment_method';
       checkout.data.id = '#for-payment-method';
       checkout.ajaxHtml(checkout.data.url, 8, checkout.data.id);
  },


  //Field shipping method has changed
  changeShippingMethod: function() {

      $('#for-shipping-method').on('change', function() {

            checkout.collectData();

            var value = checkout.data.shipping_method;

            value = value.substr(0, value.indexOf('.') === -1 ? value.length : value.indexOf('.'));

            showcart.MainCase(2);
            checkout.data.url = 'index.php?route=checkout/shipping_address/change';
            checkout.data.id = '#for-shipping-address';
            checkout.data.value = { "shipping_method" : value };
            checkout.data.progress = null;
            checkout.ajaxChange(checkout.data.url, checkout.data.value, null, checkout.data.id, checkout.data.progress);

     });
  },


  confirmBuy: function() {

       checkout.data.url = 'index.php?route=checkout/confirm/index';;
       checkout.data.id = '#for-confirm-button';
       checkout.ajaxHtml(checkout.data.url, 13, checkout.data.id);
  },


  showAllField: function() {

          $('#for-shipping-method').show();
          $('#for-shipping-address').show();
          $('#for-payment-method').show();
          $('#for-confirm-button').show();
          $('#for-customer-type').show();


  },

  showField: function() {

          $('#for-shipping-method').show();
          $('#for-shipping-address').show();
          $('#for-confirm-button').show();
          $('#for-payment-method').show();

  },

  hiddenField: function() {

      $('#show-new-customer').on('click', function() {

          $('#for-shipping-method').show();
          $('#for-shipping-address').show();
          $('#for-payment-method').show();
          $('#for-confirm-button').show();

      });

      $('#show-old-customer').on('click', function() {

          $('#for-shipping-method').show();
          $('#for-shipping-address').show();
          $('#for-payment-method').show();
          $('#for-confirm-button').show();

      });

      $('#show-easy-customer').on('click', function() {

          $('#for-shipping-method').hide();
          $('#for-shipping-address').hide();
          $('#for-payment-method').hide();
          $('#for-confirm-button').hide();

      });

  },

  showError: function(id, error) {

      $('input[name=\'email\']',id).parent().addClass('has-error');
      $('input[name=\'firstname\']',id).parent().addClass('has-error');
      $('input[name=\'telephone\']',id).parent().addClass('has-error');
      $('input[name=\'phone\']',id).parent().addClass('has-error');
      $('input[name=\'city\']',id).parent().addClass('has-error');
      $('input[name=\'address_1\']',id).parent().addClass('has-error');
      $('input[name=\'password\']',id).parent().addClass('has-error');


      $('#input_error_name').html(error.firstname);
      $('#input_error_email').html(error.email);
      $('#input_error_tel').html(error.telephone);
      $('#input_error_city').html(error.city);
      $('#input_error_address_1').html(error.address_1);
      $('#input_error_password').html(error.password);

      $('.input_error_email').html(error.email);
      $('.input_error_password').html(error.password);
      $('.input_error_tel').html(error.phone);

      $('.input_error_email_two').html(error.email);
      $('.input_error_pass_two').html(error.password);

      $('#input_error_address_2').html(error.address_2);
      //$('.viber',id).parent().addClass('has-error');
      //$('#select-shipping-address',id).addClass("viber");
      $('.viber').css({"border":"1px solid #A94442"});







      },

  showHtml: function(id, html) {

      $(id).html(html);

  },

    ajaxChange: function(url, data, callback, id, progress, redirect) {

      var url, data, callback, id, progress, redirect;

          $.ajax({
               url: url,
               type: 'post',
               data: data,
               dataType: 'html',
               beforeSend: function() {

                      if(progress !== null) {
                         $(progress).button('loading');
                      }

               },
               complete: function() {
                   if(progress !== null) {
                      $(progress).button('reset');
                   }
               },
              success: function(json) {


                        if(id !== null) {

                            checkout.showHtml(id, json);
                         }

                         if(json !== undefined) {

                             if (callback !== null) {
                                checkout.MainCase(callback);
                             }
                         }


                        if (json['redirect'] && redirect) {
                           checkout.data.path = json['redirect'];
                           checkout.redirect();
                        }



              }
    });

  },

  ajaxHtml: function(url, callback, id) {

      var url, callback, id;

     $.ajax({
           url: url,
           dataType: 'html',
           success: function(html) {

                         if(id !== null) {

                            checkout.showHtml(id, html);
                         }

                         if(html !== undefined) {

                             if (callback !== null) {
                                checkout.MainCase(callback);
                             }
                         }
           }
    });
  },

    ajaxJson: function(url, data, callback, id, progress, redirect) {

      var url, data, callback, id, progress, redirect;

          $.ajax({
               url: url,
               type: 'post',
               data: data,
               dataType: 'json',
               beforeSend: function() {

                      if(progress !== null) {
                         $(progress).button('loading');
                      }

               },
               complete: function() {
                   if(progress !== null) {
                      $(progress).button('reset');
                   }
               },
              success: function(json) {

                         if (json['error']) {

                             checkout.data.error = json['error'];

                             checkout.showError(id, checkout.data.error);

                         } else {
                             if (callback !== null) {
                                checkout.MainCase(callback);
                             }
                         }
                        if (json['redirect'] && redirect) {
                           checkout.data.path = json['redirect'];
                           checkout.redirect();
                        }



              }
    });
  }
};
//--></script>
<?php echo $footer; ?>
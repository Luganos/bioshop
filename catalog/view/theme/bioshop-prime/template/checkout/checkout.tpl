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
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
     <h1 class="checkout_h1"><?php echo $heading_title; ?></h1>
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
                          <input type="text" name="phone" value="" placeholder="" id="input-phone" class="form-control" />
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
                   <input type="text" name="address_2" value="" placeholder="" id="input-address_2" class="form-control" />
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
                <button type="button" style ="margin-top: 40px !important; margin-left: 390px !important"  id = "button-forbid-buy" data-loading-text="Загрузка" class="button_red_input">Оформить заказ</button>
           </div>
      </div>
    </div>
    <div class ="col-sm-4">
         <div class ="for-customer-cart"></div>
     </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<script type="text/javascript"><!--
 $(function(){

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

//Main object
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

                  alert('Please wait');

            break;
           
            //Wait for guest shipping
            /*case 14:
            
                  alert('Please wait');
            
            break;*/
            
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

  
  guestSave: function() {
      
         checkout.data.url = 'index.php?route=checkout/guest_1/save';
         checkout.data.id = '#easy-customer';
         checkout.data.value = $('#easy-customer :input');
         checkout.data.redirect = true;
         checkout.data.progress = null;
         checkout.ajaxJson(checkout.data.url, checkout.data.value, 15, checkout.data.id, checkout.data.progress, checkout.data.redirect);
      
      
  },
  
  guestConfirm: function() {
      
         checkout.data.url = 'index.php?route=checkout/confirm_guest_1';
         checkout.data.id = null;
         checkout.data.value = null;
         checkout.data.redirect = true;
         checkout.data.progress = null;
         checkout.ajaxJson(checkout.data.url, checkout.data.value, 16, checkout.data.id, checkout.data.progress, checkout.data.redirect);
      
      
  },
  
  guestSuccess: function() {
      
        window.location.href = 'index.php?route=checkout/success_guest_1';

  },
  

  savePaymentMethodFirst: function () {

      checkout.data.url = 'index.php?route=checkout/payment_method_1/save';
      checkout.data.id = '#select-payment-method';
      checkout.data.value = { "payment_method": checkout.data.payment_method };
      checkout.data.redirect = true;
      checkout.data.progress = null;
      checkout.ajaxJson(checkout.data.url, checkout.data.value, 8, checkout.data.id, checkout.data.progress, checkout.data.redirect);


  },

  createConfirmButton: function() {

      var html = '';
      html += '<div class ="row" >';
      html +=    '<button type="button" style ="margin-top: 40px !important; margin-left: 390px !important"  id = "button-confirm" data-loading-text="Загрузка" class="button_red_input">Оформить заказ</button>';
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

          alert('You must log in or register before');

     });
  },


  confirmCustomer: function() {
      $('#button-confirm').on('click', function(){

           checkout.collectData();
           checkout.MainCase(9);

      });

  },

  shippingAddressSave: function() {

      checkout.data.url = 'index.php?route=checkout/shipping_address_1/save';
      checkout.data.id = '#select-shipping-address';
      checkout.data.value = checkout.data.shipping_address;
      checkout.data.redirect = true;
      checkout.data.progress = null;
      checkout.ajaxJson(checkout.data.url, checkout.data.value, 10, checkout.data.id, checkout.data.progress, checkout.data.redirect);

  },

  shippingMethodSave: function() {

      checkout.data.url = 'index.php?route=checkout/shipping_method_1/save';
      checkout.data.id = '#select-shipping-method';
      checkout.data.value = { "shipping_method": checkout.data.shipping_method };
      checkout.data.redirect = true;
      checkout.data.progress = null;
      checkout.ajaxJson(checkout.data.url, checkout.data.value, 11, checkout.data.id, checkout.data.progress, checkout.data.redirect);
  },

  paymentMethodSave: function() {

      checkout.data.url = 'index.php?route=checkout/payment_method_1/save';
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

       checkout.data.url = 'index.php?route=checkout/login_1';
       checkout.data.id = '#for-customer-type';
       checkout.ajaxHtml(checkout.data.url, 2, checkout.data.id);


  },

  payment: function() {

       checkout.data.url = 'index.php?route=checkout/payment_address_1';
       checkout.data.id = '#for-payment-address';
       checkout.ajaxHtml(checkout.data.url, 4, checkout.data.id);

  },

  paymentSave: function() {

            checkout.data.url = 'index.php?route=checkout/payment_address_1/save';
            checkout.data.id = null;
            checkout.data.value = $('#payment-address-input :input');
            checkout.data.progress = null;
            checkout.ajaxJson(checkout.data.url, checkout.data.value, null, checkout.data.id, checkout.data.progress, checkout.data.redirect);

  },

  loginSave: function() {

        $('#button-login').on('click', function() {

            checkout.data.url = 'index.php?route=checkout/login_1/save';
            checkout.data.id = '#old-customer';
            checkout.data.value = $('#old-customer :input');
            checkout.data.progress = '#button-login';
            checkout.ajaxJson(checkout.data.url, checkout.data.value, 1, checkout.data.id, checkout.data.progress, checkout.data.redirect);
        });

  },

  registerSave: function() {

        $('#button-register').on('click', function() {

            checkout.data.url = 'index.php?route=checkout/register_1/save';
            checkout.data.id = '#new-customer';
            checkout.data.value = $('#new-customer :input');
            checkout.data.progress = '#button-register';
            checkout.ajaxJson(checkout.data.url, checkout.data.value, 1, checkout.data.id, checkout.data.progress);

        });

  },

  //Load all existing shipping method
  shippingMethod: function() {

       checkout.data.url = 'index.php?route=checkout/shipping_method_1';
       checkout.data.id = '#for-shipping-method';
       checkout.ajaxHtml(checkout.data.url, 6, checkout.data.id);
  },

  //Load all existing address for chose shipping method
  shippingAddress: function() {

       checkout.data.url = 'index.php?route=checkout/shipping_address_1';
       checkout.data.id = '#for-shipping-address';
       checkout.ajaxHtml(checkout.data.url, 7, checkout.data.id);
  },

  //Load all existing payment method
  paymentMethod: function() {

       checkout.data.url = 'index.php?route=checkout/payment_method_1';
       checkout.data.id = '#for-payment-method';
       checkout.ajaxHtml(checkout.data.url, 8, checkout.data.id);
  },


  //Field shipping method has changed
  changeShippingMethod: function() {

      $('#for-shipping-method').on('change', function() {

            checkout.collectData();

            var value = checkout.data.shipping_method;

            value = value.substr(0, value.indexOf('.') === -1 ? value.length : value.indexOf('.'));

            checkout.data.url = 'index.php?route=checkout/shipping_address_1/change';
            checkout.data.id = '#for-shipping-address';
            checkout.data.value = { "shipping_method" : value };
            checkout.data.progress = null;
            checkout.ajaxChange(checkout.data.url, checkout.data.value, null, checkout.data.id, checkout.data.progress);

     });
  },


  confirmBuy: function() {

       checkout.data.url = 'index.php?route=checkout/confirm_1/index';;
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
  
  showError: function() {
      
      
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



              },
              error: function(xhr, ajaxOptions, thrownError) {
                     alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);

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
           },
           error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);

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



              },
              error: function(xhr, ajaxOptions, thrownError) {
                   alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);

    }
    });

  }




};
/*$(document).on('change', 'input[name=\'account\']', function() {
	if ($('#collapse-payment-address').parent().find('.panel-heading .panel-title > *').is('a')) {
		if (this.value == 'register') {
			$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_account; ?> <i class="fa fa-caret-down"></i></a>');
		} else {
			$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_address; ?> <i class="fa fa-caret-down"></i></a>');
		}
	} else {
		if (this.value == 'register') {
			$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_account; ?>');
		} else {
			$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_address; ?>');
		}
	}
});

//Is user login?
<?php if (!$logged) { ?>                      //No
$(document).ready(function() {
    $.ajax({
        url: 'index.php?route=checkout/login',
        dataType: 'html',
        success: function(html) {
           $('#for-customer-type').html(html);

			$('#collapse-checkout-option').parent().find('.panel-heading .panel-title').html('<a href="#collapse-checkout-option" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_option; ?> <i class="fa fa-caret-down"></i></a>');

			$('a[href=\'#collapse-checkout-option\']').trigger('click');
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});
<?php } else { ?>                                        //Yes
$(document).ready(function() {
    $.ajax({
        url: 'index.php?route=checkout/payment_address',
        dataType: 'html',
        success: function(html) {
            $('#for-shipping-address').html(html);

			$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_address; ?> <i class="fa fa-caret-down"></i></a>');

			$('a[href=\'#collapse-payment-address\']').trigger('click');
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});
<?php } ?>

// Checkout
$(document).delegate('#button-account', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/' + $('input[name=\'account\']:checked').val(),
        dataType: 'html',
        beforeSend: function() {
        	$('#button-account').button('loading');
		},
        complete: function() {
			$('#button-account').button('reset');
        },
        success: function(html) {
            $('.alert, .text-danger').remove();

            $('#collapse-payment-address .panel-body').html(html);

			if ($('input[name=\'account\']:checked').val() == 'register') {
				$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_account; ?> <i class="fa fa-caret-down"></i></a>');
			} else {
				$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_address; ?> <i class="fa fa-caret-down"></i></a>');
			}

			$('a[href=\'#collapse-payment-address\']').trigger('click');
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

// Login
$(document).delegate('#button-login', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/login/save',
        type: 'post',
        data: $('#collapse-checkout-option :input'),
        dataType: 'json',
        beforeSend: function() {
        	$('#button-login').button('loading');
		},
        complete: function() {
            $('#button-login').button('reset');
        },
        success: function(json) {
            $('.alert, .text-danger').remove();
            $('.form-group').removeClass('has-error');

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#collapse-checkout-option .panel-body').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				// Highlight any found errors
				$('input[name=\'email\']').parent().addClass('has-error');
				$('input[name=\'password\']').parent().addClass('has-error');
		   }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

// Register
$(document).delegate('#button-register', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/register/save',
        type: 'post',
        data: $('#collapse-payment-address input[type=\'text\'], #collapse-payment-address input[type=\'date\'], #collapse-payment-address input[type=\'datetime-local\'], #collapse-payment-address input[type=\'time\'], #collapse-payment-address input[type=\'password\'], #collapse-payment-address input[type=\'hidden\'], #collapse-payment-address input[type=\'checkbox\']:checked, #collapse-payment-address input[type=\'radio\']:checked, #collapse-payment-address textarea, #collapse-payment-address select'),
        dataType: 'json',
        beforeSend: function() {
			$('#button-register').button('loading');
		},
        success: function(json) {
            $('.alert, .text-danger').remove();
            $('.form-group').removeClass('has-error');

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#button-register').button('reset');

                if (json['error']['warning']) {
                    $('#collapse-payment-address .panel-body').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

				for (i in json['error']) {
					var element = $('#input-payment-' + i.replace('_', '-'));

					if ($(element).parent().hasClass('input-group')) {
						$(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
					} else {
						$(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
					}
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
            } else {
                <?php if ($shipping_required) { ?>
                var shipping_address = $('#payment-address input[name=\'shipping_address\']:checked').prop('value');

                if (shipping_address) {
                    $.ajax({
                        url: 'index.php?route=checkout/shipping_method',
                        dataType: 'html',
                        success: function(html) {
							// Add the shipping address
                            $.ajax({
                                url: 'index.php?route=checkout/shipping_address',
                                dataType: 'html',
                                success: function(html) {
                                    $('#collapse-shipping-address .panel-body').html(html);

									$('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');
                                },
                                error: function(xhr, ajaxOptions, thrownError) {
                                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                }
                            });

							$('#collapse-shipping-method .panel-body').html(html);

							$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_method; ?> <i class="fa fa-caret-down"></i></a>');

   							$('a[href=\'#collapse-shipping-method\']').trigger('click');

							$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_shipping_method; ?>');
							$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
							$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                } else {
                    $.ajax({
                        url: 'index.php?route=checkout/shipping_address',
                        dataType: 'html',
                        success: function(html) {
                            $('#collapse-shipping-address .panel-body').html(html);

							$('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');

							$('a[href=\'#collapse-shipping-address\']').trigger('click');

							$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_shipping_method; ?>');
							$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
							$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                }
                <?php } else { ?>
                $.ajax({
                    url: 'index.php?route=checkout/payment_method',
                    dataType: 'html',
                    success: function(html) {
                        $('#collapse-payment-method .panel-body').html(html);

						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_method; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-payment-method\']').trigger('click');

						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
                <?php } ?>

                $.ajax({
                    url: 'index.php?route=checkout/payment_address',
                    dataType: 'html',
                    complete: function() {
                        $('#button-register').button('reset');
                    },
                    success: function(html) {
                        $('#collapse-payment-address .panel-body').html(html);

						$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_address; ?> <i class="fa fa-caret-down"></i></a>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

// Payment Address
$(document).delegate('#button-payment-address', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/payment_address/save',
        type: 'post',
        data: $('#collapse-payment-address input[type=\'text\'], #collapse-payment-address input[type=\'date\'], #collapse-payment-address input[type=\'datetime-local\'], #collapse-payment-address input[type=\'time\'], #collapse-payment-address input[type=\'password\'], #collapse-payment-address input[type=\'checkbox\']:checked, #collapse-payment-address input[type=\'radio\']:checked, #collapse-payment-address input[type=\'hidden\'], #collapse-payment-address textarea, #collapse-payment-address select'),
        dataType: 'json',
        beforeSend: function() {
        	$('#button-payment-address').button('loading');
		},
        complete: function() {
			$('#button-payment-address').button('reset');
        },
        success: function(json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                if (json['error']['warning']) {
                    $('#collapse-payment-address .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

				for (i in json['error']) {
					var element = $('#input-payment-' + i.replace('_', '-'));

					if ($(element).parent().hasClass('input-group')) {
						$(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
					} else {
						$(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
					}
				}

				// Highlight any found errors
				$('.text-danger').parent().parent().addClass('has-error');
            } else {
                <?php if ($shipping_required) { ?>
                $.ajax({
                    url: 'index.php?route=checkout/shipping_address',
                    dataType: 'html',
                    success: function(html) {
                        $('#collapse-shipping-address .panel-body').html(html);

						$('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-shipping-address\']').trigger('click');

						$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_shipping_method; ?>');
						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
                <?php } else { ?>
                $.ajax({
                    url: 'index.php?route=checkout/payment_method',
                    dataType: 'html',
                    success: function(html) {
                        $('#collapse-payment-method .panel-body').html(html);

						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_method; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-payment-method\']').trigger('click');

						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
                <?php } ?>

                $.ajax({
                    url: 'index.php?route=checkout/payment_address',
                    dataType: 'html',
                    success: function(html) {
                        $('#collapse-payment-address .panel-body').html(html);
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

// Shipping Address
$(document).delegate('#button-shipping-address', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/shipping_address/save',
        type: 'post',
        data: $('#collapse-shipping-address input[type=\'text\'], #collapse-shipping-address input[type=\'date\'], #collapse-shipping-address input[type=\'datetime-local\'], #collapse-shipping-address input[type=\'time\'], #collapse-shipping-address input[type=\'password\'], #collapse-shipping-address input[type=\'checkbox\']:checked, #collapse-shipping-address input[type=\'radio\']:checked, #collapse-shipping-address textarea, #collapse-shipping-address select'),
        dataType: 'json',
        beforeSend: function() {
			$('#button-shipping-address').button('loading');
	    },
        success: function(json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#button-shipping-address').button('reset');

                if (json['error']['warning']) {
                    $('#collapse-shipping-address .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

				for (i in json['error']) {
					var element = $('#input-shipping-' + i.replace('_', '-'));

					if ($(element).parent().hasClass('input-group')) {
						$(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
					} else {
						$(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
					}
				}

				// Highlight any found errors
				$('.text-danger').parent().parent().addClass('has-error');
            } else {
                $.ajax({
                    url: 'index.php?route=checkout/shipping_method',
                    dataType: 'html',
                    complete: function() {
                        $('#button-shipping-address').button('reset');
                    },
                    success: function(html) {
                        $('#collapse-shipping-method .panel-body').html(html);

						$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_method; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-shipping-method\']').trigger('click');

						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');

                        $.ajax({
                            url: 'index.php?route=checkout/shipping_address',
                            dataType: 'html',
                            success: function(html) {
                                $('#collapse-shipping-address .panel-body').html(html);
                            },
                            error: function(xhr, ajaxOptions, thrownError) {
                                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                            }
                        });
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });

                $.ajax({
                    url: 'index.php?route=checkout/payment_address',
                    dataType: 'html',
                    success: function(html) {
                        $('#collapse-payment-address .panel-body').html(html);
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

// Guest
$(document).delegate('#button-guest', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/guest/save',
        type: 'post',
        data: $('#collapse-payment-address input[type=\'text\'], #collapse-payment-address input[type=\'date\'], #collapse-payment-address input[type=\'datetime-local\'], #collapse-payment-address input[type=\'time\'], #collapse-payment-address input[type=\'checkbox\']:checked, #collapse-payment-address input[type=\'radio\']:checked, #collapse-payment-address input[type=\'hidden\'], #collapse-payment-address textarea, #collapse-payment-address select'),
        dataType: 'json',
        beforeSend: function() {
       		$('#button-guest').button('loading');
	    },
        success: function(json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#button-guest').button('reset');

                if (json['error']['warning']) {
                    $('#collapse-payment-address .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

				for (i in json['error']) {
					var element = $('#input-payment-' + i.replace('_', '-'));

					if ($(element).parent().hasClass('input-group')) {
						$(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
					} else {
						$(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
					}
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
            } else {
                <?php if ($shipping_required) { ?>
                var shipping_address = $('#collapse-payment-address input[name=\'shipping_address\']:checked').prop('value');

                if (shipping_address) {
                    $.ajax({
                        url: 'index.php?route=checkout/shipping_method',
                        dataType: 'html',
                        complete: function() {
                            $('#button-guest').button('reset');
                        },
                        success: function(html) {
							// Add the shipping address
                            $.ajax({
                                url: 'index.php?route=checkout/guest_shipping',
                                dataType: 'html',
                                success: function(html) {
                                    $('#collapse-shipping-address .panel-body').html(html);

									$('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');
                                },
                                error: function(xhr, ajaxOptions, thrownError) {
                                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                }
                            });

						    $('#collapse-shipping-method .panel-body').html(html);

							$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_method; ?> <i class="fa fa-caret-down"></i></a>');

							$('a[href=\'#collapse-shipping-method\']').trigger('click');

							$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
							$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                } else {
                    $.ajax({
                        url: 'index.php?route=checkout/guest_shipping',
                        dataType: 'html',
                        complete: function() {
                            $('#button-guest').button('reset');
                        },
                        success: function(html) {
                            $('#collapse-shipping-address .panel-body').html(html);

							$('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');

							$('a[href=\'#collapse-shipping-address\']').trigger('click');

							$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_shipping_method; ?>');
							$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
							$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                }
                <?php } else { ?>
                $.ajax({
                    url: 'index.php?route=checkout/payment_method',
                    dataType: 'html',
                    complete: function() {
                        $('#button-guest').button('reset');
                    },
                    success: function(html) {
                        $('#collapse-payment-method .panel-body').html(html);

						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_method; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-payment-method\']').trigger('click');

						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
                <?php } ?>
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

// Guest Shipping
$(document).delegate('#button-guest-shipping', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/guest_shipping/save',
        type: 'post',
        data: $('#collapse-shipping-address input[type=\'text\'], #collapse-shipping-address input[type=\'date\'], #collapse-shipping-address input[type=\'datetime-local\'], #collapse-shipping-address input[type=\'time\'], #collapse-shipping-address input[type=\'password\'], #collapse-shipping-address input[type=\'checkbox\']:checked, #collapse-shipping-address input[type=\'radio\']:checked, #collapse-shipping-address textarea, #collapse-shipping-address select'),
        dataType: 'json',
        beforeSend: function() {
        	$('#button-guest-shipping').button('loading');
		},
        success: function(json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#button-guest-shipping').button('reset');

                if (json['error']['warning']) {
                    $('#collapse-shipping-address .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

				for (i in json['error']) {
					var element = $('#input-shipping-' + i.replace('_', '-'));

					if ($(element).parent().hasClass('input-group')) {
						$(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
					} else {
						$(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
					}
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
            } else {
                $.ajax({
                    url: 'index.php?route=checkout/shipping_method',
                    dataType: 'html',
                    complete: function() {
                        $('#button-guest-shipping').button('reset');
                    },
                    success: function(html) {
                        $('#collapse-shipping-method .panel-body').html(html);

						$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_method; ?> <i class="fa fa-caret-down"></i>');

						$('a[href=\'#collapse-shipping-method\']').trigger('click');

						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

$(document).delegate('#button-shipping-method', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/shipping_method/save',
        type: 'post',
        data: $('#collapse-shipping-method input[type=\'radio\']:checked, #collapse-shipping-method textarea'),
        dataType: 'json',
        beforeSend: function() {
        	$('#button-shipping-method').button('loading');
		},
        success: function(json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#button-shipping-method').button('reset');

                if (json['error']['warning']) {
                    $('#collapse-shipping-method .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }
            } else {
                $.ajax({
                    url: 'index.php?route=checkout/payment_method',
                    dataType: 'html',
                    complete: function() {
                        $('#button-shipping-method').button('reset');
                    },
                    success: function(html) {
                        $('#collapse-payment-method .panel-body').html(html);

						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_method; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-payment-method\']').trigger('click');

						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

$(document).delegate('#button-payment-method', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/payment_method/save',
        type: 'post',
        data: $('#collapse-payment-method input[type=\'radio\']:checked, #collapse-payment-method input[type=\'checkbox\']:checked, #collapse-payment-method textarea'),
        dataType: 'json',
        beforeSend: function() {
         	$('#button-payment-method').button('loading');
		},
        success: function(json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                if (json['error']['warning']) {
                    $('#collapse-payment-method .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }
            } else {
                $.ajax({
                    url: 'index.php?route=checkout/confirm',
                    dataType: 'html',
                    complete: function() {
                        $('#button-payment-method').button('reset');
                    },
                    success: function(html) {
                        $('#collapse-checkout-confirm .panel-body').html(html);

						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<a href="#collapse-checkout-confirm" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_confirm; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-checkout-confirm\']').trigger('click');
					},
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});*/
//--></script>
<?php echo $footer; ?>
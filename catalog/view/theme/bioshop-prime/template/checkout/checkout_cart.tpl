<div class="container">
  <?php if ($attention) { ?>
  <div class="alert alert-info alert_shot"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="alert alert-success alert_shot hidden-xs "><i class="fa fa-check-circle"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger alert_shot"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
    <div id="content" class="col-sx-12 col-sm-12 col-lg-6 ">
      <h1 class="checkout_login_h1">Ваш заказ
      </h1>
      <form id="send_col_product_big_cart" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="table-responsive">
          <table class="table table-bordered checkout_cart_table-bordered">
            <tbody>
              <?php foreach ($products as $product) { ?>
              <div class="you_order clearfix">
                <div class="you_order_img">
                  <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
                </div>
                <div class="you_order_inform">
                  <div class="you_order_inform_descroptoin">
                    <a href="<?php echo $product['href']; ?>">
                    <?php echo mb_strimwidth(strval($product['name']), 0, 25); ?>
                    <?php if (strlen(strval($product['name'])) > 25) { ?>
                    <?php echo '...'; ?>
                    <?php } ?>
                    </a>
                  <?php if (!$product['stock']) { ?>
                  <span class="text-danger">***</span>
                  <?php } ?>
                  <?php if ($product['recurring']) { ?>
                  <span class="label label-info"><?php echo $text_recurring_item; ?></span> <small><?php echo $product['recurring']; ?></small>
                  <?php } ?>
                  </div>
                  <div class="you_order_inform_col_and_sum">
                    <div class="text-left text_left_cart_col you_order_text_left_cart_col">
                      <div class="input-group btn-block input-group_cart" style="max-width: 120px;">
                          <input type="number" autofocus name="<?php echo $product['cart_id']; ?>" value="<?php echo $product['quantity']; ?>" size="1" class="form-control you_order_form-control" />
                          <span class="you_order_price"><?php echo $product['price']; ?></span>
                          <span class="you_order_all"><?php echo $product['total']; ?></span>
                          <span class="input-group-btn">
                            <button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger cart_del you_order_cart_del" onclick="showcart.remove('<?php echo $product['cart_id']; ?>');">
                              <i class="fa fa-times-circle"></i>
                            </button>
                          </span>
                        </div>
                      </div>
                  </div>
                </div>
                <div class="clear"></div>
              </div>
              <?php } ?>
              <?php foreach ($vouchers as $vouchers) { ?>
              <tr>
                <td></td>
                <td class="text-left text_left_cupon"><?php echo $vouchers['description']; ?></td>
                <td class="text-left"></td>
                <td class="text-left"><div class="input-group btn-block input-group_cart" style="max-width: 120px;">
                    <input type="text" name="" value="1" size="1" disabled="disabled" class="form-control" />
                    <span class="input-group-btn"><button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger cart_del you_order_cart_del_two" onclick="voucher.remove('<?php echo $vouchers['key']; ?>');"><i class="fa fa-times-circle"></i></button></span></div></td>
                <td class="text-right text_right_cart text_right_cart_cupon"><?php echo $vouchers['amount']; ?></td>
                <td class="text-right text_right_cart text_right_cart_end text_right_cart_cupon"><?php echo $vouchers['amount']; ?></td>
              </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      </form>
      <?php if ($coupon || $voucher || $reward || $shipping) { ?>
      <div class="panel-group checkout_cart_panel-group" >
      <div class="checkout_cart_coupon_and_certificat">
      <form action="">
        <p>Купон</p>
        <input class="checkout_cart_input_cupon" name ="coupon" value = "<?php echo $coupon_value; ?>" type="text">
        <span class="input_error_cupon"></span>
        <br>

        <p >Подарочный сертификат</p>
        <input class="checkout_cart_input_sertificat" name = "voucher" value ="<?php echo $voucher_value; ?>" type="text">
        <span class="input_error_sertificat"></span>
        <br>
        <input class="checkout_cart_input_submit" type="button" value="Обновить"></input>
      </form>
      </div>
      <?php } ?>
      <br />
      <div class="row row_cart">
        <div class="col-lg-6 col-sm-4 cart_sum checkout_cart_cart_sum">
          <table class="table table-bordered">
            <?php foreach ($totals as $total) { ?>
            <tr class="zxc">
              <td class="text-right text-right_cart_sum checkout_cart_text-right_cart_sum long "><span><?php echo $total['title']; ?>:</span><hr></td>
              <td class="text-right text-right_cart_sum checkout_cart_text-right_cart_sum"><?php echo $total['text']; ?><hr></td>
            </tr>
            <?php } ?>
          </table>
        </div>
    </div>
   </div>
 </div>
</div>

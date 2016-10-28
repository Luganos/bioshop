<div class="container">
  <?php if ($attention) { ?>
  <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="alert alert-success hidden-xs "><i class="fa fa-check-circle"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
    <div id="content" class="col-sx-12 col-sm-12 col-lg-6 ">
      <h1 class="checkout_login_h1">Ваш заказ
      </h1>
      <form id="send_col_product_big_cart" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="table-responsive">
          <table class="table table-bordered checkout_cart_table-bordered">
            <!--<thead class="cart_table_line">
              <tr>
                <td class="text-center text_center_one">5<?php echo $column_image; ?></td>
                <td class="text-left "><?php echo $column_name; ?></td>
                <td class="text-left  "><?php echo $column_model; ?></td>
                <td class="text-left "><?php echo $column_quantity; ?></td>
                <td class="text-right text_cart_center"><?php echo $column_price; ?></td>
                <td class="text-right text_cart_center"><?php echo $column_total; ?></td>
              </tr>
            </thead>-->
            <tbody>
              <?php foreach ($products as $product) { ?>
              <div class="you_order clearfix">
                <div class="you_order_img">
                  <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
                </div>
                <div class="you_order_inform">
                  <div class="you_order_inform_descroptoin">
                    <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                  <?php if (!$product['stock']) { ?>
                  <span class="text-danger">***</span>
                  <?php } ?>
                  <?php if ($product['option']) { ?>
                  <?php foreach ($product['option'] as $option) { ?>
                  <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
                  <?php } ?>
                  <?php } ?>
                  <?php if ($product['reward']) { ?>
                  <small><?php echo $product['reward']; ?></small>
                  <?php } ?>
                  <?php if ($product['recurring']) { ?>
                  <span class="label label-info"><?php echo $text_recurring_item; ?></span> <small><?php echo $product['recurring']; ?></small>
                  <?php } ?>
                  </div>
                  <div class="you_order_inform_col_and_sum">
                    <div class="text-left text_left_cart_col you_order_text_left_cart_col">
                      <div class="input-group btn-block input-group_cart" style="max-width: 120px;">
                          <input id="refresh_input_cart" type="number" autofocus name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" class="form-control you_order_form-control" />
                          <span class="you_order_price"><?php echo $product['price']; ?></span>
                          <span class="you_order_all"><?php echo $product['total']; ?></span>
                          <span class="input-group-btn">
                            <button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger cart_del you_order_cart_del" onclick="cart.remove('<?php echo $product['cart_id']; ?>');">
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
                <td class="text-left"><?php echo $vouchers['description']; ?></td>
                <td class="text-left"></td>
                <td class="text-left"><div class="input-group btn-block" style="max-width: 200px;">
                    <input type="text" name="" value="1" size="1" disabled="disabled" class="form-control" />
                    <span class="input-group-btn"><button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger" onclick="voucher.remove('<?php echo $vouchers['key']; ?>');"><i class="fa fa-times-circle"></i></button></span></div></td>
                <td class="text-right"><?php echo $vouchers['amount']; ?>55</td>
                <td class="text-right"><?php echo $vouchers['amount']; ?></td>
              </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      </form>
      <?php if ($coupon || $voucher || $reward || $shipping) { ?>
      <div class="panel-group checkout_cart_panel-group" >
      <!--<p class="cart_p">применить промо-код</p>-->
      <div class="checkout_cart_coupon_and_certificat">
      <form action="">
        <p>Купон</p>
        <input class="checkout_cart_input_cupon" type="text">
        <br>
        <p >Подарочный сертификат</p>
        <input class="checkout_cart_input_sertificat" type="text">
        <br>
        <input class="checkout_cart_input_submit" type="submit" value="Обновить"></input>
      </form>
      </div>
      <?php } ?>
      <br />
      <div class="row row_cart">
        <div class="col-lg-6 col-sm-4 cart_sum checkout_cart_cart_sum">
       <!-- <p>общая сумма</p>-->
          <table class="table table-bordered">
            <?php foreach ($totals as $total) { ?>
            <tr class="zxc">
              <td class="text-right text-right_cart_sum checkout_cart_text-right_cart_sum long "><strong><?php echo $total['title']; ?>:</strong><hr></td>
              <td class="text-right text-right_cart_sum checkout_cart_text-right_cart_sum"><?php echo $total['text']; ?><hr></td>
            </tr>
            <?php } ?>
          </table>
        </div>
        <!--<div class="buttons">
        <div class="pull-right button"><a href="<?php echo $checkout; ?>" class=""><?php echo $button_checkout; ?></a></div>
      </div>-->
    </div>
   </div>
 </div>
</div>

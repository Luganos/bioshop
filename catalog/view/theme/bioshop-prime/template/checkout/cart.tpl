<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
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
  <div class="row content_cart"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?> content_cart"><?php echo $content_top; ?>
      <h1 class="cart_big_text_header"><?php echo $heading_title; ?>
      </h1>
      <form id="send_col_product_big_cart" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="table-responsive">
          <table class="table table-bordered">
            <thead class="cart_table_line">
              <tr>
                <td class="text-center text_center_one"><?php echo $column_image; ?></td>
                <td class="text-left "><?php echo $column_name; ?></td>
                <td class="text-left  "><?php echo $column_model; ?></td>
                <td class="text-left "><?php echo $column_quantity; ?></td>
                <td class="text-right text_cart_center"><?php echo $column_price; ?></td>
                <td class="text-right text_cart_center"><?php echo $column_total; ?></td>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($products as $product) { ?>
              <tr class="xxxx">
                <td class="text-center text_center_img"><?php if ($product['thumb']) { ?>
                  <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
                  <?php } ?></td>
                <td class="text-left text_left_text "><a href="<?php echo $product['href']; ?>">
                    <?php echo mb_strimwidth(strval($product['name']), 0, 25); ?>
                    <?php if (strlen(strval($product['name'])) > 25) { ?>
                    <?php echo '...'; ?>
                    <?php } ?>
                    </a>
                  <?php if (!$product['stock']) { ?>
                  <span class="text-danger">***</span>
                  <?php } ?>
                  <?php if ($product['option']) { ?>
                  <?php foreach ($product['option'] as $option) { ?>
                  <br />
                  <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
                  <?php } ?>
                  <?php } ?>
                  <?php if ($product['reward']) { ?>
                  <br class="br" />
                  <small><?php echo $product['reward']; ?></small>
                  <?php } ?>
                  <?php if ($product['recurring']) { ?>
                  <br />
                  <span class="label label-info"><?php echo $text_recurring_item; ?></span> <small><?php echo $product['recurring']; ?></small>
                  <?php } ?></td>
                <td class="text-left text_left_text"><?php echo $product['model']; ?></td>
                <td class="text-left text_left_cart_col"><div class="input-group btn-block input-group_cart" style="max-width: 120px;">
                    <input id="refresh_input_cart" type="number" autofocus name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" class="form-control" />
                    <span class="input-group-btn">
                    <button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger cart_del" onclick="cart.remove('<?php echo $product['cart_id']; ?>');"><i class="fa fa-times-circle"></i></button></span></div></td>
                <td class="text-right text_right_cart"><?php echo $product['price']; ?></td>
                <td class="text-right text_right_cart text_right_cart_end"><?php echo $product['total']; ?></td>
              </tr>
              <?php } ?>
              <?php foreach ($vouchers as $vouchers) { ?>
              <tr>
                <td></td>
                <td class="text-left"><?php echo $vouchers['description']; ?></td>
                <td class="text-left"></td>
                <td class="text-left text_left_cart_col"><div class="input-group btn-block" style="max-width: 120px;">
                    <input type="text" name="" value="1" size="1" disabled="disabled" class="form-control" />
                    <span class="input-group-btn">
                    <button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger cart_del" onclick="voucher.remove('<?php echo $vouchers['key']; ?>');"><i class="fa fa-times-circle"></i></button></span></div></td>
                <td class="text-right text_right_cart"><?php echo $vouchers['amount']; ?></td>
                <td class="text-right text_right_cart text_right_cart_end"><?php echo $vouchers['amount']; ?></td>
              </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      </form>
      <?php if ($coupon || $voucher || $reward || $shipping) { ?>
      <div class="panel-group" id="accordion">
      <p class="cart_p">применить промо-код</p>
      <?php echo $coupon; ?>
        <div class="pull-left button_blue"><a href="<?php echo $continue; ?>" class=""><?php echo $button_shopping; ?></a></div>
      </div>
      <?php } ?>

      <br />
      <div class="row row_cart">

        <div class="col-lg-6 col-sm-12 cart_sum">
        <p>общая сумма</p>
          <table class="table table-bordered">
            <?php foreach ($totals as $total) { ?>
            <tr>
              <td class="text-right text-right_cart_sum long "><strong><?php echo $total['title']; ?>:</strong><hr></td>
              <td class="text-right text-right_cart_sum"><?php echo $total['text']; ?><hr></td>
            </tr>
            <?php } ?>
          </table>
        </div>
        <div class="buttons">
        <div class="pull-right button"><a href="<?php echo $checkout; ?>" class=""><?php echo $button_checkout; ?></a></div>
      </div>
      </div>

      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>

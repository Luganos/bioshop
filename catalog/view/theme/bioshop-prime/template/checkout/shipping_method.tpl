<?php if ($shipping_methods) { ?>
<h1 class="checkout_login_h1">Доставка</h1>
<p class="control-label">Способ доставки</p>
<select name="shipping_method" class="form-control" id ="select-shipping-method">
<?php foreach ($shipping_methods as $shipping_method) { ?>
<p><strong><?php echo $shipping_method['title']; ?></strong></p>
<?php if (!$shipping_method['error']) { ?>
<?php foreach ($shipping_method['quote'] as $quote) { ?>
    <?php if ($quote['code'] == $code || !$code) { ?>
    <?php $code = $quote['code']; ?>
	<option value="<?php echo $quote['code']; ?>" selected><?php echo $shipping_method['title']; ?></option>
    <?php } else { ?>
    <option value="<?php echo $quote['code']; ?>"><?php echo $shipping_method['title']; ?></option>
    <?php } ?>
<?php } ?>
<?php } else { ?>
<div class="alert alert-danger"><?php echo $shipping_method['error']; ?></div>
<?php } ?>
<?php } ?>
</select>
<?php } else { ?>
<h1 class="checkout_login_h1">Доставка</h1>
<p class="control-label">Способ доставки</p>
<select name="shipping_method" class="form-control">
</select>
<?php } ?>

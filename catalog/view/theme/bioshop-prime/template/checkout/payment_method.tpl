<?php if ($error_warning) { ?>
<div class="alert alert-warning"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
<?php } ?>
<?php if ($payment_methods) { ?>
<h1 class="checkout_login_h1">Оплата</h1>
<p class="control-label">Способ оплаты</p>
<select name="payment_method" class="form-control" id ="select-payment-method">
<?php foreach ($payment_methods as $payment_method) { ?>
    <?php if ($payment_method['code'] == $code || !$code) { ?>
    <?php $code = $payment_method['code']; ?>
    <option value="<?php echo $payment_method['code']; ?>" selected><?php echo $payment_method['title']; ?></option>
    <?php } else { ?>
    <option value="<?php echo $payment_method['code']; ?>"><?php echo $payment_method['title']; ?></option>
    <?php } ?>
<?php } ?>
</select>
<?php } else { ?>
<h1 class="checkout_login_h1">Оплата</h1>
<p class="control-label">Способ оплаты</p>
<select name="payment_method" class="form-control" id ="select-payment-method">
</select>
<?php } ?>

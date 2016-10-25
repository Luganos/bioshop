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
<div class="form-group">
    <div class="col-sm-12 checkout_address_deliveri">
        <input type="text" name="payment_method" value="" placeholder=""  class="form-control" />
    </div>
</div>
<?php } ?>

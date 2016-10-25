            <p class="control-label">Адрес доставки</p>
            <div id ="shipping-address-input">
                  <input type="hidden" name="shipping_address"  value="existing" placeholder="" id="input-payment-address-payment_address" class="form-control" />
                  <input type="hidden" name="address_id"  value="<?php echo $address_id; ?>" placeholder="" id="input-payment-address-address_id" class="form-control" />
                  <?php if (empty($delivery_net)) { ?>
                  <div class="form-group">
                      <div class="col-sm-12 checkout_address_deliveri">
                          <input type="text" name="address_2" value="" placeholder="" id="select-shipping-address" class="form-control" />
                      </div>
                  </div>
                  <?php } else { ?>
                  <select name="address_2" class="form-control" id ="select-shipping-address">
                  <?php foreach ($houses as $house) { ?>
                  <option value="<?php echo $house['warehouse']; ?>"><?php echo $house['warehouse']; ?></option>
                  <?php } ?>
                  </select>
                  <?php } ?>
             </div>
            <p>Адрес доставки</p>
            <div id ="shipping-address-input"> 
                  <input type="hidden" name="firstname"  value="" placeholder="" id="input-payment-address-firstname" class="form-control" />
                  <input type="hidden" name="lastname"  value="" placeholder="" id="input-payment-address-lastname" class="form-control" />
                  <input type="hidden" name="address_1"  value="" placeholder="" id="input-payment-address-address_1" class="form-control" />
                  <input type="hidden" name="customer_group_id"  value="<?php echo $customer_group_id; ?>" placeholder="" id="input-payment-address-customer_group_id" class="form-control" /> 
                  <input type="hidden" name="country_id"  value="<?php echo $country_id; ?>" placeholder="" id="input-payment-address-country_id" class="form-control" /> 
                  <input type="hidden" name="postcode"  value="<?php echo $postcode; ?>" placeholder="" id="input-payment-address-postcode" class="form-control" /> 
                  <input type="hidden" name="zone_id"  value="<?php echo $zone_id; ?>" placeholder="" id="input-payment-address-zone_id" class="form-control" /> 
                  <input type="hidden" name="shipping_address"  value="" placeholder="" id="input-payment-address-payment_address" class="form-control" /> 
                  <input type="hidden" name="company"  value="" placeholder="" id="input-payment-address-company" class="form-control" /> 
                  <input type="hidden" name="city"  value="" placeholder="" id="input-payment-address-city" class="form-control" /> 
                  <input type="hidden" name="address_id"  value="<?php echo $address_id; ?>" placeholder="" id="input-payment-address-address_id" class="form-control" /> 
                  <?php if (empty($delivery_net)) { ?>
                  <div class="form-group">
                      <div class="col-sm-10">
                          <input type="text" name="address_2" value="" placeholder="" id="input-address_2" class="form-control" />
                      </div>
                  </div>
                  <?php } else { ?>
                  
                  <?php } ?>
             </div> 
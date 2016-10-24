        <div id ="container-new-customer">
            <ul class="nav nav-tabs product_nav-tabs">
                <li class="active product_nav-tabs_one" id ="show-new-customer"><a href="#new-customer" data-toggle="tab">Я новый покупатель</a></li>
                <li class="product_nav-tabs_one" id ="show-old-customer"><a href="#old-customer" data-toggle="tab">Я постоянный клиент</a></li>
                <li class="product_nav-tabs_one" id ="show-easy-customer"><a href="#easy-customer" data-toggle="tab">Быстрый заказ</a></li>
            </ul>
          <div class="tab-content product_tab-content"> 
              <div class="tab-pane active" id="new-customer">
                  <div class="form-group">
                      <label class="col-sm-2 control-label" for="input-firstname"><span data-toggle="tooltip" title="Имя и фамилия">Имя и фамилия</span></label>
                      <div class="col-sm-10">
                          <input type="text" name="firstname" value="" placeholder="" id="input-firstname" class="form-control" />
                      </div>
                  </div>  
                  <div class="form-group">
                      <label class="col-sm-2 control-label" for="input-email"><span data-toggle="tooltip" title="Эл.почта">Эл.почта</span></label>
                      <div class="col-sm-10">
                          <input type="text" name="email" value="" placeholder="" id="input-email" class="form-control" />
                      </div>
                  </div> 
                  <div class="form-group">
                      <label class="col-sm-2 control-label" for="input-telephone"><span data-toggle="tooltip" title="Телефон">Телефон</span></label>
                      <div class="col-sm-10">
                          <input type="text" name="telephone" value="" placeholder="" id="input-telephone" class="form-control" />
                      </div>
                  </div> 
                  <div class="form-group">
                      <label class="col-sm-2 control-label" for="input-city"><span data-toggle="tooltip" title="Город">Город</span></label>
                      <div class="col-sm-10">
                          <input type="text" name="city" value="" placeholder="" id="input-phone" class="form-control" />
                      </div>
                  </div> 
                  <div class="form-group">
                      <label class="col-sm-2 control-label" for="input-address_1"><span data-toggle="tooltip" title="Адрес">Адрес</span></label>
                      <div class="col-sm-10">
                          <input type="text" name="address_1" value="" placeholder="" id="input-phone" class="form-control" />
                      </div>
                  </div> 
                  <div class="form-group">
                      <label class="col-sm-2 control-label" for="input-comment"><span data-toggle="tooltip" title="Комментарий">Комментарий</span></label>
                      <div class="col-sm-10">
                          <input type="text" name="comment" value="" placeholder="" id="input-comment" class="form-control" />
                      </div>
                  </div> 
                  <div class="form-group">
                      <label class="col-sm-2 control-label" for="input-password"><span data-toggle="tooltip" title="Пароль">Пароль</span></label>
                      <div class="col-sm-10">
                          <input type="password" name="password" value="" placeholder="" id="input-email" class="form-control" />
                      </div>
                  </div> 
                  <div class="form-group">
                      <label class="col-sm-2 control-label" for="input-confirm"><span data-toggle="tooltip" title="Подтвердить пароль">Подтвердить пароль</span></label>
                      <div class="col-sm-10">
                          <input type="password" name="confirm" value="" placeholder="" id="input-email" class="form-control" />
                      </div>
                  </div> 
                  <input type="hidden" name="lastname"  value="Не указано" placeholder="" id="input-lastname" class="form-control" />
                  <input type="hidden" name="address_2"  value="" placeholder="" id="input-lastname" class="form-control" />
                  <input type="hidden" name="customer_group_id"  value="<?php echo $customer_group_id; ?>" placeholder="" id="input-customer_group_id" class="form-control" /> 
                  <input type="hidden" name="country_id"  value="<?php echo $country_id; ?>" placeholder="" id="input-country_id" class="form-control" /> 
                  <input type="hidden" name="postcode"  value="<?php echo $postcode; ?>" placeholder="" id="input-postcode" class="form-control" /> 
                  <input type="hidden" name="zone_id"  value="<?php echo $zone_id; ?>" placeholder="" id="input-zone_id" class="form-control" /> 
                  <input type="hidden" name="agree"  value="1" placeholder="" id="input-zone_id" class="form-control" /> 
                  <input type="hidden" name="fax"  value="" placeholder="" id="input-fax" class="form-control" /> 
                  <input type="hidden" name="company"  value="" placeholder="" id="input-company" class="form-control" /> 
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
              </div>
          </div> 
       </div>
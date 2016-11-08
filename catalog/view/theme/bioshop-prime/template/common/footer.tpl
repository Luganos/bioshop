<footer>
  <div class="container_footer">
    <div class="footer_top">
      <div class="footer_tel col-lg-3 col-xs-6">
        <p class="footer_tel_text">Есть вопросы? Звоните!</p>
        <a href ="tel:<?php echo $telephone; ?>" ><p class="footer_tel_tel"><?php echo $telephone; ?></p></a>
        <a href="<?php echo $contact; ?>">
        <p class="footer_tel_we_recall">Мы перезвоним</p>
        </a>
      </div>
      <div class="footer_c_net col-lg-3 col-xs-6">
        <span>Мы в социальных сетях:</span>
        <div class="footer_c_net_img">
        <a href="https://www.instagram.com/bioshop.com.ua/">
        <img class="footer_twitter" src="catalog/view/theme/bioshop-prime/image/instagram.png" alt="">
        </a>
        <a href="https://www.facebook.com/Bioshop-интернет-магазин-1013339885407927/">
        <img class="footer_fb" src="catalog/view/theme/bioshop-prime/image/fb.png" alt="">
        </a>
        <a href="https://vk.com/club114411123">
        <img class="footer_vk" src="catalog/view/theme/bioshop-prime/image/vk.png" alt="">
        </a>
        </div>
      </div>
      <!-- <div class="footer_tel col-lg-3 col-xs-6">
        <p class="footer_tel_text">Есть вопросы? Звоните!</p>
        <a href ="tel:<?php echo $telephone; ?>" ><p class="footer_tel_tel"><?php echo $telephone; ?></p></a>
        <a href="<?php echo $contact; ?>">
        <p class="footer_tel_we_recall">Мы перезвоним</p>
        </a>
      </div> -->
      <div class="footer_news col-lg-4 col-xs-12">
        <div class="footer_news_text">
          <p>Подписка на новости</p>
          <?php echo $modules['newslettersubscribe']; ?>
        </div>
        <div class="footer_news_sec">
            <?php foreach ($informations as $information) { ?>
            <?php if (strtolower($information['title']) == strtolower("Соглашение о конфиденциальности")) { ?>
             <a href="<?php echo $information['href']; ?>">
             <p><?php echo $information['title']; ?></p>
             </a>
             <?php } ?>
             <?php } ?>

        </div>
        <div class="footer_geeker_logo">
             <span>разработано geeker</span>
             <a href="http://geeker.pro">
             <img class="footer_geeker_logo_img" src="catalog/view/theme/bioshop-prime/image/geeker.png" alt="">
             </a>
        </div>
    </div>
   </div>
  </div>
</footer>
<div class="footer_bottom">
      <div class="footer_bottom_text">
        <ul class="footer_bottom_text_ul">
            <?php foreach ($informations as $information) { ?>
               <?php if (strtolower($information['title']) !== strtolower("Соглашение о конфиденциальности")) { ?>
                  <?php if (strtolower($information['title']) !== strtolower("Сотрудничество")) { ?>
                      <a href="<?php echo $information['href']; ?>">
                         <li><?php echo $information['title']; ?></li>
                      </a>
                  <?php }  ?>
	          <?php if (strtolower($information['title']) == strtolower("Сотрудничество")) { ?>
		     <a href="<?php echo $affiliate; ?>">
                         <li>Сотрудничество</li>
                      </a>
		<?php } ?>
               <?php } ?>
        <?php } ?>
        </ul>
      </div>
      <div class="footer_bottom_log">
        <p>Naturele Boutique &#169 2016</p>
      </div>
    </div>
    <div class="popup_one">
    <div class="popup_one_content">
        <p>Менеджер свяжется с вами</p>
        <button type="button" style="margin-left: -25px !important; margin-top: -80px;" class="close" id ="close-windows-send" >&times;</button>
        <div class="form-group" style="margin-top: 30px !important; margin-left: 73px !important">
            <label class="col-sm-2 control-label" for="input-firstname"><span data-toggle="tooltip" title="Имя и фамилия">Имя и фамилия</span></label>
            <div class="col-sm-12 checkout_login_input">
                <input type="text" name="name" value="" placeholder="Иван Иванов " id="name" class="form-control" />
                <span id="input_error_name"></span>
             </div>
        </div>
        <div class="form-group" style="margin-top: 30px !important; margin-left: 73px !important">
            <label class="col-sm-2 control-label" for="input-telephone"><span data-toggle="tooltip" title="Телефон">Телефон</span></label>
            <div class="col-sm-12 checkout_login_input">
                 <input type="text" name="email" value="" placeholder="067-123-4567" id="phone" class="form-control" />
            </div>
        </div>
        <input type="hidden" name="enquiry" value="Перезвоните мне пожалуйста по номеру "  class="form-control" />
        <input type="hidden" name="redirect" value="1"  class="form-control" />
        <div class ="row">
             <button type="button" style ="margin-top: 20px !important; margin-left: 0px !important" id="send-form-for-contact" data-loading-text="Загрузка" class="button_red_input">Отправить</button>
        </div>

    </div>
</div>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->
<script src="catalog/view/javascript/slick/slick.js"></script>

</body></html>
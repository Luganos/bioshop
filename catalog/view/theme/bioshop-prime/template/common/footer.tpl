<footer>
  <div class="container_footer">
    <div class="footer_top">
      <div class="footer_c_net col-lg-3 col-xs-6">
        <span>Мы в социальных сетях:</span>
        <div class="footer_c_net_img">
        <a href="">
        <img class="footer_twitter" src="catalog/view/theme/bioshop-prime/image/Twitter.png" alt="">
        </a>
        <a href="">
        <img class="footer_fb" src="catalog/view/theme/bioshop-prime/image/fb.png" alt="">
        </a>
        <a href="">
        <img class="footer_vk" src="catalog/view/theme/bioshop-prime/image/vk.png" alt="">
        </a>
        <a href="">
        <img class="footer_t" src="catalog/view/theme/bioshop-prime/image/t.png" alt="">
        </a>
        </div>
      </div>
      <div class="footer_tel col-lg-3 col-xs-6">
        <p class="footer_tel_text">Есть вопросы? Звоните!</p>
        <a href ="tel:<?php echo $telephone; ?>" ><p class="footer_tel_tel"><?php echo $telephone; ?></p></a>
        <a href="<?php echo $contact; ?>">
        <p class="footer_tel_we_recall">Мы перезвоним</p>
        </a>
      </div>
      <div class="footer_news col-lg-4 col-xs-12">
        <div class="footer_news_text">
          <p>Подписка на новости</p>
        </div>
        <div class="footer_news_pole">
            <input class="footer_news_pole_input"  type="text">
        </div>
        <div class="footer_news_butten">
            <a href="">
            <p>подпишитесь</p>
            </a>
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
             <span>Разработано в</span>
             <img src="catalog/view/theme/bioshop-prime/image/geeker.png" alt="">
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
                  <?php if (strtolower($information['title']) !== strtolower("Контакты")) { ?>
                      <a href="<?php echo $information['href']; ?>">
                         <li><?php echo $information['title']; ?></li>
                      </a>
                  <?php } else if (strtolower($information['title']) == strtolower("Контакты")) { ?>
                      <a href="<?php echo $contact; ?>">
                         <li>Контакты</li>
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
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->
<script src="catalog/view/javascript/slick/slick.js"></script>
</body></html>
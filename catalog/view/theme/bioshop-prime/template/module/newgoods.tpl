<div class="buy-item">
    <p class="buy-header">Новые товары:</p>
    <?php $size = count($products); ?>
    <?php if ($size > 0) { ?>
    <div id="srcoll_newgoods" class="sl" data-slick='{"slidesToShow": 4, "slidesToScroll": 4}'>
        <?php foreach ($products as $product) { ?>
        <div class="sl_slide_1">
            <div class="cart_product">
                <div class="cart_product_img">
                    <a href ="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>"></a>
                </div>
                <div class="cart_product_price">
                       <?php if ($product['price']) { ?>
                           <?php if (!$product['special']) { ?>
                           <span class="cart_product_price_discont"><?php echo $product['price']; ?></span>
                           <?php } else { ?>
                           <span class="cart_product_price_pay"><?php echo $product['special']; ?></span>
                           <span class="cart_product_price_discont"><?php echo $product['price']; ?></span>
                           <?php } ?>
                        <?php } ?>
                    <span class="cart_product_price_text"><?php echo $product['name']; ?></span>
                </div>
                <div class="cart_product_price_button" onclick="cart.add('<?php echo $product['product_id']; ?>');">
                    <img src="catalog/view/theme/bioshop-prime/image/577845.png" alt="">
                        <span><?php echo $button_cart; ?></span>
                    </img>
                </div>
            </div>
        </div>
    <?php } ?>
    </div>
    <?php } ?>
</div>
<script>
var width = document.documentElement.clientWidth;

    if(width < 1280){

       teg = document.getElementById('srcoll_newgoods');
       teg.setAttribute('data-slick','{"slidesToShow": 3, "slidesToScroll": 3}')
    }
</script>



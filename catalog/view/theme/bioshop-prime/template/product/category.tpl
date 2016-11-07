<?php echo $header; ?><?php if( ! empty( $mfilter_json ) ) { echo '<div id="mfilter-json" style="display:none">' . base64_encode( $mfilter_json ) . '</div>'; } ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?> category_content"><?php echo $content_top; ?><div id="mfilter-content-container">
      <h2 class="category_name_product col-lg-3 col-sx-3"><?php echo $heading_title; ?></h2>
      <?php if ($categories) { ?>
      <h3><?php echo $text_refine; ?></h3>
      <?php if (count($categories) <= 5) { ?>
      <div class="row">
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
      </div>
      <?php } else { ?>
      <div class="row">
        <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      <?php } ?>
      <?php if ($products) { ?>
      <div class="row col-lg-9 col-md-3 category_cort">
        <div class="col-lg-0 col-md-1">
          <div class="btn-group hidden-xs " style="visibility: hidden">
            <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
            <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
          </div>
        </div>
        <div class="col-lg-2 col-md-2 text-right category_text-right">
          <label class="control-label control-label_category hidden-md" for="input-sort"><?php echo $text_sort; ?></label>
        </div>
        <div class="col-lg-3 col-md-3 text-right category_text-right_two">
          <select id="input-sort" class="form-control" onchange="location = this.value;">
            <?php foreach ($sorts as $sorts) { ?>
            <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
            <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
        <div class="col-lg-3 col-md-1 hidden-md text-right xxx">
          <label class="control-label control-label_category" for="input-limit"><?php echo $text_limit; ?></label>
        </div>
        <div class="col-lg-2 col-md-2 text-right category_text-right_three">
          <select id="input-limit" class="form-control" onchange="location = this.value;">
            <?php foreach ($limits as $limits) { ?>
            <?php if ($limits['value'] == $limit) { ?>
            <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
      </div>
      <br />
       <!--Begin of loop-->
       <?php if ($products) { ?>
        <div class="row category_row">
        <?php foreach ($products as $product) { ?>
          <div class="product-layout product-grid col-lg-4 col-md-4 col-sm-4 col-xs-4">
            <div class="cart_product">
                <div class="cart_product_img">
                    <a href ="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>"></a>
                </div>
                <div class="cart_product_price">
                       <?php if ($product['price']) { ?>
                           <?php if (!$product['special']) { ?>
                           <span class="cart_product_price_center"><?php echo $product['price']; ?></span>
                           <?php } else { ?>
                           <span class="cart_product_price_pay"><?php echo $product['special']; ?></span>
                           <span class="cart_product_price_discont"><?php echo $product['price']; ?></span>
                           <?php } ?>
                        <?php } ?>
                    <span class="cart_product_price_text">
                    <?php echo mb_strimwidth(strval($product['name']), 0, 80); ?>
                    <?php if (strlen(strval($product['name'])) > 80) { ?>
                    <?php echo '...'; ?>
                    <?php } ?>
                    </span>
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
	  <!--end of loop -->
      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      </div><?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>

    <div class="row category_seo_text">
      <div class="index_text_top_grey">
          <p>Необычный SEO - текст</p>
      </div>
        <?php if ($thumb) { ?>
        <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
        <?php } ?>
        <?php if ($description) { ?>
        <div class="col-xs-12" style="margin-bottom: 135px"><?php echo $description; ?></div>
        <?php } ?>
    </div>
</div>

<?php echo $footer; ?>

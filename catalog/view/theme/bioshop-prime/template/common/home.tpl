<?php echo $header; ?>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?><?php echo $content_bottom; ?>
        <div class="containet_index">
            <div class="index_text_top">
                <p>Необычный SEO - текст</p>
            </div>
            <div class="index_text_main">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta ex ipsam id possimus, expedita facilis, at amet tempora perferendis porro ea explicabo accusamus ut. Consequatur sunt fugiat minus, eveniet natus.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta ex ipsam id possimus, expedita facilis, at amet tempora perferendis porro ea explicabo accusamus ut. Consequatur sunt fugiat minus, eveniet natus.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta ex ipsam id possimus, expedita facilis, at amet tempora perferendis porro ea explicabo accusamus ut. Consequatur sunt fugiat minus, eveniet natus.</p>
            </div>
        </div>
    </div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.8.24/jquery-ui.js"   integrity="sha256-xWbKoNW9eZkm1RodPMQHsVyql6jqeiD6IYvsGyKEW78="   crossorigin="anonymous"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/bioshop-prime/stylesheet/stylesheet.css" rel="stylesheet">
<link href="catalog/view/theme/bioshop-prime/stylesheet/stylesheet_header.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<link href="catalog/view/javascript/slick/slick.css" rel="stylesheet">
<link href="catalog/view/javascript/slick/slick-theme.css" rel="stylesheet" >
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<script src="catalog/view/javascript/js.js" type="text/javascript"></script>
<script src="catalog/view/javascript/maskedinput.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body>
<div>
  <a class="idTop"><img src='catalog/view/theme/bioshop-prime/image/to_up.png'/></a>
</div>
<header>
  <div class="container_header">
    <div class="header_top">
       <ul class="header_top_text">
         <a href="">
         <li class="header_top_text_servic">Сервис</li></a>
         <?php if ($logged) { ?>
         <a href ="<?php echo $logout; ?>"><li class="header_top_text_enter"><?php echo $text_logout; ?>/</li></a>
         <a href ="<?php echo $account; ?>"><li class="header_top_text_reg"><?php echo $text_account; ?></li></a>
         <?php } else { ?>
         <a href ="<?php echo $login; ?>"><li class="header_top_text_enter"><?php echo $text_login; ?>/</li></a>
         <a href ="<?php echo $register; ?>"><li class="header_top_text_reg"><?php echo $text_register; ?></li></a>
         <?php } ?>
        </ul>
    </div>
    <div class="header_center">
    <div class="header_logo col-lg-3 col-xs-5">
    <?php if ($logo) { ?>
        <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>"></a>
     <?php } else { ?>
        <a href="<?php echo $home; ?>"><?php echo $name; ?></a>
     <?php } ?>
     </div>
      <div class="header_search col-lg-5 col-xs-2">
         <div><?php echo $search; ?></div>
      </div>
      <div class="header_tel col-lg-2 col-xs-2">
          <a href ="tel:<?php echo $telephone; ?>" ><span class="header_tel_text_number"><?php echo $telephone; ?></span></a>
          <a href="<?php echo $contact; ?>">
          <span class="header_tel_text_we">Мы перезвоним</span>
          </a>
      </div>
      <div class="header_pay col-lg-2 col-xs-3">
      <?php echo $cart; ?>
      </div>
    </div>
    <?php if ($categories) { ?>
    <div class="header_bottom col-lg-12">
      <ul class="hrader_menu_big">
       <?php $n = 0; ?>
       <?php foreach ($categories as $category) { ?>
       <?php if ($category['children']) { ?>
       <li class="hrader_menu_start_<?php echo $n; ?> dropdown">
       <a href="" class="menu_link_<?php echo $n; ?> dropdown-toggle" data-toggle="dropdown"><span><?php echo $category['name']; ?></span></a>
       <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
          <ul class="dropdown-menu">
          <?php foreach ($children as $child) { ?>
           <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
          <?php } ?>
         </ul>
       </li>
        <?php } ?>
       <?php } else { ?>
       <li class="hrader_menu_start_<?php echo $n; ?>">
       <a href="<?php echo $category['href']; ?>" class="menu_link_<?php echo $n; ?>"><span><?php echo $category['name']; ?></span></a>
       </li>
       <?php } ?>
       <?php $n++; ?>
       <?php } ?>
       <?php } ?>
       <li class="hrader_menu_start_<?php echo $n + 1; ?> dropdown">
       <a href="<?php echo $category['href']; ?>" class="menu_link_<?php echo $n + 1; ?>"><span>Акции и скидки</span></a>
       </li>
  	</ul>
    </div>
    <div class="hrader_menu_small">
      <img id="open_small_menu" src="catalog/view/theme/bioshop-prime/image/menu_small.png" alt="">
      <div class="open_header_menu_small">
        <ul class="open_header_menu_small_ul">
          <a href="">
          <li>1</li>
          </a>
          <a href="">
          <li>2</li>
          </a>
          <a href="">
          <li>3</li>
          </a>
          <a href="">
          <li>4</li>
          </a>
          <a href="">
          <li>5</li>
          </a>
        </ul>
      </div>
    </div>
  </div>
</header>



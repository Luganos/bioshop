<?php if (!isset($redirect)) { ?>
<div class = "container-payment-method" style ="display: none">
<?php echo $payment; ?>
</div>
<?php } else { ?>
<script type="text/javascript"><!--
location = '<?php echo $redirect; ?>';
//--></script>
<?php } ?>


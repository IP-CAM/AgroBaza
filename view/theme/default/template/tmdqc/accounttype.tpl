<div class="clearfix">
	<div class="panel panel-default">
		<div class="panel-heading widget-title border-left mb-20"><?php echo $text_cust ?> </div>
	</div>
  <div class=" <?php echo $account_type_show ?>">
    <!-- <p><?php echo $text_checkout; ?></p> -->
    <div class="radio">
      <label class="col-sm-12">
        <?php if ($account == 'register') { ?>
        <input type="radio" name="account" value="register" checked="checked" />
        <?php } else { ?>
        <input type="radio" name="account" value="register" />
        <?php } ?>
        <?php echo $text_register; ?></label>
    </div>
		<?php if ($checkout_guest){ ?>
    <?php if ($permision){ ?>
    <div class="radio">
      <label class="col-sm-12">
        <?php if ($account == 'guest') { ?>
        <input type="radio" name="account" value="guest" checked="checked" />
        <?php } else { ?>
        <input type="radio" name="account" value="guest" />
        <?php } ?>
        <?php echo $text_guest; ?></label>
    </div>
    <?php } ?>
    <?php } ?>
  </div>
</div>
<script type="text/javascript"><!--
$('input[name=\'account\']:checked').trigger('click');
//--></script>
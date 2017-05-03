<?php if (count($currencies) > 1) { ?>
<!-- <div class="pull-left"> -->
	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-currency">
		<div class="btn-group">
			<button class=" dropdown-toggle" data-toggle="dropdown">
				<i class="fa fa-caret-down"></i>

				<?php foreach ($currencies as $currency) { ?>
				<?php if ($currency['symbol_left'] && $currency['code'] == $code) { ?>
				<span class="hidden-lg">
					<?php echo $currency['symbol_left']; ?>
				</span>
				<?php } elseif ($currency['symbol_right'] && $currency['code'] == $code) { ?>
				<span class="hidden-lg">
					<?php echo $currency['symbol_right']; ?>
				</span>
				<?php } ?>
				<?php } ?>
				<span class="hidden-xs hidden-sm hidden-md">
					<?php echo $text_currency; ?>
				</span>
				
			</button>
			<ul class="dropdown-menu box-shadow">
				<?php foreach ($currencies as $currency) { ?>
				<?php if ($currency['symbol_left']) { ?>
				<li>
					<button class="currency-select btn btn-link btn-block" type="button" name="<?php echo $currency['code']; ?>">
						<!-- <?php echo $currency['symbol_left']; ?> -->
						<?php echo $currency['title']; ?>
					</button>
				</li>
				<?php } else { ?>
				<li>
					<button class="currency-select btn btn-link btn-block" type="button" name="<?php echo $currency['code']; ?>">
						<!-- <?php echo $currency['symbol_right']; ?> -->
						<?php echo $currency['title']; ?>
					</button>
				</li>
				<?php } ?>
				<?php } ?>
			</ul>
		</div>
		<input type="hidden" name="code" value="" />
		<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
	</form>
<!-- </div> -->
<?php } ?>

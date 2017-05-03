<div id="cart" class="total-cart-in">
	<button class="cart-toggler" data-loading-text="<?php echo $text_loading; ?>">
		<a href="#">
			<i class="fa fa-shopping-cart"></i>
			<span>
				<?php echo $text_items; ?>
			</span>
		</a>
	</button>
	<ul>
		<li>
			<div class="top-cart-inner your-cart">
				<h5 class="text-capitalize">Корзина</h5>
			</div>
		</li>
		<?php if ($products || $vouchers) { ?>
		<li>
			<div class="total-cart-pro">
				<?php foreach ($products as $product) { ?>
				<div class="single-cart clearfix">
					<div class="cart-img f-left">
						<?php if ($product['thumb']) { ?>
						<a href="<?php echo $product['href']; ?>">
							<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" />
						</a>
						<?php } ?>
					</div>
					<div class="cart-info f-left">
						<h6 class="text-capitalize">
							<a href="<?php echo $product['href']; ?>">
								<?php echo $product['name']; ?>
							</a>
						</h6>
						<?php if ($product['option']) { ?>
						<?php foreach ($product['option'] as $option) { ?>
						<p>
							<span>
								<?php echo $option['name']; ?>
								<strong>:</strong>
							</span>
							<?php echo $option['value']; ?>
						</p>
						<?php } ?>
						<?php } ?>
						<?php if ($product['recurring']) { ?>
						<p>
							<span>
								<?php echo $option['name']; ?>
								 <strong>:</strong>
							</span>
							<?php echo $option['value']; ?>
						</p>
						<?php } ?>
						<p>
							<span>Количество
								<strong>:</strong>
							</span>
							<span><?php echo $product['quantity']; ?></span>
						</p>
					</div>
					<div class="del-icon">
						<button type="button" onclick="cart.remove('<?php echo $product['cart_id']; ?>');" title="<?php echo $button_remove; ?>">
							<i class="zmdi zmdi-close"></i>
						</button>
					</div>
				</div>
				<?php } ?>
			</div>
		</li>
		<li>
			<?php  foreach ($totals as $total) { 
			if ($total['title'] == 'Итого' || $total['title'] == 'Total') {?>
			<div class="top-cart-inner subtotal">
				<h4 class="text-uppercase g-font-2">
					<?php echo $total['title']; ?> =
					<span class="ffr">
						<?php echo $total['text']; ?>
					</span>
				</h4>
			</div>
			<?php } } ?>
		</li>
		<!-- <li>
			<div class="top-cart-inner view-cart">
				<h4 class="text-uppercase">
					<a href="<?php echo $cart; ?>">
						<?php echo $text_cart; ?>
					</a>
				</h4>
			</div>
		</li> -->
		<li>
			<div class="top-cart-inner view-cart">
				<h4 class="text-uppercase">
					<a href="<?php echo $checkout; ?>">
						<?php echo $text_checkout; ?>
					</a>
				</h4>
			</div>
		</li>
		<?php } else { ?>
		<li>
			<p class="text-center">
				<?php echo $text_empty; ?>
			</p>
		</li>
		<?php } ?>
	</ul>
</div>

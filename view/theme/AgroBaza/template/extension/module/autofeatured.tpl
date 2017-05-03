<div class="section-title hidden-sm hidden-xs text-center">
	<h2 class="uppercase">
		<?php echo $heading_title; ?>
	</h2>
</div>
<div class="js_autofeatured hidden-sm hidden-xs slick-arrow-2">
	<?php foreach ($products as $product) { ?>
	<div class="product-layout product-list col-md-3 col-xs-12">
		<div class="product-item">
			<div class="product-img">
				<a href="<?php echo $product['href']; ?>">
					<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />
				</a>
			</div>
			<div class="product-info">
				<h6 class="product-title">
					<a href="<?php echo $product['href']; ?>">
						<?php echo $product['name']; ?>
					</a>
				</h6>
				<p class="description">
					<?php echo $product['description']; ?>
				</p>
				<?php if ($product['price']) { ?>
				<h3 class="pro-price">
					<?php if (!$product['special']) { ?>
					<?php echo $product['price']; ?>
					<?php } else { ?>
					<span class="price-new">
						<?php echo $product['special']; ?>
					</span>
					<span class="price-old">
						<?php echo $product['price']; ?>
					</span>
					<?php } ?>
					<?php if ($product['tax']) { ?>
					<span class="price-tax">
						<?php echo $text_tax; ?>
						<?php echo $product['tax']; ?>
					</span>
					<?php } ?>
				</h3>
				<?php } ?>
				<ul class="action-button">
					<li onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');" title="Добавить в корзину">
						<a>
							<i class="zmdi zmdi-shopping-cart-plus"></i>
						</a>
						<span>Добавить в корзину</span>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<?php } ?>
</div>

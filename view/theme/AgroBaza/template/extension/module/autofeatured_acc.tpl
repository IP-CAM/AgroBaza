<div class=" text-center">
	<h2 class="uppercase mt-30 mb-20">
		Оптовый прайс
	</h2>
</div>
<div class="all-products">
	<?php foreach ($cats as $cat) { ?>
	<div class="table-responsive" id="A<?php echo $cat['cat_id']; ?>">
		<table class="table table-bordered table-hover">
			<thead>
				<tr>
					<td class="text-center" colspan="5">
						<h4 class="name-acc">
							<?php echo $cat['cat_name']; ?>
						</h4>
					</td>
				</tr>
			</thead>
			<tbody>
				<?php foreach ($cat['products'] as $product) { ?>
				<tr class="product">
					<td class="text-center">
						<a href="<?php echo $product['href']; ?>">
							<?php echo $product['name']; ?>
						</a>
					</td>
					<td class="text-center">
						<a href="<?php echo $product['href']; ?>">
							<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive margin-center" />
						</a>
					</td>
					<?php if ($product['price']) { ?>
					<td class="text-center w1 wsnw">
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
						</h3>
						<?php } ?>
						<?php } ?>
					</td>
					<td class="text-center w1 wsnw quantity">
						<div class="plus-minus-pro-action <?php if ($product['quantity'] == 0) { ?> not-active <?php } ?>">
							<div class="sin-plus-minus">
								<p class="color-title d-ib clearfix">
									Кол-во
								</p>
								<div class="cart-plus-minus d-ib">
									<input type="text" name="quantity" value="0" size="2" class="cart-plus-minus-box input-quantity" />
									<input type="hidden" name="product_id" value="<?php echo $product['product_id']; ?>" />
								</div>
							</div>
						</div>
						<?php if ($minimum > 1) { ?>
						<div class="alert alert-info">
							<i class="fa fa-info-circle"></i>
							<?php echo $text_minimum; ?>
						</div>
						<?php } ?>
					</td>
					<td>
					<?php if ($product['quantity'] > 0) { ?>
 					<div class="text-center">В наличии</div>
					<?php } else {?>
					<div class="text-center">Ожидается</div>
					<?php } ?>
						<div class="sin-pro-action dn">
							<ul class="action-button text-center not-active">
								<li class="button-cart" title="Добавить в корзину">
									<a>
										<i class="zmdi zmdi-shopping-cart-plus"></i>
									</a>
									<span>
										<?php echo $button_cart; ?>
									</span>
								</li>
							</ul>
						</div>
					</td>
				</tr>
				<?php } ?>
			</tbody>
		</table>
	</div>
	<?php } ?>
</div>

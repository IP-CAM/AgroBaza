<div class="by-brand-section mb-80">
	<!-- <div class="container"> -->
		<div class="row">
			<div class="col-md-12">
				<div class="section-title text-left mb-40">
					<h2 class="uppercase">
						<?php echo $heading_title; ?>
					</h2>
					<!-- <h6>Далеко-далеко за словесными горами в стране, гласных и согласных живут рыбные тексты.</h6> -->
				</div>
			</div>
		</div>
		<div class="by-brand-product">
			<div class="row active-by-brand slick-arrow-2">
				<!-- single-brand-product start -->
				<?php foreach ($categories as $category) { ?>
				<div class="col-xs-12">
					<div class="single-brand-product box-shadow">
						<a href="<?php echo $category['href']; ?>">
							<img src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" title="<?php echo $category['name']; ?> " />
						</a>
						<h4 class="brand-title">
							<a href="<?php echo $category['href']; ?>">
								<?php echo $category['name']; ?>
							</a>
						</h4>
					</div>
				</div>
				<?php } ?>
			</div>
		</div>
	<!-- </div> -->
</div>

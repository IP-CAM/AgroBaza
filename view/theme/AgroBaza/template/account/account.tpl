<?php echo $header; ?>
<div class="mobile-menu-area hidden-lg hidden-md">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="mobile-menu">
					<nav id="dropdown">
						<ul>
							<?php echo $content_bottom; ?>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="container-fluid">
	<ul class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<li>
			<a href="<?php echo $breadcrumb['href']; ?>">
				<?php echo $breadcrumb['text']; ?>
			</a>
		</li>
		<?php } ?>
	</ul>
	<?php if ($success) { ?>
	<div class="alert alert-success">
		<i class="fa fa-check-circle"></i>
		<?php echo $success; ?>
	</div>
	<?php } ?>
	<!-- <div class=""> -->
	<div class="row ">
		<?php echo $column_left; ?>
		<?php if ($column_left && $column_right) { ?>
		<?php $class = 'col-sm-12 col-md-9'; ?>
		<?php } elseif ($column_left || $column_right) { ?>
		<?php $class = 'col-sm-12 col-md-9'; ?>
		<?php } else { ?>
		<?php $class = 'col-sm-12'; ?>
		<?php } ?>
		<div id="content" class="<?php echo $class; ?>">
			<div class="row">
				<div class="price-info">
					<div class="col-md-12 text-center">
						<h3 class="ffr">Курс сегодня: 1$ =  <?php echo $crc['UAH']; ?> грн</h3>
					</div>

				</div>
			</div>
			<?php echo $content_top; ?>
			<div class="row text-center">
				<div class="col-md-4">
					<h2 class="name-acc">
						<?php echo $text_my_account; ?>
					</h2>
					<ul class="list-unstyled">
						<li>
							<a href="<?php echo $edit; ?>">
								<?php echo $text_edit; ?>
							</a>
						</li>
						<li>
							<a href="<?php echo $password; ?>">
								<?php echo $text_password; ?>
							</a>
						</li>
						<li>
							<a href="<?php echo $address; ?>">
								<?php echo $text_address; ?>
							</a>
						</li>
					</ul>
				</div>
				<div class="col-md-4">
					<h2 class="name-acc">
						<?php echo $text_my_orders; ?>
					</h2>
					<ul class="list-unstyled">
						<li>
							<a href="<?php echo $order; ?>">
								<?php echo $text_order; ?>
							</a>
						</li>
					</ul>
				</div>
				<div class="col-md-4">
					<div class="price-down">
						<p class="ffr">Последнее обновление прайса (<?php echo $getPrice['date']; ?>)</p>

						<?php if (count($getPrice)) {
						echo '<a target="_blank" class="submit-btn-1 mb-20 btn-hover-1 text-center" href="download.php?file='.$getPrice['filename'].'&name='.$getPrice['mask'].'"> Скачать Прайс </a>'; 		} ?>
					</div>
				</div>
			</div>
			<?php echo $column_right; ?>
			<?php echo $content_bottom; ?>
		</div>
	</div>
	<!-- </div> -->
</div>
</div>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$("#column-left a, #cat-treeview-1 a").on("click", function(event) {
        //отменяем стандартную обработку нажатия по ссылке
        event.preventDefault();

        //забираем идентификатор бока с атрибута href
        var id = $(this).attr('href'),
        top = $(id).offset().top - $('#sticky-header').height() - $('header').height();
        console.log(id);
        console.log(top);
        //анимируем переход на расстояние - top за 1500 мс
        $('body,html').animate({
        	scrollTop: top
        }, 1500);
    });
		$(document).on('click', '.cart-plus-minus .qtybutton', function() {

			if ($(this).closest('.cart-plus-minus').children('input.cart-plus-minus-box').val() > 0) {
				$(this).closest('.product').find('ul.action-button').removeClass('not-active');
				$(this).closest('.product').find('ul.action-button').addClass('active');
			} else {
				$(this).closest('.product').find('ul.action-button').addClass('not-active');
				$(this).closest('.product').find('ul.action-button').removeClass('active');
			}
		});
		$(document).on('click', 'button#buy-all', function() {

			if ($('ul.action-button').hasClass('active')) {
				$('ul.action-button.active').closest('.product').find('ul.action-button a').click();
            // console.log($(''));
        }

    });
	});


	$(document).on('click', '.button-cart', function() {
		$(this).addClass('clicked');
		$(this).closest('.product').addClass('clickedPr');
		$.ajax({
			url: 'index.php?route=checkout/cart/add',
			type: 'post',
			data: $('.clickedPr input[type=\'text\'], .clickedPr input[type=\'hidden\'], .clickedPr input[type=\'radio\']:checked, .clickedPr input[type=\'checkbox\']:checked, .clickedPr select, .clickedPr textarea'),
			dataType: 'json',
			beforeSend: function() {
				$('.clickedPr .clicked').button('loading');
			},
			complete: function() {
				$('.clickedPr .clicked').button('reset');
				$('.clicked').removeClass('clicked');
				$('.clickedPr').removeClass('clickedPr');
			},
			success: function(json) {
				$('.alert, .text-danger').remove();
				$('.form-group').removeClass('has-error');

				if (json['error']) {
					if (json['error']['option']) {
						for (i in json['error']['option']) {
							var element = $('.input-option' + i.replace('_', '-'));

							if (element.parent().hasClass('input-group')) {
								element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
							} else {
								element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
							}
						}
					}

					if (json['error']['recurring']) {
						$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
					}

                // Highlight any found errors
                $('.text-danger').parent().addClass('has-error');
            }

            if (json['success']) {
            	$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

            	$('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');

            	$('html, body').animate({
            		scrollTop: 0
            	}, 'slow');

            	$('#cart > ul').load('index.php?route=common/cart/info ul li');

            }



        },
        error: function(xhr, ajaxOptions, thrownError) {
        	alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
	});
</script>
<?php echo $footer; ?>

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
  <div class="row">
    
    <?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-12 col-md-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
			<div id="content" class="<?php echo $class; ?>">
				<div class="address-section mb-80">
					<?php echo $content_top; ?>
					<h1>
						<?php echo $heading_title; ?>
					</h1>
					<div class="row">
						<div class="col-sm-4 col-xs-12">
							<div class="contact-address box-shadow">
								<i class="zmdi zmdi-pin"></i>
								<h6>
									<?php echo $address; ?>
								</h6>
							</div>
						</div>
						<div class="col-sm-4 col-xs-12">
							<div class="contact-address box-shadow">
								<i class="zmdi zmdi-phone"></i>
								<h6>
									<a href="tel:<?php echo str_replace(array('+', ' ', '(' , ')', '-'), '', $telephone); ?>">
										<?php echo $telephone; ?>
									</a>
								</h6>
								<?php if ($fax) { ?>
								<h6>
									<a href="tel:<?php echo str_replace(array('+', ' ', '(' , ')', '-'), '', $fax); ?>">
										<?php echo $fax; ?>
									</a>
								</h6>
								<?php } ?>
							</div>
						</div>
						<div class="col-sm-4 col-xs-12">
							<div class="contact-address box-shadow">
								<i class="zmdi zmdi-email"></i>
								<a href="mailto:<?php echo $email_p; ?>">
									<h6>
										<?php echo $email_p; ?>
									</h6>
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="google-map-section">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2564.7388728189458!2d36.27049331609648!3d49.99750497941535!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4127a0bb8c341e7f%3A0xd274d67c9d0e7dfa!2z0LLRg9C70LjRhtGPINCQ0L3Qs9Cw0YDRgdGM0LrQsCwgMTQsINCl0LDRgNC60ZbQsiwg0KXQsNGA0LrRltCy0YHRjNC60LAg0L7QsdC70LDRgdGC0Yw!5e0!3m2!1sru!2sua!4v1492529704955" class="scrolloff" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
				</div>
				<div class="message-box-section">
					<div class=""><!-- container -->
						<div class="row">
							<div class="col-md-12">
								<div class="message-box box-shadow white-bg">
									<form id="contact-form" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
										<div class="row">
											<div class="col-md-12">
												<h4 class="blog-section-title border-left mb-30">
													<?php echo $text_contact; ?>
												</h4>
											</div>
										</div>
										<fieldset>
											<div class="form-group required">
												<div class="col-md-6">
													<input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="form-control" placeholder="<?php echo $entry_name; ?>" />
													<?php if ($error_name) { ?>
													<div class="text-danger">
														<?php echo $error_name; ?>
													</div>
													<?php } ?>
												</div><div class="col-md-6">
													<input type="text" name="email" value="<?php echo $email; ?>" id="input-email" class="form-control" placeholder="<?php echo $entry_email; ?>" />
													<?php if ($error_email) { ?>
													<div class="text-danger">
														<?php echo $error_email; ?>
													</div>
													<?php } ?>
												</div>
											</div>
											
											<div class="form-group required">
												<div class="col-md-12">
													<textarea name="enquiry" rows="10" id="input-enquiry" class="custom-textarea" placeholder="<?php echo $entry_enquiry; ?>"></textarea>
													<?php if ($error_enquiry) { ?>
													<div class="text-danger">
														<?php echo $error_enquiry; ?>
													</div>
													<?php } ?>
												</div>
											</div>
											<?php echo $captcha; ?>
										</fieldset>
										<div class="buttons">
											<div class="text-center">
												<input class="submit-btn-1 mt-30 btn-hover-1" type="submit" value="<?php echo $button_submit; ?>" />
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<?php if ($locations) { ?>
				<h3>
					<?php echo $text_store; ?>
				</h3>
				<div class="panel-group" id="accordion">
					<?php foreach ($locations as $location) { ?>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a href="#collapse-location<?php echo $location['location_id']; ?>" class="accordion-toggle" data-toggle="collapse" data-parent="#accordion">
									<?php echo $location['name']; ?>
									<i class="fa fa-caret-down"></i>
								</a>
							</h4>
						</div>
						<div class="panel-collapse collapse" id="collapse-location<?php echo $location['location_id']; ?>">
							<div class="panel-body">
								<div class="row">
									<?php if ($location['image']) { ?>
									<div class="col-sm-3">
										<img src="<?php echo $location['image']; ?>" alt="<?php echo $location['name']; ?>" title="<?php echo $location['name']; ?>" class="img-thumbnail" />
									</div>
									<?php } ?>
									<div class="col-sm-3">
										<strong>
											<?php echo $location['name']; ?>
										</strong>
										<br />
										<address>
											<?php echo $location['address']; ?>
										</address>
										<?php if ($location['geocode']) { ?>
										<a href="https://maps.google.com/maps?q=<?php echo urlencode($location['geocode']); ?>&hl=<?php echo $geocode_hl; ?>&t=m&z=15" target="_blank" class="btn btn-info">
											<i class="fa fa-map-marker"></i>
											<?php echo $button_map; ?>
										</a>
										<?php } ?>
									</div>
									<div class="col-sm-3">
										<strong>
											<?php echo $text_telephone; ?>
										</strong>
										<br>
										<?php echo $location['telephone']; ?>
										<br />
										<br />
										<?php if ($location['fax']) { ?>
										<strong>
											<?php echo $text_fax; ?>
										</strong>
										<br>
										<?php echo $location['fax']; ?>
										<?php } ?>
									</div>
									<div class="col-sm-3">
										<?php if ($location['open']) { ?>
										<strong>
											<?php echo $text_open; ?>
										</strong>
										<br />
										<?php echo $location['open']; ?>
										<br />
										<br />
										<?php } ?>
										<?php if ($location['comment']) { ?>
										<strong>
											<?php echo $text_comment; ?>
										</strong>
										<br />
										<?php echo $location['comment']; ?>
										<?php } ?>
									</div>
								</div>
							</div>
						</div>
					</div>
					<?php } ?>
				</div>
				<?php } ?>
			</div>
			<?php echo $column_right; ?>
		</div>
	</div>
<?php echo $footer; ?>

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
	<?php if ($error_warning) { ?>
	<div class="alert alert-danger">
		<i class="fa fa-exclamation-circle"></i>
		<?php echo $error_warning; ?>
	</div>
	<?php } ?>
	<div class="row">
		<?php echo $column_left; ?>
		<?php if ($column_left && $column_right) { ?>
		<?php $class = 'col-sm-12 col-md-9'; ?>
		<?php } elseif ($column_left || $column_right) { ?>
		<?php $class = 'col-sm-12 col-md-9'; ?>
		<?php } else { ?>
		<?php $class = 'col-sm-12'; ?>
		<?php } ?>
		
		<div id="content" class="<?php echo $class; ?>">
		<!-- <div style="min-height: 600px;"> -->
		
			<?php echo $content_top; ?>
			<h1>
				<?php echo $heading_title; ?>
			</h1>
			<p>
				<?php echo $text_email; ?>
			</p>
			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
				<fieldset>
					<legend>
						<?php echo $text_your_email; ?>
					</legend>
					<div class="form-group required">
						<label class="col-sm-2 control-label" for="input-email">
							<?php echo $entry_email; ?>
						</label>
						<div class="col-sm-10">
							<input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
						</div>
					</div>
				</fieldset>
				<div class="buttons clearfix">
          <div class="pull-left">
            <a href="<?php echo $back; ?>" class="submit-btn-1 mt-20 btn-hover-1 text-right">
              <?php echo $button_back; ?>
            </a>
          </div>
          <div class="pull-right">
            <input type="submit" value="<?php echo $button_continue; ?>" class="submit-btn-1 mt-20 btn-hover-1 text-right" />
          </div>
       
			</form>

			<?php echo $content_bottom; ?>
		<!-- </div> -->
		</div>
	</div>
</div>
<?php echo $footer; ?>

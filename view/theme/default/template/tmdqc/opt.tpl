<div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">
				<i class="fa fa-close"></i>
			</button>
			<h3 class="text-center">
				<?php echo $text_opt ?>
			</h3>
		</div>
		<div class="modal-body">
			<div class="row">
				<div class="col-sm-12">
					<div class="row">
						<div class="col-sm-12">
							<form action="/sendmail.php" method="post" id="cont">
								<div class="form-group">
									<label class="control-label" for="input-email">
										<?php echo $text_opt_name; ?>
									</label>
									<input type="hidden" name="to" value="opt" />
									<input type="text" name="name" value="" placeholder="<?php echo $text_opt_name; ?>" id="input-name" class="form-control" />
								</div>
								<div class="form-group">
									<label class="control-label" for="input-payment-telephone">
										<?php echo $entry_telephone; ?>
									</label>
									<input type="text" name="tel" value="" placeholder="<?php echo $entry_telephone; ?>" id="input-payment-telephone" />
								</div>
								<div class="form-group">
									<label class="control-label" for="input-email">
										<?php echo $entry_email; ?>
									</label>
									<input type="text" name="email" value="" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
								</div>
								<div class="form-group">
									<label class="control-label" for="input-email">
										<?php echo $text_opt_firm; ?>
									</label>
									<input type="text" name="message" value="" placeholder="<?php echo $text_opt_firm; ?>" id="message" class="form-control" />
								</div>
								<div class="row">
									<div class="col-sm-12 text-center">
										<input type="submit" value="<?php echo $text_send; ?>" id="button-opt" data-loading-text="<?php echo $text_loading; ?>" class="submit-btn-1  btn-hover-1 text-right" />
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<style>
.modal-dialog .btn {
	font-size: 23px;
}

.modal-dialog label {
	font-size: 16px
}

.modal-dialog .form-control {
	height: 45px;
}
</style>

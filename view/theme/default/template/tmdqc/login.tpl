<div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">
				<i class="fa fa-close"></i>
			</button>
			<h3 class="text-center">
				<?php echo $text_log_in ?>
			</h3>
		</div>
		<div class="modal-body">
			<div class="row">
				<div class="col-sm-12">
					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label class="control-label" for="input-email">
									<?php echo $entry_email; ?>
								</label>
								<input type="text" name="email" value="" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
							</div>
							<div class="form-group">
								<label class="control-label" for="input-password">
									<?php echo $entry_password; ?>
								</label>
								<input type="password" name="password" value="" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
								<a href="<?php echo $forgotten; ?>" class="forgot">
									<?php echo $text_forgotten; ?>
								</a>
							</div>
							<div class="row">
								<div class="col-sm-12 text-center">
									<input type="button" value="<?php echo $button_login; ?>" id="button-login" data-loading-text="<?php echo $text_loading; ?>" class="submit-btn-1  btn-hover-1 text-right" />
								</div>
							</div>
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

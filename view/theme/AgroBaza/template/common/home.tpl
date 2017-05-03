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
			<div class="main-tabs mb-30">
				<div class="row">
					<div class="col-md-12">
						<ul class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active">
								<a href="#zap" aria-controls="xap" role="tab" data-toggle="tab">
									<h4 class="blog-section-title border-left">
										Подбор по запчастям
									</h4>
								</a>
							</li>
							<li role="presentation">
								<a href="#mod" aria-controls="mod" role="tab" data-toggle="tab">
									<h4 class="blog-section-title border-left">
										Подбор по модели
									</h4>
								</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="zap">
						<form action="/podbor.php" method="post" class="form-horizontal js_podbor">
							<input type="hidden" name="podbor" value="zap">
							<fieldset>
								<div class="row">
									<div class="col-md-3">
										<label for="power">Мощность</label>
										<select name="power" id="power" class="form-control">
											<option value="not" selected>Выберите</option>
											<option value="9">9 л.с.</option>
											<option value="10">10 л.с.</option>
										</select>
									</div>
									<div class="col-md-3">
										<label for="topl">Тип топлива</label>
										<select name="topl" id="topl" class="form-control">
											<option value="not" selected>Выберите</option>
											<option value="diz">Дизель</option>
											<option value="benz">Бензин</option>
										</select>
									</div>
									<div class="col-md-3">
										<label for="type_ohl">Тип охлаждения</label>
										<select name="type_ohl" id="type_ohl" class="form-control">
											<option value="not" selected>Выберите</option>
											<option value="vozd">Воздушное</option>
											<option value="vod">Водяное</option>
										</select>
									</div>
									<div class="col-md-3">
										<div class="text-center">
											<input class="submit-btn-1 mt-30 btn-hover-1" type="submit" value="Подобрать" />
										</div>
									</div>
								</div>
							</fieldset>
						</form>
					</div>
					<div role="tabpanel" class="tab-pane" id="mod">
						<form action="/podbor.php" method="post" class="form-horizontal js_podbor">
							<input type="hidden" name="podbor" value="mod">
							<fieldset>
								<div class="row">
									<div class="col-md-4">
										<label for="brand">Бренд</label>
										<select name="brand" id="brand" class="form-control">
											<option value="not" selected>Выберите</option>
											<option value="kentavr">Кентавр</option>
											<option value="zubr">Зубр</option>
										</select>
									</div>
									<div class="col-md-4">
										<label for="model">Модель</label>
										<select name="model" id="model" class="form-control">
											<option value="not" selected>Выберите</option>
											<option value="135">135</option>
											<option value="105">105</option>
										</select>
									</div>
									<div class="col-md-4">
										<div class="text-center">
											<input class="submit-btn-1 mt-30 btn-hover-1" type="submit" value="Подобрать" />
										</div>
									</div>
								</div>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
			<?php echo $content_top; ?>
			 <div class="team-section mt-50">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="section-title text-left ">
                                <h2 class="uppercase mb-40">Наши преимущества</h2>
                            </div>
                        </div>
                    </div>                
                    <div class="row">
                        <div class="">
                            <!-- team-member start -->
                            <div class="col-lg-3 col-sm-6 ">
                                <div class="team-member box-shadow bg-shape">
                                    <div class="team-member-photo">
                                    	<i class="fa fa-star"></i>
                                    </div>
                                    <div class="team-member-info pt-20">
                                        <h5 class="member-name ffr">Преимущество</h5>
                                        <p class="mb-20">Описание преимущества в пяти словах</p>      
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-sm-6 ">
                                <div class="team-member box-shadow bg-shape">
                                    <div class="team-member-photo">
                                    	<i class="fa fa-star"></i>
                                    </div>
                                    <div class="team-member-info pt-20">
                                        <h5 class="member-name ffr">Преимущество</h5>
                                        <p class="mb-20">Описание преимущества в пяти словах</p>      
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-sm-6 ">
                                <div class="team-member box-shadow bg-shape">
                                    <div class="team-member-photo">
                                    	<i class="fa fa-star"></i>
                                    </div>
                                    <div class="team-member-info pt-20">
                                        <h5 class="member-name ffr">Преимущество</h5>
                                        <p class="mb-20">Описание преимущества в пяти словах</p>      
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-sm-6 ">
                                <div class="team-member box-shadow bg-shape">
                                    <div class="team-member-photo">
                                    	<i class="fa fa-star"></i>
                                    </div>
                                    <div class="team-member-info pt-20">
                                        <h5 class="member-name ffr">Преимущество</h5>
                                        <p class="mb-20">Описание преимущества в пяти словах</p>      
                                    </div>
                                </div>
                            </div>
                            <!-- team-member end -->
                        </div>
                    </div>
                </div>
            <!-- TEAM SECTION END -->     
		</div>
		<?php echo $column_right; ?>
	</div>
</div>
<?php echo $footer; ?>

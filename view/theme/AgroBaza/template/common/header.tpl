<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>
		<?php echo $title; ?>
	</title>
	<base href="<?php echo $base; ?>" />
	<?php if ($description) { ?>
	<meta name="description" content="<?php echo $description; ?>" />
	<?php } ?>
	<?php if ($keywords) { ?>
	<meta name="keywords" content="<?php echo $keywords; ?>" />
	<?php } ?>
	<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
	<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
	<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
	<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
	<?php foreach ($styles as $style) { ?>
	<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
	<?php } ?>
	<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
	<?php foreach ($links as $link) { ?>
	<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
	<?php } ?>
	<?php foreach ($scripts as $script) { ?>
	<script src="<?php echo $script; ?>" type="text/javascript"></script>
	<?php } ?>
	<?php foreach ($analytics as $analytic) { ?>
	<?php echo $analytic; ?>
	<?php } ?>
	<link rel="stylesheet" href="catalog/view/theme/AgroBaza/css/core.css">
	<!-- Theme shortcodes/elements style -->
	<link rel="stylesheet" href="catalog/view/theme/AgroBaza/css/shortcodes.css">
	<!-- Theme main style -->
	<link rel="stylesheet" href="catalog/view/theme/AgroBaza/css/style.css">
	<!-- Responsive css -->
	<link rel="stylesheet" href="catalog/view/theme/AgroBaza/css/responsive.css">
	<!-- User style -->
	<link rel="stylesheet" href="catalog/view/theme/AgroBaza/css/custom.css">
	<link rel="stylesheet" href="catalog/view/theme/AgroBaza/css/upgrade.css">
	<!-- <link rel="stylesheet" href="catalog/view/theme/AgroBaza/css/print.css" media="print"> -->
	<!-- Modernizr JS -->
	<script src="catalog/view/theme/AgroBaza/js/modernizr-2.8.3.min.js"></script>
</head>

<body class="<?php echo $class; ?>">
	<nav id="top">
		<div class="header-top-bar">
			<div class="container-fluid">
				<div class="row">
					<div class="col-sm-7  col-xs-12">
						<?php if ($informations) { ?>
						<ul class="main-menu text-left">
							<?php foreach ($informations as $information) { ?>
							<li>
								<a href="<?php echo $information['href']; ?>">
									<?php echo $information['title']; ?>
								</a>
							</li>
							<?php } ?>
							<li>
								<a href="<?php echo $contact?>">Контакты</a>
							</li>
						</ul>
						<?php } ?>
					</div>
					<div class="col-sm-5 col-xs-12">
						<div class="top-link clearfix">
							<ul class="links f-right">
							<li> <?php echo $currency; ?></li>
								<?php if ($logged) { ?>
								<li>
									<a href="<?php echo $account; ?>">
										<i class="zmdi zmdi-account"></i>
										<?php echo $text_account; ?>
									</a>
								</li>
								<li>
									<a href="<?php echo $order; ?>">
										<i class="zmdi zmdi-format-list-numbered"></i>
										<?php echo $text_order; ?>
									</a>
								</li>
								<li>
									<a href="<?php echo $logout; ?>">
										<i class="fa fa-sign-out" aria-hidden="true"></i>
										<?php echo $text_logout; ?>
									</a>
								</li>
								<?php } else { ?>
								<li>
									<a href="<?php echo $register; ?>">
										<i class="zmdi zmdi-account"></i>
										<?php echo $text_register; ?>
									</a>
								</li>
								<li>
									<a data-toggle="modal" data-target="#myModal" id="tmdqclogin">
										<i class="fa fa-sign-out" aria-hidden="true"></i>
										<?php echo $text_login; ?>
									</a>
								</li>
								<?php } ?>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</nav>
	<header>
		<div id="sticky-header" class="header-middle-area pb30">
			<div class="container-fluid">
				<div class="full-width-mega-dropdown">
					<div class="row">
						<!-- logo -->
						<div class="col-md-3 col-xs-12">
							<div id="logo">
								<?php if ($logo) { ?>
								<a href="<?php echo $home; ?>">
									<!-- <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /> -->
									<svg xmlns="http://www.w3.org/2000/svg" height="70" viewBox="0 0 138.1 26.9">
										<path fill="#EF3824" stroke="#EF3824" stroke-width=".22" stroke-miterlimit="22.93" d="M18.2 8.8c-3.2-1-9.3-4.6-14.5-.5C1.9 9.7.7 12 1 14.9c.2 1.9 1.5 5.8 2.8 6.3.1-2.1.2-3.7.8-5.3.6-1.7 1-3 2.2-4 .4 4.5 1.6 10.1 6 12.3 5 2.5 10-.9 11.6-4.9-1.5.3-7.2 2.7-9.8 1.1 2.2-1.7 3.3-1.7 5.3-4 7-8 1.9-15.3-7.9-14.9.8 1 5 3.1 6.2 7.3z"/>
										<path fill="#00A347" d="M18.2 8.8c-1.2-4.2-5.4-6.3-6.3-7.5 9.8-.4 14.9 6.9 7.9 14.9-2 2.3-3.1 2.3-5.3 4 2.6 1.5 8.3-.8 9.8-1.1-1.6 4.1-6.6 7.4-11.6 4.9-4.4-2.2-5.5-7.8-6-12.3-1.2 1-1.6 2.3-2.2 4S3.8 19 3.7 21c-1.3-.5-2.6-4.3-2.8-6.3-.3-2.9 1-5.2 2.7-6.6 5.3-3.9 11.4-.3 14.6.7zM10.8.7C-6.7 4.1-1.4 30 16 26.6c6.5-1.3 11.8-7.9 10.3-15.6C25 4.5 18.6-.9 10.8.7zm31 14.2h-4.7l-.6 2.2h-4.2l5-13.3h4.5l5 13.3h-4.3l-.7-2.2zm-.9-2.9l-1.5-4.8L38 12h2.9zm14.8-1.8h-4.1v6.9h-3.7V7.5h7.8v2.7zm1.5 10.6V7.5h3.4v1.4c.5-.6.9-1 1.3-1.2.5-.3 1.1-.4 1.8-.4 1.3 0 2.3.5 3 1.5s1.1 2.2 1.1 3.6c0 1.6-.4 2.8-1.1 3.7-.8.8-1.7 1.3-2.9 1.3-.6 0-1.1-.1-1.6-.3s-.9-.5-1.3-.9v4.6h-3.7zm3.7-8.5c0 .8.2 1.3.5 1.7s.7.6 1.2.6c.4 0 .8-.2 1.1-.5.3-.4.4-1 .4-1.8s-.2-1.3-.5-1.7c-.2-.4-.6-.6-1-.6-.5 0-.9.2-1.2.6s-.5.9-.5 1.7zm8.2 0c0-1.5.5-2.7 1.5-3.6s2.3-1.4 4-1.4c1.9 0 3.4.6 4.4 1.7.8.9 1.2 2 1.2 3.3 0 1.5-.5 2.7-1.5 3.6s-2.3 1.4-4.1 1.4c-1.5 0-2.8-.4-3.7-1.2-1.2-.9-1.8-2.2-1.8-3.8zm3.7 0c0 .9.2 1.5.5 1.9.3.4.8.6 1.3.6s1-.2 1.3-.6.5-1.1.5-1.9c0-.8-.2-1.5-.5-1.9s-.8-.6-1.3-.6-1 .2-1.3.6-.5 1.1-.5 1.9zm13.5-3.4h2.2c2 0 3.5.4 4.5 1.1 1 .7 1.5 1.8 1.5 3.3 0 1.2-.4 2.2-1.3 2.8-.9.6-2.2 1-3.8 1h-7V3.8h11.2v2.7h-7.1v2.4h-.2zm0 5.3h2.1c1.3 0 1.9-.5 1.9-1.4 0-.8-.6-1.2-1.9-1.2h-2.1v2.6zm13.4-3.6l-3.5-.4c.1-.6.3-1.1.6-1.5.3-.4.6-.7 1.1-.9.3-.2.8-.3 1.4-.4.6-.1 1.2-.2 1.9-.2 1.1 0 2 .1 2.7.2s1.2.4 1.7.8c.3.3.6.7.7 1.2.2.5.3 1 .3 1.4V15c0 .5 0 .8.1 1.1.1.3.2.6.4 1h-3.5l-.3-.6c0-.1-.1-.3-.1-.6-.5.5-1 .8-1.4 1-.7.3-1.4.4-2.3.4-1.1 0-2-.3-2.6-.8s-.9-1.2-.9-2c0-.7.2-1.3.6-1.8.4-.5 1.2-.8 2.4-1 1.4-.3 2.3-.5 2.7-.6.4-.1.8-.3 1.3-.4 0-.5-.1-.8-.3-.9s-.5-.3-1-.3c-.6 0-1.1.1-1.4.3-.3.1-.5.4-.6.8zm3.2 1.9c-.5.2-1 .3-1.6.5-.7.2-1.2.4-1.4.6-.2.2-.3.4-.3.7 0 .3.1.5.3.7.2.2.5.3.9.3s.8-.1 1.1-.3c.4-.2.6-.4.8-.7.1-.3.2-.7.2-1.1v-.7zm14.7-.4c.6.2 1 .5 1.4.8.3.4.5.8.5 1.3 0 1-.5 1.8-1.4 2.3-1 .5-2.4.8-4.2.8-1.5 0-2.8-.3-3.6-.9s-1.5-1.4-1.9-2.6l3.5-.4c.1.3.4.6.7.9.4.3.8.4 1.3.4 1.2 0 1.9-.3 1.9-.9 0-.2-.1-.4-.4-.5-.2-.1-.5-.2-.9-.2h-1.6v-1.9h1.6c.3 0 .6-.1.9-.2.3-.1.4-.3.4-.5s-.2-.4-.5-.6c-.3-.1-.7-.2-1.3-.2-.5 0-1 .1-1.4.3s-.6.5-.7.8l-3.4-.5c.3-1.1.9-1.9 1.8-2.4s2.1-.8 3.6-.8c1.6 0 2.9.3 3.8.8s1.4 1.2 1.4 2c0 1.1-.5 1.8-1.5 2.2zm7-1.5l-3.5-.4c.1-.6.3-1.1.6-1.5.3-.4.6-.7 1.1-.9.3-.2.8-.3 1.4-.4.6-.1 1.2-.2 1.9-.2 1.1 0 2 .1 2.7.2s1.2.4 1.7.8c.3.3.6.7.7 1.2.2.5.3 1 .3 1.4V15c0 .5 0 .8.1 1.1.1.3.2.6.4 1h-3.5l-.3-.6c0-.1-.1-.3-.1-.6-.5.5-1 .8-1.4 1-.7.3-1.4.4-2.3.4-1.1 0-2-.3-2.6-.8s-.9-1.2-.9-2c0-.7.2-1.3.6-1.8.4-.5 1.2-.8 2.4-1 1.4-.3 2.3-.5 2.7-.6.4-.1.8-.3 1.3-.4 0-.5-.1-.8-.3-.9s-.5-.3-1-.3c-.6 0-1.1.1-1.4.3-.3.1-.5.4-.6.8zm3.2 1.9c-.5.2-1 .3-1.6.5-.7.2-1.2.4-1.4.6-.2.2-.3.4-.3.7 0 .3.1.5.3.7.2.2.5.3.9.3s.8-.1 1.1-.3c.4-.2.6-.4.8-.7.1-.3.2-.7.2-1.1v-.7zm5.8-7.8V1.5h1.6c.3 0 .5 0 .7.1s.3.1.4.3c.1.1.1.3.1.5s0 .3-.1.5-.2.2-.3.3-.2.1-.3.1c.1 0 .2.1.3.1l.2.2c.1.1.1.2.1.2l.5.9h-1.1l-.5-1c-.1-.1-.1-.2-.2-.2s-.2-.1-.2-.1h-.1v1.3h-1.1zm.9-1.9h.7c.1 0 .1 0 .2-.1s.1-.1.1-.2 0-.2-.1-.2-.2-.1-.4-.1h-.4v.6h-.1z"/>
										<circle cx="135" cy="3.1" r="2.7" fill="none" stroke="#00A347" stroke-width=".57" stroke-miterlimit="22.93"/>
									</svg>
									<h5><?php echo $comment; ?></h5>
								</a>
								
								<?php } else { ?>
								<h1>
									<a href="<?php echo $home; ?>">
										<?php echo $name; ?>
									</a>
								</h1>
								<?php } ?>
							</div>
						</div>
						<!-- primary-menu -->
						<div class="col-md-6 hidden-sm hidden-xs">
							<div class="call-us text-center">
								<p class="mb-0 roboto">
									<span class="phone1">
										<i class="zmdi zmdi-phone"></i>
										<a href="tel:<?php echo str_replace(array('+', ' ', '(' , ')', '-'), '', $telephone); ?>">
											<?php echo $telephone; ?>
										</a>
									</span>
									<span class="phone2">
										<i class="zmdi zmdi-phone"></i>
										<a href="tel:<?php echo str_replace(array('+', ' ', '(' , ')', '-'), '', $fax); ?>">
											<?php echo $fax; ?>
										</a>
									</span>
								</p>
							</div>
						</div>
						<!-- header-search & total-cart -->
						<div class="col-md-3 col-xs-12">
							<div class="search-top-cart  f-right">
								<!-- header-search -->
								<div class="header-search f-left">
									<div class="header-search-inner">
										<button class="search-toggle">
											<i class="zmdi zmdi-search"></i>
										</button>
										<form action="#">
											<div class="top-search-box">
												<?php echo $search; ?>
											</div>
										</form>
									</div>
								</div>
								<div class="total-cart f-left">
									<?php echo $cart; ?>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>

		<?php if ($categories) { ?>
		<div class="container">
			<nav id="menu" class="navbar">
				<div class="navbar-header">
					<span id="category" class="visible-xs">
						<?php echo $text_category; ?>
					</span>
					<button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
						<i class="fa fa-bars"></i>
					</button>
				</div>
				<div class="collapse navbar-collapse navbar-ex1-collapse">
					<ul class="nav navbar-nav">
						<?php foreach ($categories as $category) { ?>
						<?php if ($category['children']) { ?>
						<li class="dropdown">
							<a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown">
								<?php echo $category['name']; ?>
							</a>
							<div class="dropdown-menu">
								<div class="dropdown-inner">
									<?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
									<ul class="list-unstyled">
										<?php foreach ($children as $child) { ?>
										<li>
											<a href="<?php echo $child['href']; ?>">
												<?php echo $child['name']; ?>
											</a>
										</li>
										<?php } ?>
									</ul>
									<?php } ?>
								</div>
								<a href="<?php echo $category['href']; ?>" class="see-all">
									<?php echo $text_all; ?>
									<?php echo $category['name']; ?>
								</a>
							</div>
						</li>
						<?php } else { ?>
						<li>
							<a href="<?php echo $category['href']; ?>">
								<?php echo $category['name']; ?>
							</a>
						</li>
						<?php } ?>
						<?php } ?>
					</ul>
				</div>
			</nav>
		</div>
		<?php } ?>

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
      <?php echo $content_top; ?>
      <h2>
        <?php echo $heading_title; ?>
      </h2>
      <hr>
      <?php if ($categories) { ?>
      <h3>
        <?php echo $text_refine; ?>
      </h3>
      <?php if (count($categories) <= 5) { ?>
      <div class="row">
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li>
              <a href="<?php echo $category['href']; ?>">
                <?php echo $category['name']; ?>
              </a>
            </li>
            <?php } ?>
          </ul>
        </div>
      </div>
      <?php } else { ?>
      <div class="row">
        <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li>
              <img src="<?php echo $category['thumb']; ?>">
              <a href="<?php echo $category['href']; ?>">
                <?php echo $category['name']; ?>
              </a>
            </li>
            <?php } ?>
          </ul>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      <hr>
      <?php } ?>
      <?php if ($description) { ?>
      <div class="row">
        <?php if ($description) { ?>
        <div class="col-sm-12">
          <?php echo $description; ?>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      <?php if ($products) { ?>
      <div class="">
        <div class="shop-option box-shadow mb-30 clearfix">
          <!-- Nav tabs -->
                    <!-- <ul class="shop-tab f-left" role="tablist">
            <li class="active">
              <a href="#grid-view" id="grid-view" data-toggle="tab">
                <i class="zmdi zmdi-view-module"></i>
              </a>
            </li>
            <li>
              <a href="#list-view" class="hidden-sm hidden-xs" id="list-view" data-toggle="tab">
                <i class="zmdi zmdi-view-list-alt"></i>
              </a>
            </li>
          </ul> -->
          <!-- short-by -->
          <div class="short-by f-left">
            <span>
              <?php echo $text_sort; ?>
            </span>
            <select id="input-sort" onchange="location = this.value;">
              <?php foreach ($sorts as $sorts) { ?>
              <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
              <option value="<?php echo $sorts['href']; ?>" selected="selected">
                <?php echo $sorts['text']; ?>
              </option>
              <?php } else { ?>
              <option value="<?php echo $sorts['href']; ?>">
                <?php echo $sorts['text']; ?>
              </option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>
          <!-- showing -->
          <div class="showing f-right text-right">
            <span>
              <?php echo $text_limit; ?> </span>
              <select id="input-limit" onchange="location = this.value;">
                <?php foreach ($limits as $limits) { ?>
                <?php if ($limits['value'] == $limit) { ?>
                <option value="<?php echo $limits['href']; ?>" selected="selected">
                  <?php echo $limits['text']; ?>
                </option>
                <?php } else { ?>
                <option value="<?php echo $limits['href']; ?>">
                  <?php echo $limits['text']; ?>
                </option>
                <?php } ?>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="row">
            <?php foreach ($products as $product) { ?>
            <div class="product-layout product-list col-md-3 hidden-sm col-xs-12">
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
                  <?php if ($logged) { ?>
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
                  <?php } else { ?>
                  <p><a href="<?php echo $register; ?>">Зарегистрируйтесь</a>
                    <br> для получения оптового прайса</p>
                    <?php } ?>
                  </div>
                </div>
              </div>
              <!-- product-item end -->
              <!-- product-item end -->
              <?php } ?>
            </div>
            <?php } ?>
            <?php if (!$categories && !$products) { ?>
            <p>
              <?php echo $text_empty; ?>
            </p>
            <div class="buttons">
              <div class="pull-right">
                <a href="<?php echo $continue; ?>" class="btn btn-primary">
                  <?php echo $button_continue; ?>
                </a>
              </div>
            </div>
            <?php } ?>
          </div>
          <div class="row">
            <div class="col-sm-6 text-left">
              <?php echo $pagination; ?>
            </div>
            <div class="col-sm-6 text-right">
              <?php echo $results; ?>
            </div>
          </div>
          <?php echo $column_right; ?>
        </div>
      </div>
    </div>
    <?php echo $footer; ?>

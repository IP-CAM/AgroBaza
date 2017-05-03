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
            <h1><?php echo $heading_title; ?></h1>
            <label class="control-label" for="input-search">
                <?php echo $entry_search; ?>
            </label>
            <div class="row">
                <div class="col-sm-3">
                    <input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_keyword; ?>" id="input-search" class="form-control" />
                </div>
                <div class="col-sm-3">
                    <select name="category_id" class="form-control">
                        <option value="0">
                            <?php echo $text_category; ?>
                        </option>
                        <?php foreach ($categories as $category_1) { ?>
                        <?php if ($category_1['category_id'] == $category_id) { ?>
                        <option value="<?php echo $category_1['category_id']; ?>" selected="selected">
                            <?php echo $category_1['name']; ?>
                        </option>
                        <?php } else { ?>
                        <option value="<?php echo $category_1['category_id']; ?>">
                            <?php echo $category_1['name']; ?>
                        </option>
                        <?php } ?>
                        <?php foreach ($category_1['children'] as $category_2) { ?>
                        <?php if ($category_2['category_id'] == $category_id) { ?>
                        <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <?php echo $category_2['name']; ?>
                        </option>
                        <?php } else { ?>
                        <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <?php echo $category_2['name']; ?>
                        </option>
                        <?php } ?>
                        <?php foreach ($category_2['children'] as $category_3) { ?>
                        <?php if ($category_3['category_id'] == $category_id) { ?>
                        <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <?php echo $category_3['name']; ?>
                        </option>
                        <?php } else { ?>
                        <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <?php echo $category_3['name']; ?>
                        </option>
                        <?php } ?>
                        <?php } ?>
                        <?php } ?>
                        <?php } ?>
                    </select>
                </div>
                <div class="col-sm-3">
                    <label class="checkbox-inline">
                        <?php if ($sub_category) { ?>
                        <input type="checkbox" name="sub_category" value="1" checked="checked" />
                        <?php } else { ?>
                        <input type="checkbox" name="sub_category" value="1" />
                        <?php } ?>
                        <?php echo $text_sub_category; ?>
                    </label>
                    <label class="checkbox-inline ml-0">
                        <?php if ($description) { ?>
                        <input type="checkbox" name="description" value="1" id="description" checked="checked" />
                        <?php } else { ?>
                        <input type="checkbox" name="description" value="1" id="description" />
                        <?php } ?>
                        <?php echo $entry_description; ?>
                    </label>
                </div>
                <div class="col-sm-3">
                    <input type="button" value="<?php echo $button_search; ?>" id="button-search" class="submit-btn-1 mt-15 btn-hover-1 text-right" />
                </div>
            </div>
            <h2><?php echo $text_search; ?>	</h2>
            <?php if ($products) { ?>
            <div class="">
                <div class="shop-option box-shadow mb-30 clearfix">
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
<script type="text/javascript">
    <!--
    $('#button-search').bind('click', function() {
        url = 'index.php?route=product/search';

        var search = $('#content input[name=\'search\']').prop('value');

        if (search) {
            url += '&search=' + encodeURIComponent(search);
        }

        var category_id = $('#content select[name=\'category_id\']').prop('value');

        if (category_id > 0) {
            url += '&category_id=' + encodeURIComponent(category_id);
        }

        var sub_category = $('#content input[name=\'sub_category\']:checked').prop('value');

        if (sub_category) {
            url += '&sub_category=true';
        }

        var filter_description = $('#content input[name=\'description\']:checked').prop('value');

        if (filter_description) {
            url += '&description=true';
        }

        location = url;
    });

    $('#content input[name=\'search\']').bind('keydown', function(e) {
        if (e.keyCode == 13) {
            $('#button-search').trigger('click');
        }
    });

    $('select[name=\'category_id\']').on('change', function() {
        if (this.value == '0') {
            $('input[name=\'sub_category\']').prop('disabled', true);
        } else {
            $('input[name=\'sub_category\']').prop('disabled', false);
        }
    });

    $('select[name=\'category_id\']').trigger('change');
-->
</script>
<?php echo $footer; ?>

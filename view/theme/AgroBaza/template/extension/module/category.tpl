<button data-toggle="modal" data-target="#myModal_2" id="tmdqcOpt" class="submit-btn-1 mb-20 btn-hover-1 text-center w100 c-t" type="submit">Получить оптовый прайс</button>

<aside class="widget widget-categories box-shadow mb-20">
  <h6 class="widget-title mb-20">Категории</h6>
  <div id="cat-treeview-1" class="product-cat">
    <ul>
      <?php foreach ($categories as $category) { ?>
      <?php if ($category['category_id'] ) { ?>
      <li>
        <a href="<?php echo $category['href']; ?>">
          <?php echo $category['name']; ?>
        </a>
        <?php if ($category['children']) { ?>
        <ul>
          <?php foreach ($category['children'] as $child) { ?>
          <?php if ($child['category_id'] == $child_id) { ?>
          <li>
            <a href="<?php echo  $child['href'];  ?>" class="active">
              <?php echo $child['name']; ?>
            </a>
          </li>
          <?php } else { ?>
          <li>
            <a href="<?php echo  $child['href']; ?>">
              <?php echo $child['name']; ?>
            </a>
          </li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
        <?php } else { ?>
        <?php echo $category['name']; ?>
        <li>
          <a href="<?php echo $category['href']; ?>">
            <?php echo $category['name']; ?>
          </a>
        </li>
        <?php } ?>
      </li>
      <?php } ?>
    </ul>
  </div>
</aside>
  <button data-toggle="modal" data-target="#myModal_Dir" id="tmdqcDir" class="submit-btn-1  btn-hover-1 text-center w100" type="submit">Написать директору</button>

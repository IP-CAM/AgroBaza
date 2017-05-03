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
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <?php echo $description; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
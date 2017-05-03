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
    <?php $class = 'col-sm-12 col-md-9'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-12 col-md-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
      <?php echo $content_top; ?>
      <h1>
        <?php echo $heading_title; ?>
      </h1>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
        <fieldset>
          <div class="form-group">
            <label class="col-sm-2 control-label">
              <?php echo $entry_newsletter; ?>
            </label>
            <div class="col-sm-10">
              <?php if ($newsletter) { ?>
              <label class="radio-inline">
                <input type="radio" name="newsletter" value="1" checked="checked" />
                <?php echo $text_yes; ?> </label>
              <label class="radio-inline">
                <input type="radio" name="newsletter" value="0" />
                <?php echo $text_no; ?>
              </label>
              <?php } else { ?>
              <label class="radio-inline">
                <input type="radio" name="newsletter" value="1" />
                <?php echo $text_yes; ?> </label>
              <label class="radio-inline">
                <input type="radio" name="newsletter" value="0" checked="checked" />
                <?php echo $text_no; ?>
              </label>
              <?php } ?>
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
        </div>
      </form>
    </div>
  </div>
</div>
<?php echo $footer; ?>

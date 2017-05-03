<footer id="footer" class="footer-area">
    <div class="footer-top">
        <div class="footer-top-inner gray-bg">
            <div class="row">
                <div class="col-md-3">
                    <div class="single-footer">
                        <h4 class="footer-title border-left">Контакты</h4>
                        <div class="footer-contacts">
                            <p class="mb-0 roboto">
                                <i class="zmdi zmdi-phone"></i>
                                <a href="tel:<?php echo str_replace(array('+', ' ', '(' , ')', '-'), '', $telephone); ?>">
                                    <?php echo $telephone; ?>
                                </a>
                            </p>
                            <p class="mb-0 roboto">
                                <i class="zmdi zmdi-phone"></i>
                                <a href="tel:<?php echo str_replace(array('+', ' ', '(' , ')', '-'), '', $fax); ?>">
                                    <?php echo $fax; ?>
                                </a>
                            </p>
                            <p class="mb-0 roboto">
                                <i class="zmdi zmdi-email"></i>
                                <a href="mailto:<?php echo $email; ?>">
                                    <?php echo $email; ?>
                                </a>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 hidden-md hidden-sm">
                    <div class="single-footer">
                        <?php if ($informations) { ?>
                        <h4 class="footer-title border-left"><?php echo $text_information; ?></h4>
                        <ul class="footer-menu">
                            <?php foreach ($informations as $information) { ?>
                            <li>
                                <a href="<?php echo $information['href']; ?>">
                                    <i class="zmdi zmdi-circle"></i>
                                   <?php echo $information['title']; ?>
                                </a>
                            </li>
                            <?php } ?>
                        </ul>
                        <?php } ?>
                    </div>
                </div>
                <div class="col-lg-3 hidden-md hidden-sm">
                    <div class="single-footer">
                        <h4 class="footer-title border-left"><?php echo $text_account; ?></h4>
                        <ul class="footer-menu">
                            <?php if ($logged) { ?>
                            <li>
                                <a href="<?php echo $account; ?>">
                                    <i class="zmdi zmdi-circle"></i>
                                    <?php echo $text_account; ?>
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo $order; ?>">
                                    <i class="zmdi zmdi-circle"></i>
                                    <?php echo $text_order; ?>
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo $logout; ?>">
                                    <i class="zmdi zmdi-circle"></i>
                                    <?php echo $text_logout; ?>
                                </a>
                            </li>
                            <?php } else { ?>
                            <li>
                                <a href="<?php echo $register; ?>">
                                    <i class="zmdi zmdi-circle"></i>
                                    <?php echo $text_register; ?>
                                </a>
                            </li>
                            <li>
                                <a data-toggle="modal" data-target="#myModal" id="tmdqclogin">
                                    <i class="zmdi zmdi-circle"></i>
                                    <?php echo $text_login; ?>
                                </a>
                            </li>
                            <?php } ?>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="single-footer">
                        <h4 class="footer-title border-left">Обратрая связь</h4>
                        <div class="footer-message">
                            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                                <input type="text" name="name" placeholder="Ваше имя...">
                                <input type="text" name="email" placeholder="Ваш email...">
                                <textarea class="height-80" name="enquiry" placeholder="Ваше сообщение..."></textarea>
                                <button class="submit-btn-1 mt-20 btn-hover-1 text-right" type="submit">Отправить</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom black-bg">
        <div class="container-fluid">
            <div class="plr-185">
                <div class="copyright">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="copyright-text text-center">
                                <p>&copy;
                                    <a href="#" target="_blank">PARAMIK</a> 2017. Все права защищены.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<div class="modal fade" id="myModal" role="dialog">
    <div id="tmdlogin"></div>
</div>
<div class="modal fade" id="myModal_2" role="dialog">
    <div id="tmdOpt"></div>
</div>
<div class="modal fade" id="myModal_Dir" role="dialog">
    <div id="tmdDir"></div>
</div>
<!-- <script src="catalog/view/theme/AgroBaza/js/jquery-3.1.1.min.js"></script> -->
<!-- Bootstrap framework js -->
<!-- <script src="catalog/view/theme/AgroBaza/js/bootstrap.min.js"></script> -->
<!-- jquery.nivo.slider js -->
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/AgroBaza/js/jquery.nivo.slider.js"></script>
<!-- All js plugins included in this file. -->
<script src="catalog/view/theme/AgroBaza/js/plugins.js"></script>
<script src="catalog/view/theme/AgroBaza/js/readmore.min.js"></script>
<script src="catalog/view/theme/AgroBaza/js/jquery.form.min.js"></script>
<!-- <script src="catalog/view/theme/AgroBaza/js/ResizeSensor.min.js"></script> -->
<script src="catalog/view/theme/AgroBaza/js/theia-sticky-sidebar.min.js"></script>
<script src="catalog/view/theme/AgroBaza/js/jquery.sticky.js"></script>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-migrate/1.4.1/jquery-migrate.min.js"></script> -->
<!-- Main js file that contents all jQuery plugins activation. -->
<script src="catalog/view/theme/AgroBaza/js/main.js"></script>
</body>

</html>

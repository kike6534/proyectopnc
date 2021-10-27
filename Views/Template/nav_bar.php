<div id="sidebar" class="active">
    <div class="sidebar-wrapper active">
        <!-- <br> -->
        <div class="sidebar-header p-0 mt-4">
            <div class="d-flex justify-content-center">
                <div class="logo">
                    <a href="index.php"><img src="<?= media(); ?>/images/logo/pnc.png" alt="logo" style="height: 5rem;"></a>
                </div>

                <div class="toggler">
                    <a href="#" class="sidebar-hide d-xl-none d-block"><i class="bi bi-x bi-middle"></i></a>
                </div>
            </div>
        </div>
        <div class="sidebar-menu">
            <ul class="menu">
                <li class="sidebar-title"><b>
                        <h5>Menu principal</h5>
                    </b></li>

                <li class="sidebar-item <?php if ($data['page_name'] == 'home') {
                                            echo 'active';
                                        } ?>">
                    <a href="index.php" class='sidebar-link'>
                        <i class="bi bi-grid-fill"></i>
                        <span><b>Inicio</b></span>
                    </a>
                </li>
                <li class="sidebar-item  has-sub <?php if ($data['page_name'] == 'exp') {
                                                        echo 'active';
                                                    } ?>">
                    <a href="#" class='sidebar-link'>
                        <i class="bi bi-collection-fill"></i>
                        <span><b>Expediente</b></span>
                    </a>
                    <ul class="submenu  <?php if ($data['page_name'] == 'exp') {
                                            echo 'active';
                                        } ?>">
                        <li class="submenu-item <?php if ($item == '1') {
                                                    echo 'active';
                                                } ?>  ">
                            <a href="nuevo_expediente.php"><b>Nuevo expediente</b></a>
                        </li>
                        <li class="submenu-item ">
                            <a href="error404.php"><b>Expedientes</b></a>
                        </li>

                    </ul>
                </li>
                <li class="sidebar-item  has-sub <?php if ($data['page_name'] == 'unifor') {
                                                        echo 'active';
                                                    } ?>">
                    <a href="#" class='sidebar-link'>
                        <i class="bi-person-square"></i>
                        <span><b>Uniformes</b></span>
                    </a>
                    <ul class="submenu  <?php if ($data['page_name'] == 'unifor') {
                                            echo 'active';
                                        } ?>">
                        <li class="submenu-item <?php if ($item == '3') {
                                                    echo 'active';
                                                } ?>  ">
                            <a href="asignacion_uniformes.php"><b>Asignar Uniformes</b></a>
                        </li>
                        <li class="submenu-item <?php if ($item == '4') {
                                                    echo 'active';
                                                } ?>">
                            <a href="mantenimiento_uniformes.php"><b>Matenimiento uniformes</b></a>
                        </li>

                    </ul>
                </li>
                <li class="sidebar-item  has-sub">
                    <a href="#" class='sidebar-link'>
                        <i class="bi bi-truck"></i>
                        <span><b>Vehiculos</b></span>
                    </a>
                    <ul class="submenu ">
                        <li class="submenu-item ">
                            <a href="error404.php"><b>Nuevo expediente</b></a>
                        </li>
                        <li class="submenu-item ">
                            <a href="error404.php"><b>Mantenimiento de expediente</b></a>
                        </li>

                    </ul>
                </li>
                <li class="sidebar-item  has-sub">
                    <a href="#" class='sidebar-link'>
                        <i class="bi bi-wrench"></i>
                        <span><b>Armamento</b></span>
                    </a>
                    <ul class="submenu ">
                        <li class="submenu-item ">
                            <a href="error404.php"><b>Nuevo expediente</b></a>
                        </li>
                        <li class="submenu-item ">
                            <a href="error404.php"><b>Mantenimiento de expediente</b></a>
                        </li>

                    </ul>
                </li>
            </ul>
            </ul>


        </div>

        <!-- <button class="sidebar-toggler btn x"><i data-feather="x"></i></button> -->
    </div>
</div>
<!-- <script>
    $(".menu a").on("click", function(e) {
        $(".menu a").find(".active").removeClass("active");
        $(this).parent().addClass("active");
    });
</script> -->

        <!-- Navigation Bar-->
        <header id="topnav">
            <div class="topbar-main">
                <div class="container-fluid">

                    <!-- Logo container
                    <div class="logo">
                        <a href="index.php" class="logo">
                            <img src="public/assets/images/logo-sm.png" alt="" height="30">
                        </a>
                    </div>
                    End Logo container

                    <div class="menu-extras topbar-custom">
                       Search input 
                        <div class="search-wrap" id="search-wrap">
                            <div class="search-bar">
                                <input class="search-input" type="search" placeholder="Search" />
                                <a href="#" class="close-search toggle-search" data-target="#search-wrap">
                                    <i class="mdi mdi-close-circle"></i>
                                </a>
                            </div>
                        </div>

                        <ul class="list-inline float-right mb-0">
                            Search 
                            <li class="list-inline-item dropdown notification-list">
                                <a class="nav-link waves-effect toggle-search" href="#"  data-target="#search-wrap">
                                    <i class="mdi mdi-magnify noti-icon"></i>
                                </a>
                            </li>
                             Fullscreen 
                            <li class="list-inline-item dropdown notification-list hide-phone">
                                <a class="nav-link waves-effect" href="#" id="btn-fullscreen">
                                    <i class="mdi mdi-fullscreen noti-icon"></i>
                                </a>
                            </li>
                             language
                            <li class="list-inline-item dropdown notification-list hide-phone">
                                <a class="nav-link dropdown-toggle arrow-none waves-effect" data-toggle="dropdown" href="#" role="button"
                                   aria-haspopup="false" aria-expanded="false">
                                    English <img src="public/assets/images/flags/us_flag.jpg" class="ml-2" height="16" alt=""/>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right language-switch">
                                    <a class="dropdown-item" href="#"><img src="public/assets/images/flags/germany_flag.jpg" alt="" height="16"/><span> German </span></a>
                                    <a class="dropdown-item" href="#"><img src="public/assets/images/flags/italy_flag.jpg" alt="" height="16"/><span> Italian </span></a>
                                    <a class="dropdown-item" href="#"><img src="public/assets/images/flags/french_flag.jpg" alt="" height="16"/><span> French </span></a>
                                    <a class="dropdown-item" href="#"><img src="public/assets/images/flags/spain_flag.jpg" alt="" height="16"/><span> Spanish </span></a>
                                    <a class="dropdown-item" href="#"><img src="public/assets/images/flags/russia_flag.jpg" alt="" height="16"/><span> Russian </span></a>
                                </div>
                            </li>
                          notification
                            <li class="list-inline-item dropdown notification-list">
                                <a class="nav-link dropdown-toggle arrow-none waves-effect" data-toggle="dropdown" href="#" role="button"
                                   aria-haspopup="false" aria-expanded="false">
                                    <i class="ion-ios7-bell noti-icon"></i>
                                    <span class="badge badge-danger noti-icon-badge">3</span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right dropdown-arrow dropdown-menu-lg">
                                    item
                                    <div class="dropdown-item noti-title">
                                        <h5>Notification (3)</h5>
                                    </div>

                                
                                    <a href="javascript:void(0);" class="dropdown-item notify-item active">
                                        <div class="notify-icon bg-success"><i class="mdi mdi-cart-outline"></i></div>
                                        <p class="notify-details"><b>Your order is placed</b><small class="text-muted">Dummy text of the printing and typesetting industry.</small></p>
                                    </a>

                        
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <div class="notify-icon bg-warning"><i class="mdi mdi-message"></i></div>
                                        <p class="notify-details"><b>New Message received</b><small class="text-muted">You have 87 unread messages</small></p>
                                    </a>

                  
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <div class="notify-icon bg-info"><i class="mdi mdi-martini"></i></div>
                                        <p class="notify-details"><b>Your item is shipped</b><small class="text-muted">It is a long established fact that a reader will</small></p>
                                    </a>

                         
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        View All
                                    </a>

                                </div>
                            </li>
                  -->
                         
                            <li class="menu-item list-inline-item"> Actualización  
                                <a class="navbar-toggle nav-link">
                                    <div class="lines">
                                       
                                        <span></span>
                                        <span></span>
                                    </div>
                                </a>
                                <!-- End mobile menu toggle-->
                            </li>

                        </ul>
                    </div>
                    <!-- end menu-extras -->

                    <div class="clearfix"></div>

                </div> <!-- end container -->
            </div>
            <!-- end topbar-main -->

            <!-- MENU Start -->

            <div  style="background-color: white;   border-top: 2px solid black;
  border-right: 2px solid black;
  border-bottom: 2px solid black;
  border-left: 2px solid black;"> 
                <div class="container-fluid">
                    <div id="navigation">
                        <!-- Navigation Menu-->
                        <ul class="navigation-menu">

                            <li class="has-submenu">
                                <a href="<?= base_url(); ?>" style="color: #25396f;     font-weight: 700;
    
    
    margin-top: 0;"  >Retornar a Inicio</a>

                            </li>

                            <li class="has-submenu">
                                <a href="#"  style="color: #25396f;     font-weight: 700;
    
    
    margin-top: 0;" >Departamento</a>
                                <ul class="submenu megamenu">
                                    <li>
                                        <ul>
                                            
                                            <li><a href="<?= base_url2(); ?>/Discapacidad">Seguridad Publica Urbana</a></li>
                                            <li><a href="<?= base_url2(); ?>/Discapacidadconp">Seguridad con Parametro</a></li>
                                            <li><a href="<?= base_url2(); ?>/AgentesSancionesyfaltas">Sanciones y faltas BV17012</a></li>
                                            <li><a href="<?= base_url2(); ?>/AgentesAntiguosNuevos">Consulta Kelvin</a></li>            
                                            <li><a href="ui-cards.php">Investigaciones</a></li>
                                            <li><a href="ui-tabs-accordions.php">Inteligencia Policial</a></li>
                                            <li><a href="ui-modals.php">Areas Operativas</a></li>
                                            <li><a href="ui-images.php">Administraciones</a></li>
                                            <li><a href="<?= base_url2(); ?>/Permisos">Listado de Permisos por Agentes AC13055 Cristian</a></li>
                                            <li><a href="<?= base_url2(); ?>/licenciasporvencer">Licencias de conducir por vencer DJ17002</a></li>
                                            <li><a href="<?= base_url2(); ?>/CantidadPermisosAgentes">Cantidad de permisos por agente</a></li>

                                        </ul>
                                    </li>
                                    <li>
                                        <ul>
                                            <li><a href="<?= base_url2(); ?>/numeroTelefonoAgentes">Numeros Telefonicos(FO17007)</a></li>
                                             <li><a href="<?= base_url2(); ?>/Enfermedad">Enfermedades Agentes</a></li>
                                            <li><a href="<?= base_url2(); ?>/Enfermedadconp">Enfermedades por Fecha</a></li>
                                            <li><a href="<?= base_url2(); ?>/vehiculoDescargo">Vehiculos en proceso de Descargo</a></li>
                                            <li><a href="<?= base_url2(); ?>/especialidadagente">Especialidades de agentes</a></li>
                                            <li><a href="<?= base_url2(); ?>/llamadaemergencia">Contactos Emergencia</a></li> 


                                        </ul>
                                    </li>

                                </ul>
                            </li>

                            <li class="has-submenu">
                                <a href="#"  style="color: #25396f;     font-weight: 700;
    
    
    margin-top: 0;" >Delegación</a>
                                <ul class="submenu">
                                    <li class="has-submenu">
                                        <a href="#">Investigacion</a>
                                        <ul class="submenu">
                                            <li><a href="email-inbox.php">Apoyo Técnico</a></li>
                                            <li><a href="email-read.php">SubJefatura de Delegación</a></li>

                                        </ul>
                                    </li>




   
                                </ul>
                            </li>

                            <li class="has-submenu">
                                <a href="#"  style="color: #25396f;     font-weight: 700;
    
    
    margin-top: 0;" >Libros </a>
                                <ul class="submenu megamenu">
                                   
                                    <li>
                                        <ul>
                                            <li><a href="libro.php">Administrativo</a></li>
                                            <li><a href="pages-gallery.php">-</a></li>

                                        </ul>
                                    </li>
                                </ul>
                            </li>

                            <li class="has-submenu"  style="color: #25396f;     font-weight: 700;
    
    
    margin-top: 0;" >
                                <a href="#"  style="color: #25396f;     font-weight: 700;
    
    
    margin-top: 0;" >Novedades</a>

                            </li>

                            <li>
                                <a href="../frontend/" target="_blank"  style="color: #25396f;     font-weight: 700;
    
    
    margin-top: 0;" >Grupos</a>
                            </li>
                            <li class="has-submenu">
                                <a href="../frontend/" target="_blank"  style="color: #25396f;     font-weight: 700;
    
    
    margin-top: 0;" >Reportes</a>
                                <ul class="submenu" style="background-color: cadetblue;">
                                    <li><a href="ecommerce-product-list.php" style="color: white;">Libro de Actividades</a></li>
                                    <li><a href="ecommerce-product-grid.php">Estados de Actividades</a></li>

                                </ul>
                            </li>
                            <li class="has-submenu">
                                <a href="../frontend/" target="_blank"  style="color: #25396f;     font-weight: 700;
    
    
    margin-left: 100px;" >PNC</a>

                            </li>
                        </ul>
                        <!-- End navigation menu -->
                    </div> <!-- end #navigation -->
                </div> <!-- end container -->
            </div> <!-- end navbar-custom -->
        </header>
        <!-- End Navigation Bar-->

<nav class="navbar navbar-light border-bottom bg-white">
    <div class="container-fluid ">
        <header class="mb-3">
            <a href="#" class="burger-btn d-block d-xl-none">
                <i class="bi bi-justify fs-3"></i>
            </a>
        </header>

        <div class="dropdown">
            <a href="#" data-bs-toggle="dropdown" aria-expanded="false">
                <div class="user-menu d-flex">
                    <div class="user-name me-3 d-flex align-items-center">
                        <h6 class="mb-0 text-gray-600 text-center">Edgard Eduardo Rodriguez Alas</h6>
                    </div>
                    <div class="user-img d-flex align-items-center">
                        <div class="avatar avatar-md">
                            <img src="<?= media(); ?>/images/faces/1.jpg">
                        </div>
                    </div>

                </div>

            </a>
            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton">
                <li>
                    <h6 class="dropdown-header">Hola, Edgard!</h6>
                </li>
                <li><a class="dropdown-item" href="#"><i class="icon-mid bi bi-person-fill me-2 "></i> My
                        Perfil</a></li>
                <li><a class="dropdown-item" href="#"><i class="icon-mid bi bi-gear-fill me-2"></i>
                        Configuración</a></li>
                <li>
                    <hr class="dropdown-divider">
                </li>
                <li><a class="dropdown-item" href="#"><i class="icon-mid bi bi-box-arrow-left me-2"></i> Cerrar Sesión</a></li>
            </ul>
        </div>
    </div>
</nav>
<div id="divLoading" >
      <div>
        <img src="<?= media(); ?>/images/loading.svg" alt="Loading">
      </div>
</div>
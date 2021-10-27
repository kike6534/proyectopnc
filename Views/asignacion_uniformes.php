<?php include 'header.php'; ?>

<body>
    <div id="app">
        <!-- <div id="sidebar" class="active">-->
        <?php $page = 'unifor';
        $item = '3';
        include 'nav_bar.php';  ?>
        <?php include 'navbar-horizontal.php';  ?>
    </div>
    <div id="main">
        <header class="mb-3">
            <a href="#" class="burger-btn d-block d-xl-none">
                <i class="bi bi-justify fs-3"></i>
            </a>
        </header>

        <div class="page-heading">

            <!-- MODALES-->
            <?php include 'modal/md_uniforme.php'; ?>
            <?php include 'modal/md_asignar_accesorios.php'; ?>


      

            <div class="page-title">
                <div class="row">
                    <div class="col-12 col-md-6 order-md-1 order-last">
                        <h3>Asignacion Placas y ONI</h3>
                    </div>
                    <div class="col-12 col-md-6 order-md-2 order-first">
                        <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">

                        </nav>
                    </div>
                </div>
            </div>

               <!--Extra Large Modal Modal asignacion placas y oni -->
               <div class="modal fade text-left w-100" id="completeModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="myModalLabel16" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header bg-primary">
                            <h4 class="modal-title white" id="myModalLabel16">Asignacion accesorios
                            </h4>
                            <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                                <i data-feather="x"></i>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
               
                            <div class="col-md-6">
                                <div class="form-group has-icon-left">
                                    <label for="DUI">DUI</label>
                                    <div class="position-relative">
                                        <input type="text" class="form-control" placeholder="01010101-0" id="DUI">
                                        <div class="form-control-icon">
                                            <i class="bi bi-credit-card-2-front"></i>
                                        </div>

                                    </div>
                                </div>
                            </div>
            
                        <div class="col-md-6">
                            <label for="nombre">Nombre</label>
                            <input class="form-control" type="text" name="nombre" disabled>
                        </div>


                        <div class="col-md-6">
                            <div class="form-group has-icon-left">
                                <label for="Id-icon">Tipo de bordado ONI</label>
                                <select class="form-select" aria-label="Default select example">
                                    <option selected>Seleccione</option>
                                    <option value="1">Bordado amarillo fondo azul</option>
                                    <option value="2">Bordado gris fondo negro</option>
                                    <option value="3">Bordado negro fondo blanco</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group has-icon-left">
                                <label for="Id-icon">Placa</label>
                                <select class="form-select" aria-label="Default select example">
                                    <option selected>Seleccione</option>
                                    <option value="1">Placa policial</option>
                                    <option value="2">Placa DPP</option>
                                    <option value="3">Gafete metalico</option>
                                    <option value="3">Gafete bordado</option>
                                </select>
                            </div>
                        </div>


                             
              
                        <div class="col-md-6">
                            <div class="form-group has-icon-left">
                                <label for="Id-icon">Tipo de placa</label>
                                <select class="form-select" aria-label="Default select example">
                                    <option selected>Seleccione</option>
                                    <option value="1">A1</option>
                                    <option value="2">RA</option>
                                </select>
                            </div>
                        </div>
             

                        
                        <div class="col-md-6">
                            <div class="form-group has-icon-left">
                                <label for="Id-icon">Categoria</label>
                                <select class="form-select" aria-label="Default select example">
                                    <option selected>Seleccione</option>
                                    <option value="1">Ejemplo 1</option>
                                    <option value="2">Ejemplo 2</option>
                                    <option value="3">Ejemplo 3</option>
                                    <option value="3">Ejemplo 4</option>
                                </select>
                            </div>
                        </div>


                        <div class="col-md-6">
                        <div class="form-group has-icon-left">
                                        <label for="Id-icon">Agregar porta placas</label>
                                        <br>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                                            <label class="form-check-label" for="flexRadioDefault1">
                                                Si
                                            </label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                                            <label class="form-check-label" for="flexRadioDefault2">
                                                No
                                            </label>
                                        </div>
                                    </div>
                                    </div>

                                    <div class="col-md-6">
                                    <div class="form-group has-icon-left">
                                        <label for="Id-icon">Agregar porta nombres</label>
                                        <br>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                                            <label class="form-check-label" for="flexRadioDefault1">
                                                Si
                                            </label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                                            <label class="form-check-label" for="flexRadioDefault2">
                                                No
                                            </label>
                                        </div>
                                    </div>
                                    </div>

                                    <div class="col-md-6">
                            <div class="form-group has-icon-left">
                                <label for="DUI">Entregado por: (DUI)</label>
                                <div class="position-relative">
                                    <input type="text" class="form-control" placeholder="01010101-0" id="DUI">
                                    <div class="form-control-icon">
                                        <i class="bi bi-credit-card-2-front"></i>
                                    </div>

                                </div>
                            </div>
                        </div>

                     

                        <div class="col-md-6">
                            <div class="form-group has-icon-left">
                                <label for="Id-icon">Fecha de entrega</label>
                                <div class="position-relative">
                                    <input type="date" class="form-control" placeholder="" id="fecha_entrega">
                                    <div class="form-control-icon">
                                        <i class="bi bi-calendar"></i>
                                    </div>
                                </div>
                            </div>
                        </div>  
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-light-secondary" data-bs-dismiss="modal" onclick="Limpiar()">
                                <i class="bx bx-x d-block d-sm-none"></i>
                                <span class="d-none d-sm-block">Cancelar</span>
                            </button>
                            <button type="button" class="btn btn-primary ml-1" onclick="validarCampos()">
                                <i class="bx bx-check d-block d-sm-none"></i>
                                <span class="d-none d-sm-block">Registrar</span>
                            </button>
                        </div>
                    </div>
                </div>

            </div>


            <section id="basic-modals">
                <div class="row">
                    <div class="col-md-3 col-12">
                        <div class="card">

                            <div class="card-body">

                                <!-- Button trigger for basic modal -->

                                <div class="btn-group-vertical" role="group" aria-label="Basic example">
                                    <button type="button" data-bs-toggle="modal" data-bs-target="#uniforme" class="btn btn-outline-primary">Uniforme</button>
                                    <button type="button" data-bs-toggle="modal" data-bs-target="#completeModal" class="btn btn-outline-primary">Placas y ONIS</button>
                                    <button type="button" data-bs-toggle="modal" data-bs-target="#md_accesorios" class="btn btn-outline-primary">Equipo Policial / Acceesorios</button>


                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-9 col-12">
                        <div class="card">

                            <div class="card-content">
                                <div class="card-body">
                                    <table class="table table-striped" id="table1">
                                        <thead>
                                            <tr>
                                                <th>ONI</th>
                                                <th>Asignacion</th>
                                                <th>Tipo Uniforme</th>
                                                <th>Delegacion</th>
                                                <th>Acciones</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>451258547</td>
                                                <td>25/08/2020</td>
                                                <td>Uniforme Policial</td>
                                                <td>San Vicente</td>
                                            </tr>
                                            <tr>
                                                <td>451258777</td>
                                                <td>25/08/2021</td>
                                                <td>Uniforme Policial</td>
                                                <td>San Vicente</td>
                                            </tr>
                                            <tr>
                                                <td>451200124</td>
                                                <td>14/02/2021</td>
                                                <td>Unifome Policial Policial</td>
                                                <td>San Vicente</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

            </section>

            <script src="../assets/vendors/simple-datatables/simple-datatables.js"></script>
            <script>
                // Simple Datatable
                let table1 = document.querySelector('#table1');
                let dataTable = new simpleDatatables.DataTable(table1);
            </script>
            <?php include 'footer.php'; ?>

        </div>
    </div>

</body>
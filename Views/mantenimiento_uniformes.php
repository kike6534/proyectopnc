<?php include 'header.php'; ?>

<body>
    <div id="app">
        <!-- <div id="sidebar" class="active">-->
        <?php $page = 'unifor';
        $item = '4';
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
            <?php include 'modal/md_reg_accesorios.php'; ?>
            <?php include 'modal/md_reg_uniforme.php'; ?>
            <?php include 'modal/md_regunifor_pla_onis.php'; ?>



            <div class="page-title">
                <div class="row">
                    <div class="col-12 col-md-6 order-md-1 order-last">
                        <h3>Mantenimiento Uniformes</h3>
                    </div>
                    <div class="col-12 col-md-6 order-md-2 order-first">
                        <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">

                        </nav>
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
                                    <button type="button" data-bs-toggle="modal" data-bs-target="#md_regis_uniforme" class="btn btn-outline-primary">Uniforme</button>
                                    <button type="button" data-bs-toggle="modal" data-bs-target="#md_regis_ponis" class="btn btn-outline-primary">Placas y ONIS</button>
                                    <button type="button" data-bs-toggle="modal" data-bs-target="#md_regis_accesorios" class="btn btn-outline-primary">Equipo Policial / Acceesorios</button>


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
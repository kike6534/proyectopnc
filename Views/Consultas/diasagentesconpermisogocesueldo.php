<?php
//consulta 30(PM17006)
headerAdmin($data);

?>

<body>

    <!-- <div id="sidebar" class="active"> -->
    <?php
    headerstyle1($data);
    navbar1($data);
    ?>
    <!-- </div> -->

    <div style="margin-top: 90px;">

        <div class="page-content">
            <section class="row">
                <div class="col-12 col-lg-12">


                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <h3><i class="fas fa-allergies"></i> <?= $data['page_title'] ?></h3>
                            </div>
                            <div class="card-body" style="margin-top: 10px;">
                                <div class="table-responsive">
                                    <table class="table table-striped" id="tablacdiasgsueldo">
                                        <thead>
                                            <tr>
                                                <th>Rango</th>
                                                <th>ONI</th>
                                                <th>Nombre</th>
                                                <th>Cantidad de dias del permiso</th>
                                                <th>Motivo</th>
                                            </tr>
                                        </thead>
                                        <tbody id="datos_tablacdiasgsueldo">

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </section>
        </div>

        <?php footerAdmin($data);
        footer1($data);
        ?>

    </div>


</body>
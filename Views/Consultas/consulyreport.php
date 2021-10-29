<?php include 'layouts/header.php'; ?>

<!-- C3 charts css -->
<link href="public/assets/plugins/c3/c3.min.css" rel="stylesheet" type="text/css" />

<?php include 'layouts/headerStyle.php'; ?>

    <body>

        <?php include 'layouts/loader.php'; ?>

        <?php include 'layouts/navbar.php'; ?>

        <div class="wrapper">
            <div class="container-fluid">

                <!-- Page-Title -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="page-title-box">
                            <div class="btn-group pull-right">
                                <ol class="breadcrumb hide-phone p-0 m-0">
                                    <li class="breadcrumb-item"><a href="#">Listado</a></li>
                                    <li class="breadcrumb-item active"  >Actividades de Hoy</li>
                                </ol>
                            </div>
                            <h4 class="page-title" >Actividades Activas</h4>
                        </div>
                    </div>
                </div>
                <!-- end page title end breadcrumb -->


                

                
                <!-- end row -->



                

            </div> <!-- end container -->
        </div>
        <!-- end wrapper -->

        <?php include 'layouts/footer.php'; ?>

<?php include 'layouts/footerScript.php'; ?>

<!-- Peity chart JS -->
<script src="public/assets/plugins/peity-chart/jquery.peity.min.js"></script>
<!--C3 Chart-->
<script type="text/javascript" src="public/assets/plugins/d3/d3.min.js"></script>
<script type="text/javascript" src="public/assets/plugins/c3/c3.min.js"></script>
<!-- Jvector Map js -->
<script src="public/assets/plugins/jvectormap/jquery-jvectormap-2.0.2.min.js"></script>
<script src="public/assets/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="public/assets/plugins/jvectormap/gdp-data.js"></script>
<!-- KNOB JS -->
<script src="public/assets/plugins/jquery-knob/excanvas.js"></script>
<script src="public/assets/plugins/jquery-knob/jquery.knob.js"></script>
<!-- Page specific js -->
<script src="public/assets/pages/dashboard.js"></script>
<!-- App js -->
<script src="public/assets/js/app.js"></script>

    </body>
</html>
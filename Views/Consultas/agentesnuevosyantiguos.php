
<?php 
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
                <div class="col-9 col-lg-9">

                    
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header" >
                                 <h3><i class="fas fa-allergies"></i> <?= $data['page_title'] ?></h3>
                            </div>

                            <div class="row">
                           
                            </div>
                            
                            <div class="card-body" style="margin-top: 10px;">
                                <div class="table-responsive">
                                    <table class="table table-striped" id="tableAgentes">
                                        <thead>
                                            <tr>
                                              <th>Dui</th>
                                              <th>Nombre</th>
                                              <th>Apellido</th>
                                              <th>Sexo</th>
                                              <th>Año promoción</th>
                                              <th>edad</th>
                                            </tr>
                                        </thead>
                                        <tbody id="datos_tabla_agentes">
                                            
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
  
                </div>
                <div class="col-xl-3">
                        <div class="card m-b-20">
                            <div class="card-body">


                                <div class="card">
                            <div class="card-header">
                                <h4>Años de promoción porcentuados</h4>
                            </div>
                            <div class="card-body">
                                <div id="chart-visitors-profile"></div>
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
    <script src="../assets/vendors/apexcharts/apexcharts.js"></script>
    

</body>
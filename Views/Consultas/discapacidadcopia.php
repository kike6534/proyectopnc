
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
                            <div style="margin-top: 15px; margin-left: 25px;" class="col-md-3">
                    <label>Tipo</label>

                     </div>
                    <div style="margin-top: 10px; margin-left: -120px; margin-bottom: 10px;" class="col-md-3">
                    <select class="form-select" onchange="funci()" style="width: 200px;" data-live-search="true" id="datos" name="datos" required >
               
     
                    </select>
                            </div>
                            </div>
                            
                            <div class="card-body" style="margin-top: 10px;">
                                <div class="table-responsive">
                                    <table class="table table-striped" id="tablesanciones">
                                        <thead>
                                            <tr>
                                              <th>ONI</th>
                                              <th>Nombre</th>
                                              <th>Apellido</th>
                                              <th>Tipo de Discapacidad</th>
                                              <th>Acciones</th>
                                            </tr>
                                        </thead>
                                        <tbody id="datos_tablasanciones">
                                            
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
                                
                                <h4 class="mt-0 header-title">Discapacidad Porcentuada</h4>

                                <ul class="list-inline widget-chart m-t-20 m-b-15 text-center">
                                    <li class="list-inline-item">
                                        <h5 class="mb-0" id="condis"></h5>
                                        <p class="text-muted font-14">Con discapacidad</p>
                                    </li>
                                    <li class="list-inline-item">
                                        <h5 class="mb-0" id="sindis"></h5>
                                        <p class="text-muted font-14">Sin discapacidad</p>
                                    </li>
                                </ul>

                                <div class="card">
                            <div class="card-header">
                                <h4>Visitors Profile</h4>
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
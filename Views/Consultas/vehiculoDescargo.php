
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
                                 <h3><i class="fas fa-allergies"></i> <?= $data['page_title'] ?>

                                </h3>
                            </div>
                            <div class="card-body" style="margin-top: 10px;">
                                <div class="table-responsive">
                                    <table class="table table-striped" id="tableVehiculo">
                                        <thead>
                                            <tr>
                                              <th>Placa</th>
                                              <th>Legalidad</th>
                                              <th>Funcion</th>
                                              <th>Año</th>
                                            </tr>
                                        </thead>
                                        <tbody id="datos_vehiculo_descarga">
                                            
                                        </tbody >
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
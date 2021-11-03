
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
                                 <?php $fcha = date("Y-m-d"); ?>
                            <div style="margin-top: 15px; margin-left: 25px;" class="col-md-4">
                    <label>Fecha Inicio: </label>
                     <input type="date" name="feini" id="feini" value="<?php echo $fcha; ?>">
                     </div>
                    <div style="margin-top: 10px; margin-left: -120px; margin-bottom: 10px;" class="col-md-4">
                        
                        <label>Fecha Fin: </label>
                       
                        <input type="date" name="fefin" id="fefin" value="<?php echo $fcha; ?>">
                    <!--<select class="form-select" onchange="funci()" style="width: 200px;" data-live-search="true" id="listProve" name="listProve" required >
               
     
                    </select>-->
                            </div>
                            <div style="margin-top: 10px; margin-left: -120px; margin-bottom: 10px;" class="col-md-3">
                                <button type="button" class="btn btn-info" onclick="funci1()"><i class="fas fa-list-ol"></i> &nbsp;&nbsp;Listar por Fechas</button>
                            </div>
                            </div>
                            <div class="card-body" style="margin-top: 10px;">
                                <div class="table-responsive">
                                    <table class="table table-striped" id="tableRoles">
                                        <thead>
                                            <tr>
                                                <th>DUI</th>
                                              <th>Fecha</th>
                                              <th>Nombre</th>
                                              <th>Apellido</th>
                                              <th>Enfermedad Vigente</th>
                                              <th>Sexo</th>
                                              <th>Estatura</th>
                                              <th>Peso</th>
                                              <th>Nombre de Enfermedad</th>
                                              <th>Tipo de Enfermedad</th>
                                              <th>Acciones</th>
                                            </tr>
                                        </thead>
                                        <tbody id="datos_tabla">
                                            
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
                                
                                <h4 class="mt-0 header-title">Enfermedades vigentes Porcentuada</h4>

                                <ul class="list-inline widget-chart m-t-20 m-b-15 text-center">
                                    <li class="list-inline-item">
                                        <h5 class="mb-0" id="condis"></h5>
                                        <p class="text-muted font-14">Vigente</p>
                                    </li>
                                    <li class="list-inline-item">
                                        <h5 class="mb-0" id="sindis"></h5>
                                        <p class="text-muted font-14">No Vigente</p>
                                    </li>
                                </ul>

                                <div class="card">
                            <div class="card-header">
                                <h4>Vista Previa</h4>
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
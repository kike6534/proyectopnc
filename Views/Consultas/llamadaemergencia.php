<?php  
  headerAdmin($data);  
 
?>  
<body> 
     
        <!-- Consulta de informacion actualizada del expediente de cada policia para casos de emergencia 
            Marta Gloria Campos Guzman CG15042
         -->   
        <?php  
                   headerstyle1($data);  
                   navbar1($data);  
        ?>  
        <!-- </div> --> 
     
    <div style="margin-top: 90px;"> 
 
        <div class="page-content"> 
            <section class="row"> 
                <div class="card-body"> 
 
                     
                    <div class="col-md-12"> 
                        <div class="card"> 
                            <div class="card-header" > 
                                 <h3><i class="fas fa-allergies"></i> <?= $data['page_title'] ?> 
 
                                </h3> 
                            </div> 
                            <div class="card-body" style="margin-top: 10px;"> 
                                <div class="table-responsive"> 
                                    <table class="table table-striped" id="tablellamadaemergencia"> 
                                        <thead> 
                                            <tr> 
                                              <th>ONI</th> 
                                              <th>Agente</th> 
                                              <th>Tipo Sangre</th> 
                                              <th>Familiar</th> 
                                              <th>Telefono</th> 
                                            </tr> 
                                        </thead> 
                                        <tbody id="datos_tabla_llamadaemergencia"> 
                                             
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

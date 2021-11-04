
<?php 
  headerAdmin($data); 

?> 
<body>
    
        <!--Números Telefónicos de los Agentes Jose Angel Fuentes Orellana FO17007 -->  
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
                                    <table class="table table-striped" id="tableespecialidad">
                                        <thead>
                                            <tr>
                                              <th>ONI</th>
                                              <th>Rango</th>
                                              <th>Nombre</th>
                                              <th>especialidad</th>
                                              
                                            </tr>
                                        </thead>
                                        <tbody id="datos_tabla_especialidad">
                                            
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
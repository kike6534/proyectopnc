
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
                            <div class="btn-group-horizontal" role="group" aria-label="Basic example">
                            <ul class="header-dropdown m-r--5">
                                    <button type="button"  onclick="funcionper()" id="tipop" name="tipop" value="1" class="btn btn-outline-primary">Con Gose de Sueldo</button>
                                    <button type="button"  onclick="funcionper2()" id="tipop2" name="tipop2" value="2" class="btn btn-outline-primary">Sin Gose de Sueldo</button>

                            </ul>
                                </div>
                                <hr class="sidebar-divider d-none d-md-block">
                                <div class="table-responsive">
                                    <table class="table table-striped" id="tableRoles">
                                        <thead>
                                            <tr>                                                
                                              <th>ONI</th>
                                              <th>Nombre</th>
                                              <th>Apellido</th>
                                              <th>Rango</th>
                                              <th>Permisos</th>
                                              <th>Permisos Disponibles</th>
                                            </tr>
                                        </thead>
                                        <tbody id="datos_tabla">
                                            
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

<?php 
  headerAdmin($data); 
  getModal('modalRoles',$data);
?> 
<body>
    <div id="app">
        <!-- <div id="sidebar" class="active"> -->  
        <?php 
          navBar($data); 
          navBarHor($data); 
        ?> 
        <!-- </div> -->
    </div>
    <div id="main">

        <div class="page-content">
            <section class="row">
                <div class="col-12 col-lg-12">

                    
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                 <h3><i class="fas fa-user-tag"></i> <?= $data['page_title'] ?>
                                    <?php //if (!empty($_SESSION['permisosMod']['escribir'])) { ?>
                                        <button class="btn btn-primary" type="button" onclick="openModal();" ><i class="fas fa-plus-circle"></i> Nuevo</button>
                                    <?php //} ?>
                                </h3>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped" id="tableRoles">
                                        <thead>
                                            <tr>  
                                              <th>ID</th>
                                              <th>Rol</th>
                                              <th>Descripcion</th>
                                              <th>Estado</th>
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
            </section>
        </div>
    
    <?php footerAdmin($data); ?>

    </div>
    

</body>
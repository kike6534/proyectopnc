
<?php 
  headerAdmin($data); 

?> 
<body>
    
        <!--Números Telefónicos de los Agentes Jose Angel Fuentes Orellana FO17007 -->  
        <?php 
                   headerstyle1($data); 
                   navbar1($data); 
                   
        ?> 
        <link href="<?= media(); ?>/css/select2.css" rel="stylesheet" />
        
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
                           
                                <div class="row gap-3">
                                    <div class="col-4 px-0 mb-3 ">
                                        <label for="agentes" class="form-label">Seleccione un agente</label>
                                        <select id="agentes" class="form-select select2">
                                            <option value="-1">Seleccione un agente</option>
                                        </select>
                                    </div>
                                     <div class="col-2 px-0 ">
                                        <label for="agentes" class="form-label">Seleccione un mes</label>
                                        <select id="meses" class="form-select select2">
                                            <option value="1">Enero</option>
                                            <option value="2">Febrero</option>
                                            <option value="3">Marzo</option>
                                            <option value="4">Abril</option>
                                            <option value="5">Mayo</option>
                                            <option value="6">Junio</option>
                                            <option value="7">Julio</option>
                                            <option value="8">Agoto</option>
                                            <option value="9">Septiembre</option>
                                            <option value="10">Octubre</option>
                                            <option value="11">Noviembre</option>
                                            <option value="12">Diciembre</option>
                                        </select>
                                    </div>
                                </div>
                                 <div class="row">
                                <div class="col px-0">
                                    <h5>Cantidad de permisos en este mes: <span id="cantidad">0</span></h5>
                                </div>
                            </div>
                                <div class="table-responsive">
                                    <table class="table table-striped" id="tablacantidadPermisos">
                                        <thead>
                                            <tr>
                                              <th>Fecha de inicio</th>
                                              <th>Fecha de fin</th>
                                              <th>Tiempo restante</th>
                                              <th>Motivo de permios</th>
                                              <th>Tipo de permiso</th>
                                            </tr>
                                        </thead>
                                        <tbody id="datos_tabla_tel">
                                            
                                        </tbody >
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
  
                </div>
            </section>
        </div>
    
    <?php 
        footerAdmin($data);
          footer1($data); 
          
           ?>
<script src="<?= media(); ?>/js/plugins/select2.min.js"></script>
    </div>
    

</body>
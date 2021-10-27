    <!DOCTYPE html>
    <html>

    <div class="modal fade text-left" id="md_sancion" tabindex="-1" role="dialog" aria-labelledby="myModalLabel17" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered  modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header bg-primary">
                    <h4 class="modal-title white" id="myModalLabel16">Editar Sancion
                    </h4>
                    <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                        <i data-feather="x"></i>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">

                        <div class="col-md-6 col-12">

                           <!-- 1 col -->

                           <div class="form-group has-icon-left">
                            <label for="Apellido-icon">DUI del policia</label>
                            <div class="position-relative">
                                <input type="text" class="form-control" disabled="true" placeholder="12345679-0" id="Apellido-icon">
                                <div class="form-control-icon">
                                    <i class="bi bi-credit-card-2-front"></i>
                                </div>

                            </div>
                            <!-- aqui se obtendia el nombre del policia atravez de su dui -->
                            <medium class="text-muted">*Nombre de personal*</medium>
                        </div>

                        <div class="form-group has-icon-left">



                            <label for="Id-icon">Sancion</label>
                            <div class="input-group">
                                <select class="form-select">
                                    <option value="square">Seleccione...</option>
                                    <option value="square">Opcion 1</option>
                                    <option value="square">Opcion 2</option>
                                    <option value="square">Opcion 3</option>
                                </select>
                                <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#md_addmotivo" type="button" id="inputGroupFileAddon04">Agregar</button>

                            </div>
                        </div>









                    </div>
                    <div class="col-md-6 col-12">
                       <!-- 2 col -->
                       <div class="form-group has-icon-left">
                        <label for="Correo-icon">Fecha de inicio</label>
                        <div class="position-relative">
                            <?php $hoy = getdate(); ?>
                            <input type="date" max="<?php $hoy = date("Y-m-d");
                                echo $hoy; ?>" class="form-control" placeholder="" id="Id-icon">

                                <div class="form-control-icon">
                                    <i class="bi bi-calendar"></i>
                                </div>
                            </div>
                        </div>
                        <div class="form-group has-icon-left">
                            <label for="Correo-icon">Fecha de fin</label>
                            <div class="position-relative">
                                <?php $hoy = getdate(); ?>
                                <input type="date" min="<?php $hoy = date("Y-m-d");
                                    echo $hoy; ?>" class="form-control" placeholder="" id="Id-icon">

                                    <div class="form-control-icon">
                                        <i class="bi bi-calendar"></i>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-light-secondary" data-bs-dismiss="modal" onclick="Limpiar()">
                            <i class="bx bx-x d-block d-sm-none"></i>
                            <span class="d-none d-sm-block">Cancelar</span>
                        </button>
                        <button type="button" class="btn btn-primary ml-1" onclick="validarCampos()">
                            <i class="bx bx-check d-block d-sm-none"></i>
                            <span class="d-none d-sm-block">Registrar</span>
                        </button>

                    </div>
                </div>
            </div>
        </div>
        </html>
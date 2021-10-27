    <!DOCTYPE html>
    <html>

    <div class="modal fade text-left" id="md_permisos" tabindex="-1" role="dialog" aria-labelledby="myModalLabel17" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered  modal-xl" role="document">
            <div class="modal-content">
                <div class="modal-header bg-primary">
                    <h4 class="modal-title white" id="myModalLabel16">Editar permiso
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
                            <label for="Id-icon"><b>Tipo de permiso</b></label>
                            <br>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                                <label class="form-check-label" for="flexRadioDefault1">
                                    <b>Con goce de sueldo</b>
                                </label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                                <label class="form-check-label" for="flexRadioDefault2">
                                    <b>Sin goce de sueldo</b>
                                </label>
                            </div>

                        </div>
                        <div class="form-group has-icon-left">
                            <label for="Apellido-icon">DUI del solicitante</label>
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
                            <label for="Apellido-icon">DUI del jefe inmediato</label>
                            <div class="position-relative">
                                <input type="text" class="form-control" placeholder="12345679-0" id="Apellido-icon">
                                <div class="form-control-icon">
                                    <i class="bi bi-credit-card-2-front"></i>
                                </div>

                            </div>
                            <!-- aqui se obtendia el nombre del policia atravez de su dui -->
                            <medium class="text-muted">*Nombre de personal*</medium>
                        </div>
                        <div class="form-group has-icon-left">
                            <label for="Apellido-icon">DUI del jefe inmediato superior</label>
                            <div class="position-relative">
                                <input type="text" class="form-control" placeholder="12345679-0" id="Apellido-icon">
                                <div class="form-control-icon">
                                    <i class="bi bi-credit-card-2-front"></i>
                                </div>

                            </div>
                            <!-- aqui se obtendia el nombre del policia atravez de su dui -->
                            <medium class="text-muted">*Nombre de personal*</medium>
                        </div>


                        <div class="form-group has-icon-left">
                            <label for="Apellido-icon">Motivo</label>
                            <div class="position-relative">
                                <input type="text" class="form-control" placeholder="" id="Apellido-icon">
                                <div class="form-control-icon">

                                </div>
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
                            <div class="form-group has-icon-left">



                                <label for="Id-icon">Motivo de permiso</label>
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
                            <input type="checkbox" class="form-check-input" id="checkbox2">
                            <label for="checkbox2">Aprovado</label>
                            <div class="form-group has-icon-left">
                                <label for="Apellido-icon">Imagen</label>
                                <div class="position-relative">
                                    <input class="form-control" type="file" id="formFile">
                                    <div class="form-control-icon">
                                        <i class="bi bi-camera"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group has-icon-left">
                                <label for="Nombre-icon">Observaciones</label>
                                <div class="position-relative">
                                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                                    <div class="form-control-icon">

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

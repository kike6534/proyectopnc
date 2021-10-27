<!DOCTYPE html>
<html>
<div class="modal fade text-left" id="md_enfermedad" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="myModalLabel17" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered  modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h4 class="modal-title white" id="myModalLabel16">Enfermedades
                </h4>
                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                    <i data-feather="x"></i>
                </button>
            </div>
            <div class="modal-body">
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6 col-12">

                            <div class="form-group has-icon-left">
                                <label for="Apellido-icon">DUI del personal</label>
                                <div class="position-relative">
                                    <input type="text" class="form-control" placeholder="12345679-0" id="Apellido-icon">
                                    <div class="form-control-icon">
                                        <i class="bi bi-credit-card-2-front"></i>
                                    </div>

                                </div>
                                <!-- aqui se obtendia el nombre del policia atravez de su dui -->
                                <input type="text" readonly="readonly" class="form-control" value="Nombre del personal" id="Apellido-icon">
                            </div>

                            <div class="form-group has-icon-left">
                                <label for="Correo-icon">Fecha de deteccion</label>
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



                                <label for="Id-icon">Enfermedad</label>
                                <div class="input-group">
                                    <select class="form-select">
                                        <option value="square">Seleccione...</option>
                                        <option value="square">Opcion 1</option>
                                        <option value="square">Opcion 2</option>
                                        <option value="square">Opcion 3</option>
                                    </select>
                                    <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#md_addenfermedad" type="button" id="inputGroupFileAddon04">Agregar</button>
                                </div>
                            </div>



                        </div>


                        <div class="col-md-6 col-12">
                            <div class="form-group has-icon-left">
                                <label for="Id-icon">Vigencia de enfermedad</label>
                                <br>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                                    <label class="form-check-label" for="flexRadioDefault1">
                                        En vigencia
                                    </label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                                    <label class="form-check-label" for="flexRadioDefault2">
                                        No esta en vigencia
                                    </label>
                                </div>

                            </div>
                            <div class="form-group has-icon-left">
                                <label for="Apellido-icon">Documentacion</label>
                                <div class="position-relative">
                                    <input class="form-control" type="file" id="formFile">
                                    <div class="form-control-icon">
                                        <i class="bi bi-archive"></i>
                                    </div>
                                </div>
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
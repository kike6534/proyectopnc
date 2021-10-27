    <!DOCTYPE html>
    <html>

    <div class="modal fade text-left" id="md_promocion" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="myModalLabel17" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered  modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header bg-primary">
                    <h4 class="modal-title white" id="myModalLabel16">Promocion
                    </h4>
                    <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                        <i data-feather="x"></i>
                    </button>
                </div>
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
                            <?php
                            $cont = date('Y');
                            ?>
                            <div class="form-group has-icon-left">
                                <label for="Id-icon">Año de promocion</label>
                                <select class="form-select">
                                    <?php while ($cont >= 1950) { ?>
                                        <option value="<?php echo ($cont); ?>"><?php echo ($cont); ?></option>
                                    <?php $cont = ($cont - 1);
                                    } ?>

                                </select>
                            </div>
                        </div>

                        <div class="col-md-6 col-12">
                            <div class="form-group has-icon-left">
                                <label for="Apellido-icon">Numero de promocion</label>
                                <div class="position-relative">
                                    <input type="text" class="form-control" placeholder="Ingrese numero de promocion" id="Apellido-icon">
                                    <div class="form-control-icon">
                                        <i class="bi bi-credit-card-2-front"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group has-icon-left">
                                <label for="Id-icon">Nivel</label>
                                <select class="form-select">
                                    <option value="square">Seleccione...</option>
                                    <option value="square">Opcion 1</option>
                                    <option value="square">Opcion 2</option>
                                    <option value="square">Opcion 3</option>
                                </select>
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
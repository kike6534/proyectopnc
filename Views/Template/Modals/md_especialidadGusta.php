<!DOCTYPE html>
<html>

<div class="modal fade text-left" id="modalhabilidad" tabindex="-1" data-bs-backdrop="static" data-bs-keyboard="false" role="dialog" aria-labelledby="myModalLabel17" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h4 class="modal-title white" id="myModalLabel16">Habilidades Técnicas
                </h4>
                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                    <i data-feather="x"></i>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="">

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
                        <label for="Id-icon">Habilidades</label>
                        <div class="input-group">
                            <select class="form-select">
                                <option value="square">Seleccione...</option>
                                <option value="square">Mantenimiento de Computadoras</option>
                                <option value="square">Electricidad doméstica</option>
                                <option value="square">Mecánica automotriz</option>
                            </select>
                            <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#md_addhabilidad" type="button" id="inputGroupFileAddon04">Agregar</button>
                        </div>

                        <div class="form-group has-icon-left">
                            <label for="Apellido-icon">Fecha</label>
                            <div class="position-relative">
                                <input type="date" class="form-control" id="Apellido-icon">
                                <div class="form-control-icon">
                                    <i class="bi bi-credit-card-2-front"></i>
                                </div>
                            </div>
                        </div>
                        <!-- <div class="form-group has-icon-left">
                            <label for="Id-icon">Tipo Especialidad</label>
                            <br>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                                <label class="form-check-label" for="flexRadioDefault1">
                                    Le gusta
                                </label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                                <label class="form-check-label" for="flexRadioDefault2">
                                    La desempeña
                                </label>
                            </div>

                        </div> -->
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
</div>

</html>
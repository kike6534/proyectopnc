<!DOCTYPE html>
<html>

<div class="modal fade text-left" id="md_armas" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="myModalLabel20" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h4 class="modal-title white" id="myModalLabel20">Arma
                </h4>
                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                    <i data-feather="x"></i>
                </button>
            </div>
            <div class="modal-body">
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
                    <label for="Id-icon">Arma</label>
                    <select class="choices form-select">

                        <option value="square">Seleccione...</option>
                        <option value="square">Ametralladoras</option>
                        <option value="rectangle">Fusiles de francotirador</option>
                        <option value="rombo">Fusiles de asalto</option>

                    </select>
                </div>


                <div class="form-group has-icon-left">
                    <label for="Apellido-icon">Fecha de asignación</label>
                    <div class="position-relative">
                        <input type="date" class="form-control" placeholder="####-###-#####-##-#" id="Serie-icon">
                        <div class="form-control-icon">
                            <i class="bi bi-card-heading"></i>
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
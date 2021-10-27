<!DOCTYPE html>
<html>

<div class="modal fade text-left" id="md_lic_armas" tabindex="-1" data-bs-backdrop="static" data-bs-keyboard="false" role="dialog" aria-labelledby="myModalLabel20" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h4 class="modal-title white" id="myModalLabel20">Licencia para Armas
                </h4>
                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                    <i data-feather="x"></i>
                </button>
            </div>
            <div class="modal-body">

                <div class="form-group has-icon-left">
                    <label for="Apellido-icon">DUI - Nombre</label>
                    <div class="position-relative">
                        <input type="text" disabled class="form-control" placeholder="########-#" id="Serie-icon">
                        <div class="form-control-icon">
                            <i class="bi bi-card-heading"></i>
                        </div>
                    </div>
                </div>

                <div class="form-group has-icon-left">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                        <label class="form-check-label" for="flexCheckDefault">
                            Vigente
                        </label>
                    </div>
                </div>

                <div class="form-group has-icon-left">
                    <label for="Apellido-icon">Numero de licencia de arma</label>
                    <div class="position-relative">
                        <input type="text" class="form-control" placeholder="####-###-#####" id="Serie-icon">
                        <div class="form-control-icon">
                            <i class="bi bi-card-heading"></i>
                        </div>
                    </div>
                </div>
                <div class="form-group has-icon-left">
                    <label for="Apellido-icon">Fecha de licencia (portar arma)</label>
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
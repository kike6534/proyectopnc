<!DOCTYPE html>
<html>

<div class="modal fade text-left" id="md_addhabilidad" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="myModalLabel17" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-md" role="document">
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
                            <label for="Apellido-icon">Habilidades Técnicas</label>
                            <div class="position-relative">
                                <input type="text" class="form-control" placeholder="Ingrese la habilidad" id="Apellido-icon">
                                <div class="form-control-icon">
                                    <i class="bi bi-tools"></i>
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
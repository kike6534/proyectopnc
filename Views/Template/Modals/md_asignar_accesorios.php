<!DOCTYPE html>
<html>

<div class="modal fade text-left" id="md_accesorios" tabindex="-1" role="dialog" aria-labelledby="myModalLabel17" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h4 class="modal-title white" id="myModalLabel16">Asignacion Accesorios
                </h4>
                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                    <i data-feather="x"></i>
                </button>
            </div>
            <div class="modal-body">

                <form>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="col-md-6">
                                <div class="form-group has-icon-left">
                                    <label for="DUI">DUI</label>
                                    <div class="position-relative">
                                        <input type="text" class="form-control" placeholder="01010101-0" id="DUI">
                                        <div class="form-control-icon">
                                            <i class="bi bi-credit-card-2-front"></i>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label for="nombre">Nombre</label>
                            <input class="form-control" type="text" name="nombre" disabled>
                        </div>
                    </div>

                    <div class="row">
                      
                        
                        <div class="col-md-6">
                            <div class="form-group has-icon-left">
                                <label for="Id-icon">Fecha de entrega</label>
                                <div class="position-relative">
                                    <input type="date" class="form-control" placeholder="" id="fecha_entrega">
                                    <div class="form-control-icon">
                                        <i class="bi bi-calendar"></i>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="col-md-6">
                            <div class="form-group has-icon-left">
                                <label for="Id-icon">Accesorio</label>
                                <select class="form-select" aria-label="Default select example">
                                    <option selected>Seleccione</option>
                                    <option value="1">Baton </option>
                                    <option value="2">Cinturon</option>
                                    <option value="3">Gorgorito</option>
                                    <option value="3">Lampara</option>
                                    <option value="3">Esposas</option>
                                    <option value="3">Camarañola completa</option>

                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="row">
               
                

                        

                        <div class="col-md-4">
                            <div class="form-group has-icon-left">
                                <label for="DUI">Entregado por: (DUI)</label>
                                <div class="position-relative">
                                    <input type="text" class="form-control" placeholder="01010101-0" id="DUI">
                                    <div class="form-control-icon">
                                        <i class="bi bi-credit-card-2-front"></i>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </form>
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
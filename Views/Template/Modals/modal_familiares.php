<div class="modal fade text-left" id="md_familiares" tabindex="-1" role="dialog" data-bs-backdrop="static" data-bs-keyboard="false" aria-labelledby="myModalLabel17" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h4 class="modal-title white" id="myModalLabel16">Editar contactos Familiares
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
                        <div class="form-group has-icon-left">
                            <label for="Id-icon">DUI Familiar</label>
                            <div class="position-relative">
                                <input type="text" class="form-control" placeholder="00000000-0" id="Id-icon">
                                <div class="form-control-icon">
                                    <i class="bi bi-credit-card-2-front"></i>
                                </div>
                            </div>
                        </div>

                        <div class="form-group has-icon-left">
                            <label for="Id-icon">Parentesco</label>
                            <select class="form-select" aria-label="Default select example">
                                <option selected>Seleccione</option>
                                <option value="1">Conyugue</option>
                                <option value="2">Madre</option>
                                <option value="3">Padre</option>
                                <option value="3">Hijo</option>
                                <option value="3">Hija</option>
                                <option value="3">Hermano</option>
                                <option value="3">Hermana</option>
                            </select>
                        </div>

                    </div>
                    <div class="col-md-6 col-12">
                        <div class="form-group has-icon-left">
                            <label for="Apellido-icon">Nombre</label>
                            <div class="position-relative">
                                <input type="text" class="form-control" placeholder="Juan Antonio" id="Apellido-icon">
                                <div class="form-control-icon">
                                    <i class="bi bi-geo"></i>
                                </div>
                            </div>
                        </div>
                        <div class="form-group has-icon-left">
                            <label for="Correo-icon">Apellido</label>
                            <div class="position-relative">
                                <input type="text" class="form-control" placeholder="Perez Gomes" id="Correo-icon">
                                <div class="form-control-icon">
                                    <i class="bi bi-envelope"></i>
                                </div>
                            </div>
                        </div>
                        <div class="form-group has-icon-left">
                            <label for="Id-icon">Teléfono</label>
                            <div class="position-relative">
                                <input type="text" class="form-control" placeholder="7810-8989" id="Apellido-icon">
                                <div class="form-control-icon">
                                    <i class="bi bi-telephone-plus"></i>
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
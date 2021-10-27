<!DOCTYPE html>
<html>

<div class="modal fade text-left" id="md_regis_uniforme" tabindex="-1" role="dialog" aria-labelledby="myModalLabel17" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header bg-primary">
                                <h4 class="modal-title white" id="myModalLabel16">Registrar Uniforme
                                </h4>
                                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                                    <i data-feather="x"></i>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="">
                                       
                                        
                                        <div class="form-group has-icon-left">
                                            <label for="nombre">Nombre</label>
                                            <div class="position-relative">
                                                <input type="text" class="form-control" placeholder="Camisa tactica azul" id="nombre">
                                                <div class="form-control-icon">
                                                    <i class="bi bi-file-text"></i>
                                                </div>
                                            </div>
                                        </div>
                                        

                                        
                                    </div>

                                    

                                </div>

                                <div class="row">

                                

                                    <div class="form-group has-icon-left">
                                        <label for="Id-icon">Tipo</label>
                                        <select class="form-select" aria-label="Default select example">
                                            <option selected>Seleccione</option>
                                            <option value="0">Uniforme policial</option>
                                            <option value="1">Uniforme policial tactico</option>

                                        </select>
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
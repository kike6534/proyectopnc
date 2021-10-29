

<div class="modal fade text-left" id="modalFormRol" tabindex="-1" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable" role="document">
      <div class="modal-content">
          <div class="modal-header">
              <h5 class="modal-title" id="titleModal">Nuevo Rol</h5>
              <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
          </div>
          <div class="modal-body">
              <form id="formRol" name="formRol">
                <input type="hidden" id="idRol" name="idRol" value="">
                <div class="form-group">
                  <label class="control-label">Nombre</label>
                  <input class="form-control" id="txtNombre" name="txtNombre" type="text" placeholder="Nombre del rol" required="" autocomplete="off">
                </div>
                <div class="form-group">
                  <label class="control-label">Descripción</label>
                  <textarea class="form-control" id="txtDescripcion" name="txtDescripcion" rows="2" placeholder="Descripción del rol" required="" autocomplete="off"></textarea>
                </div>
                <div class="form-group">
                    <label for="listaEstado">Estado</label>
                    <select class="form-control" id="listaEstado" name="listaEstado" required="">
                      <option value="1">Activo</option>
                      <option value="2">Inactivo</option>
                    </select>
                </div>

          </div>
          <div class="modal-footer">
            <button type="button" class="btn" data-bs-dismiss="modal">
                <i class="bx bx-x d-block d-sm-none"></i>
                <span class="d-none d-sm-block">Close</span>
            </button>
             
             <button type="submit" id="btnActionForm" class="btn btn-primary ml-1">
                <i class="bx bx-check d-block d-sm-none"></i>
                <span class="d-none d-sm-block" id="btnText"><i class="fas fa-check"></i> Guardar </span>
            </button>
          </div>
        </form>
          

      </div>
  </div>
</div>
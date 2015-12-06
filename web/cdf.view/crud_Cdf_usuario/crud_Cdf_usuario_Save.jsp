<!-- Importaciones cdf  -->
<div class="modal fade modaldialog" id="modaldialog" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="exampleModalLabel">Panel usuario</h4>
      </div>
      <div class="modal-body">
        <form action="crud_Cdf_usuario_Controller.jsp" method="Post" id="form_crud_View_Cdf_usuario" name="form_crud_View_Cdf_usuario">
            <input type="hidden" name="accion" value="registrar">
            <input type="hidden" name="id"> 
            <div class="form-group">
                <label for="alias">Alias: </label>
                <input class="form-control" type="text" name="alias" placeholder="Ingrese Alias" required/> 
            </div>
            <div class="form-group">
                <label for="ciudad">Ciudad: </label>
                <input class="form-control" type="text" name="ciudad" placeholder="Ingrese Ciudad" required/> 
            </div>
            <div class="form-group">
                <label for="edad">Edad: </label>
                <input class="form-control" type="text" name="edad" placeholder="Ingrese Edad" required/> 
            </div>
      <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <input class="btn btn-success" type="button" name="dinamicbutton" value="Registrar" onclick="accionjs('cdf.view/crud_Cdf_usuario/crud_Cdf_usuario_Controller.jsp', 'crud_Cdf_usuario_Show','form_crud_View_Cdf_usuario');">
       </div>
        </form>
</div>
    </div>
  </div>
</div>

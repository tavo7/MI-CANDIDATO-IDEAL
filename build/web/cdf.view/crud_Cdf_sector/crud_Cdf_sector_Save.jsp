<!-- Importaciones cdf  -->
<div class="modal fade modaldialog" id="modaldialog" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="exampleModalLabel">Panel sector</h4>
      </div>
      <div class="modal-body">
        <form action="crud_Cdf_sector_Controller.jsp" method="Post" id="form_crud_View_Cdf_sector" name="form_crud_View_Cdf_sector">
            <input type="hidden" name="accion" value="registrar">
            <input type="hidden" name="id"> 
            <div class="form-group">
                <label for="codigo">Codigo: </label>
                <input class="form-control" type="text" name="codigo" placeholder="Ingrese Codigo" required/> 
            </div>
            <div class="form-group">
                <label for="nombre">Nombre: </label>
                <input class="form-control" type="text" name="nombre" placeholder="Ingrese Nombre" required/> 
            </div>
            <div class="form-group">
                <label for="estado">Estado: </label>
                <input class="form-control" type="text" name="estado" placeholder="Ingrese Estado" required/> 
            </div>
      <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <input class="btn btn-success" type="button" name="dinamicbutton" value="Registrar" onclick="accionjs('cdf.view/crud_Cdf_sector/crud_Cdf_sector_Controller.jsp', 'crud_Cdf_sector_Show','form_crud_View_Cdf_sector');">
       </div>
        </form>
</div>
    </div>
  </div>
</div>

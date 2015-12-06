<%@page import="cdf.model.Model_Cdf_sector"%>
<%@page import="cdf.controller.Controller_Cdf_sector"%>
<%@page import="cdf.model.Model_Cdf_candidato"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cdf.controller.Controller_Cdf_candidato"%>
<!-- Importaciones cdf  -->
<div class="modal fade modaldialog" id="modaldialog" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="exampleModalLabel">Panel propuesta</h4>
      </div>
      <div class="modal-body">
        <form action="crud_Cdf_propuesta_Controller.jsp" method="Post" id="form_crud_View_Cdf_propuesta" name="form_crud_View_Cdf_propuesta">
            <input type="hidden" name="accion" value="registrar">
            <div class="form-group">
                        <%
                            Controller_Cdf_candidato gestion_cdf_candidato = new Controller_Cdf_candidato();
                            List<Model_Cdf_candidato> List_candidato = (ArrayList<Model_Cdf_candidato>) gestion_cdf_candidato.getListar_cdf_candidato(null);
                        %>
                        <label class="label-sub-radio">Candidato</label>
                        <select class="form-control" name="candidato">
                            <option value="selecCateg" selected>--Seleccione--</option>                            
                            <%
                                for (Model_Cdf_candidato obj : List_candidato) {
                            %>
                            <option value="<%=obj.getCdf_candidato_id()%>" 

                                    ><%=obj.getCdf_candidato_nombre()%></option>
                            <%
                                }
                            %>
                        </select>
                    </div>
                    <div class="form-group">
                        <%
                            Controller_Cdf_sector gestion_cdf_sector = new Controller_Cdf_sector();
                            List<Model_Cdf_sector> List_sector = (ArrayList<Model_Cdf_sector>) gestion_cdf_sector.getListar_cdf_sector(null);
                        %>
                        <label class="label-sub-radio">Sector</label>
                        <select class="form-control" name="sector" >
                            <option value="selecCateg" selected>--Seleccione--</option>                            
                            <%
                                for (Model_Cdf_sector obj : List_sector) {
                            %>
                            <option value="<%=obj.getCdf_sector_id()%>" 

                                    ><%=obj.getCdf_sector_nombre()%></option>
                            <%
                                }
                            %>
                        </select>
                    </div>                   
            <div class="form-group">
                <label for="descripcion">Descripcion: </label>
                <input class="form-control" type="text" name="descripcion" placeholder="Ingrese Descripcion" required/> 
            </div>
      <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <input class="btn btn-success" type="button" name="dinamicbutton" value="Registrar" onclick="accionjs('cdf.view/crud_Cdf_propuesta/crud_Cdf_propuesta_Controller.jsp', 'crud_Cdf_propuesta_Show','form_crud_View_Cdf_propuesta');">
       </div>
        </form>
</div>
    </div>
  </div>
</div>

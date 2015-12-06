<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cdf.model.Model_Cdf_candidato"%>
<%@page import="cdf.controller.Controller_Cdf_candidato"%>
<!-- Importaciones cdf  -->
<div class="modal fade modaldialog" id="modaldialog" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="exampleModalLabel">Panel puntuacion</h4>
            </div>
            <div class="modal-body">
                <form action="crud_Cdf_puntuacion_Controller.jsp" method="Post" id="form_crud_View_Cdf_puntuacion" name="form_crud_View_Cdf_puntuacion">
                    <input type="hidden" name="accion" value="registrar">
                    <input type="hidden" name="id"> 
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
                        <label for="fecha">Fecha: </label>
                        <input class="form-control" type="date" name="fecha" placeholder="Ingrese Fecha" required/> 
                    </div>
                    <div class="form-group">
                        <label for="hora">Hora: </label>
                        <input class="form-control" type="date" name="hora" placeholder="Ingrese Hora" required/> 
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <input class="btn btn-success" type="button" name="dinamicbutton" value="Registrar" onclick="accionjs('cdf.view/crud_Cdf_puntuacion/crud_Cdf_puntuacion_Controller.jsp', 'crud_Cdf_puntuacion_Show', 'form_crud_View_Cdf_puntuacion');">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

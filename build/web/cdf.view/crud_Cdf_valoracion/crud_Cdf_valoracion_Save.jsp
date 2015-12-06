<%@page import="cdf.model.Model_Cdf_sector"%>
<%@page import="cdf.controller.Controller_Cdf_sector"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cdf.model.Model_Cdf_usuario"%>
<%@page import="cdf.controller.Controller_Cdf_usuario"%>
<%@page import="cdf.model.Model_Cdf_candidato"%>
<%@page import="cdf.controller.Controller_Cdf_candidato"%>
<!-- Importaciones cdf  -->
<div class="modal fade modaldialog" id="modaldialog" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="exampleModalLabel">Panel valoracion</h4>
            </div>
            <div class="modal-body">
                <form action="crud_Cdf_valoracion_Controller.jsp" method="Post" id="form_crud_View_Cdf_valoracion" name="form_crud_View_Cdf_valoracion">
                    <input type="hidden" name="accion" value="registrar">
                    <input type="hidden" name="id"> 
                    <div class="form-group">
                        <label for="valor">Valor: </label>
                        <input class="form-control" type="number" name="valor" placeholder="Ingrese Valor" required/> 
                    </div>
                    <div class="form-group">
                        <label for="fechavaloracion">Fechavaloracion: </label>
                        <input class="form-control" type="date" name="fechavaloracion" placeholder="Ingrese Fechavaloracion" required/> 
                    </div>
                    <div class="form-group">
                        <label for="horavaloracion">Horavaloracion: </label>
                        <input class="form-control" type="time" name="horavaloracion" placeholder="Ingrese Horavaloracion" required/> 
                    </div>
                    <div class="form-group">
                        <%
                            Controller_Cdf_usuario gestion_cdf_usuario = new Controller_Cdf_usuario();
                            List<Model_Cdf_usuario> List_usuario = (ArrayList<Model_Cdf_usuario>) gestion_cdf_usuario.getListar_cdf_usuario(null);
                        %>
                        <label class="label-sub-radio">Usuario</label>
                        <select class="form-control" name="usuario">
                            <option value="selecCateg" selected>--Seleccione--</option>                            
                            <%
                                for (Model_Cdf_usuario obj : List_usuario) {
                            %>
                            <option value="<%=obj.getCdf_usuario_id()%>" 

                                    ><%=obj.getCdf_usuario_alias() %></option>
                            <%
                                }
                            %>

                        </select>
                    </div>
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
                        <select class="form-control" name="sector">
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
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <input class="btn btn-success" type="button" name="dinamicbutton" value="Registrar" onclick="accionjs('cdf.view/crud_Cdf_valoracion/crud_Cdf_valoracion_Controller.jsp', 'crud_Cdf_valoracion_Show', 'form_crud_View_Cdf_valoracion');">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

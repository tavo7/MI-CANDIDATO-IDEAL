<%@page import="cdf.model.Model_Cdf_sector"%>
<%@page import="cdf.controller.Controller_Cdf_sector"%>
<%

    Controller_Cdf_sector gestion_cdf_sector = new Controller_Cdf_sector();
    // posibilidad de que sea gestionCliente, es decir gestionNombreTabla
    String accion = request.getParameter("accion");
    Model_Cdf_sector model_cdf_sector = new Model_Cdf_sector();

    if (accion.equalsIgnoreCase("enviomodificar")) {

        Integer id=Integer.parseInt(request.getParameter("primarykey"));
        model_cdf_sector.setCdf_sector_id(id);
        model_cdf_sector=(Model_Cdf_sector)gestion_cdf_sector.getListar_cdf_sector(model_cdf_sector).get(0);
%>

<%@include file="crud_Cdf_sector_Save.jsp" %>
<script>
        llenardatosactualizar_cdf_sector('<%=model_cdf_sector.getCdf_sector_id()%>','<%=model_cdf_sector.getCdf_sector_codigo()%>','<%=model_cdf_sector.getCdf_sector_nombre()%>','<%=model_cdf_sector.getCdf_sector_estado()%>','Actualizar');
</script>

<%

        } else {
                boolean punto_entrada = false;
                if (accion.equalsIgnoreCase("eliminar")) {
                    Integer id=Integer.parseInt(request.getParameter("primarykey"));
                    model_cdf_sector.setCdf_sector_id(id);
                    gestion_cdf_sector.Eliminar_cdf_sector(model_cdf_sector);
                } else {
                            if (accion.equalsIgnoreCase("registrar") || accion.equalsIgnoreCase("actualizar")) {
                                String codigo=request.getParameter("codigo");
                                String nombre=request.getParameter("nombre");
                                String estado=request.getParameter("estado");

                                model_cdf_sector.setCdf_sector_codigo(codigo);
                                model_cdf_sector.setCdf_sector_nombre(nombre);
                                model_cdf_sector.setCdf_sector_estado(estado);

                                if (accion.equalsIgnoreCase("registrar")) {

                                    gestion_cdf_sector.Insertar_cdf_sector(model_cdf_sector);
                                } else {
                //actualizar , verificar tipo de dato
                                    Integer id=Integer.parseInt(request.getParameter("id"));
                                    model_cdf_sector.setCdf_sector_id(id);
                                    gestion_cdf_sector.Actualizar_cdf_sector(model_cdf_sector);
                                }
                            }else {
                                    if (accion.equalsIgnoreCase("buscar")) {
                                        String input_buscar = request.getParameter("input_buscar");
                                        punto_entrada = true;
                                        request.getSession().setAttribute("list_cdf_sector", gestion_cdf_sector.Buscar_cdf_sector(input_buscar));
                                    } 
                            }

                }
    


                if (punto_entrada == false) {
                    request.getSession().setAttribute("list_cdf_sector", gestion_cdf_sector.getListar_cdf_sector(null));
%>
                    <script>
                        llenardatosactualizar_cdf_sector('','','','','Registrar');
                    </script>
<%
                }
        
%>
        
                <%@include file="crud_Cdf_sector_Show.jsp"  %>
        
<%
        }
%>
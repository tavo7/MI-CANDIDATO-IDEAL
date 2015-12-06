<%@page import="cdf.model.Model_Cdf_usuario"%>
<%@page import="cdf.controller.Controller_Cdf_usuario"%>
<%

    Controller_Cdf_usuario gestion_cdf_usuario = new Controller_Cdf_usuario();
    // posibilidad de que sea gestionCliente, es decir gestionNombreTabla
    String accion = request.getParameter("accion");
    Model_Cdf_usuario model_cdf_usuario = new Model_Cdf_usuario();

    if (accion.equalsIgnoreCase("enviomodificar")) {

        Integer id=Integer.parseInt(request.getParameter("primarykey"));
        model_cdf_usuario.setCdf_usuario_id(id);
        model_cdf_usuario=(Model_Cdf_usuario)gestion_cdf_usuario.getListar_cdf_usuario(model_cdf_usuario).get(0);
%>

<%@include file="crud_Cdf_usuario_Save.jsp" %>
<script>
        llenardatosactualizar_cdf_usuario('<%=model_cdf_usuario.getCdf_usuario_id()%>','<%=model_cdf_usuario.getCdf_usuario_alias()%>','<%=model_cdf_usuario.getCdf_usuario_ciudad()%>','<%=model_cdf_usuario.getCdf_usuario_edad()%>','Actualizar');
</script>

<%

        } else {
                boolean punto_entrada = false;
                if (accion.equalsIgnoreCase("eliminar")) {
                    Integer id=Integer.parseInt(request.getParameter("primarykey"));
                    model_cdf_usuario.setCdf_usuario_id(id);
                    gestion_cdf_usuario.Eliminar_cdf_usuario(model_cdf_usuario);
                } else {
                            if (accion.equalsIgnoreCase("registrar") || accion.equalsIgnoreCase("actualizar")) {
                                String alias=request.getParameter("alias");
                                String ciudad=request.getParameter("ciudad");
                                Integer edad=Integer.parseInt(request.getParameter("edad"));

                                model_cdf_usuario.setCdf_usuario_alias(alias);
                                model_cdf_usuario.setCdf_usuario_ciudad(ciudad);
                                model_cdf_usuario.setCdf_usuario_edad(edad);

                                if (accion.equalsIgnoreCase("registrar")) {

                                    gestion_cdf_usuario.Insertar_cdf_usuario(model_cdf_usuario);
                                } else {
                //actualizar , verificar tipo de dato
                                    Integer id=Integer.parseInt(request.getParameter("id"));
                                    model_cdf_usuario.setCdf_usuario_id(id);
                                    gestion_cdf_usuario.Actualizar_cdf_usuario(model_cdf_usuario);
                                }
                            }else {
                                    if (accion.equalsIgnoreCase("buscar")) {
                                        String input_buscar = request.getParameter("input_buscar");
                                        punto_entrada = true;
                                        request.getSession().setAttribute("list_cdf_usuario", gestion_cdf_usuario.Buscar_cdf_usuario(input_buscar));
                                    } 
                            }

                }
    


                if (punto_entrada == false) {
                    request.getSession().setAttribute("list_cdf_usuario", gestion_cdf_usuario.getListar_cdf_usuario(null));
%>
                    <script>
                        llenardatosactualizar_cdf_usuario('','','','','Registrar');
                    </script>
<%
                }
        
%>
        
                <%@include file="crud_Cdf_usuario_Show.jsp"  %>
        
<%
        }
%>
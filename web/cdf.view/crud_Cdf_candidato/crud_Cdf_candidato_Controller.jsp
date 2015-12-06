<%@page import="cdf.model.Model_Cdf_candidato"%>
<%@page import="cdf.controller.Controller_Cdf_candidato"%>
<%

    Controller_Cdf_candidato gestion_cdf_candidato = new Controller_Cdf_candidato();
    // posibilidad de que sea gestionCliente, es decir gestionNombreTabla
    String accion = request.getParameter("accion");
    Model_Cdf_candidato model_cdf_candidato = new Model_Cdf_candidato();

    if (accion.equalsIgnoreCase("enviomodificar")) {

        Integer id=Integer.parseInt(request.getParameter("primarykey"));
        model_cdf_candidato.setCdf_candidato_id(id);
        model_cdf_candidato=(Model_Cdf_candidato)gestion_cdf_candidato.getListar_cdf_candidato(model_cdf_candidato).get(0);
%>

<%@include file="crud_Cdf_candidato_Save.jsp" %>
<script>
        llenardatosactualizar_cdf_candidato('<%=model_cdf_candidato.getCdf_candidato_id()%>','<%=model_cdf_candidato.getCdf_candidato_nombre()%>','<%=model_cdf_candidato.getCdf_candidato_partidopolitico()%>','<%=model_cdf_candidato.getCdf_candidato_estado()%>','Actualizar');
</script>

<%

        } else {
                boolean punto_entrada = false;
                if (accion.equalsIgnoreCase("eliminar")) {
                    Integer id=Integer.parseInt(request.getParameter("primarykey"));
                    model_cdf_candidato.setCdf_candidato_id(id);
                    gestion_cdf_candidato.Eliminar_cdf_candidato(model_cdf_candidato);
                } else {
                            if (accion.equalsIgnoreCase("registrar") || accion.equalsIgnoreCase("actualizar")) {
                                String nombre=request.getParameter("nombre");
                                String partidopolitico=request.getParameter("partidopolitico");
                                String estado=request.getParameter("estado");

                                model_cdf_candidato.setCdf_candidato_nombre(nombre);
                                model_cdf_candidato.setCdf_candidato_partidopolitico(partidopolitico);
                                model_cdf_candidato.setCdf_candidato_estado(estado);

                                if (accion.equalsIgnoreCase("registrar")) {

                                    gestion_cdf_candidato.Insertar_cdf_candidato(model_cdf_candidato);
                                } else {
                //actualizar , verificar tipo de dato
                                    Integer id=Integer.parseInt(request.getParameter("id"));
                                    model_cdf_candidato.setCdf_candidato_id(id);
                                    gestion_cdf_candidato.Actualizar_cdf_candidato(model_cdf_candidato);
                                }
                            }else {
                                    if (accion.equalsIgnoreCase("buscar")) {
                                        String input_buscar = request.getParameter("input_buscar");
                                        punto_entrada = true;
                                        request.getSession().setAttribute("list_cdf_candidato", gestion_cdf_candidato.Buscar_cdf_candidato(input_buscar));
                                    } 
                            }

                }
    


                if (punto_entrada == false) {
                    request.getSession().setAttribute("list_cdf_candidato", gestion_cdf_candidato.getListar_cdf_candidato(null));
%>
                    <script>
                        llenardatosactualizar_cdf_candidato('','','','','Registrar');
                    </script>
<%
                }
        
%>
        
                <%@include file="crud_Cdf_candidato_Show.jsp"  %>
        
<%
        }
%>
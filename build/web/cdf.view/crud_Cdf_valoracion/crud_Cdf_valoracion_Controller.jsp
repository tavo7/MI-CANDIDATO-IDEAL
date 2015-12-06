<%@page import="cdf.model.Model_Cdf_sector"%>
<%@page import="cdf.model.Model_Cdf_valoracion"%>
<%@page import="cdf.controller.Controller_Cdf_valoracion"%>
<%

    Controller_Cdf_valoracion gestion_cdf_valoracion = new Controller_Cdf_valoracion();
    // posibilidad de que sea gestionCliente, es decir gestionNombreTabla
    String accion = request.getParameter("accion");
    Model_Cdf_valoracion model_cdf_valoracion = new Model_Cdf_valoracion();

    if (accion.equalsIgnoreCase("enviomodificar")) {

        Integer id=Integer.parseInt(request.getParameter("primarykey"));
        model_cdf_valoracion.setCdf_valoracion_id(id);
        model_cdf_valoracion=(Model_Cdf_valoracion)gestion_cdf_valoracion.getListar_cdf_valoracion(model_cdf_valoracion).get(0);
%>

<%@include file="crud_Cdf_valoracion_Save.jsp" %>
<script>
        llenardatosactualizar_cdf_valoracion('<%=model_cdf_valoracion.getCdf_valoracion_id()%>','<%=model_cdf_valoracion.getCdf_valoracion_valor()%>','<%=model_cdf_valoracion.getCdf_valoracion_fechavaloracion()%>','<%=model_cdf_valoracion.getCdf_valoracion_horavaloracion()%>','<%=model_cdf_valoracion.getCdf_usuario_usuario()%>','<%=model_cdf_valoracion.getCdf_candidato_candidato()%>','<%=model_cdf_valoracion.getCdf_sector_sector()%>','Actualizar');
</script>

<%

        } else {
                boolean punto_entrada = false;
                if (accion.equalsIgnoreCase("eliminar")) {
                    Integer id=Integer.parseInt(request.getParameter("primarykey"));
                    model_cdf_valoracion.setCdf_valoracion_id(id);
                    gestion_cdf_valoracion.Eliminar_cdf_valoracion(model_cdf_valoracion);
                } else {
                            if (accion.equalsIgnoreCase("registrar") || accion.equalsIgnoreCase("actualizar")) {
                                String valor=request.getParameter("valor");
                                String fechavaloracion=request.getParameter("fechavaloracion");
                                String horavaloracion=request.getParameter("horavaloracion");
                                Model_Cdf_usuario usuario=new Model_Cdf_usuario(Integer.parseInt(request.getParameter("usuario"))) ;
                                Model_Cdf_candidato candidato=new Model_Cdf_candidato(Integer.parseInt(request.getParameter("candidato"))) ;
                                Integer sector=Integer.parseInt(request.getParameter("sector"));

                                model_cdf_valoracion.setCdf_valoracion_valor(valor);
                                model_cdf_valoracion.setCdf_valoracion_fechavaloracion(fechavaloracion);
                                model_cdf_valoracion.setCdf_valoracion_horavaloracion(horavaloracion);
                                model_cdf_valoracion.setCdf_usuario_usuario(usuario);
                                model_cdf_valoracion.setCdf_candidato_candidato(candidato);
                                model_cdf_valoracion.setCdf_sector_sector(new Model_Cdf_sector(sector));

                                if (accion.equalsIgnoreCase("registrar")) {

                                    gestion_cdf_valoracion.Insertar_cdf_valoracion(model_cdf_valoracion);
                                } else {
                //actualizar , verificar tipo de dato
                                    Integer id=Integer.parseInt(request.getParameter("id"));
                                    model_cdf_valoracion.setCdf_valoracion_id(id);
                                    gestion_cdf_valoracion.Actualizar_cdf_valoracion(model_cdf_valoracion);
                                }
                            }else {
                                    if (accion.equalsIgnoreCase("buscar")) {
                                        String input_buscar = request.getParameter("input_buscar");
                                        punto_entrada = true;
                                        request.getSession().setAttribute("list_cdf_valoracion", gestion_cdf_valoracion.Buscar_cdf_valoracion(input_buscar));
                                    } 
                            }

                }

                if (punto_entrada == false) {
                    request.getSession().setAttribute("list_cdf_valoracion", gestion_cdf_valoracion.getListar_cdf_valoracion(null));
%>
                    <script>
                        llenardatosactualizar_cdf_valoracion('','','','','','','','Registrar');
                    </script>
<%
                }
        
%>
        
                <%@include file="crud_Cdf_valoracion_Show.jsp"  %>
        
<%
        }
%>
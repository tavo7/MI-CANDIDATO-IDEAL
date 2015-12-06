
<%@page import="java.util.List"%>
<%@page import="cdf.model.Model_Cdf_usuario"%>
<%@page import="cdf.controller.Controller_Cdf_usuario"%>
<%
    
    
    Controller_Cdf_usuario  gestionuuseuario= new Controller_Cdf_usuario();
    String edad=request.getParameter("p_edad");
    String select_s=request.getParameter("select_s");
    String alias="usuario";
    Model_Cdf_usuario usuario= new Model_Cdf_usuario();
    usuario.setCdf_usuario_alias(alias);
    usuario.setCdf_usuario_edad(Integer.parseInt(edad));
    usuario.setCdf_usuario_ciudad(select_s);    
    List<Model_Cdf_usuario> list_usuario=gestionuuseuario.getListar_cdf_usuario(null);
    
    
    List<Model_Cdf_usuario> list_usuario_actual=gestionuuseuario.getListar_cdf_usuario(null);
    
   
    
   /* for (int i = 0; i < list_usuario_actual.size(); i++) {
            for (int j = 0; j < list_usuario.size(); j++) {
                
                if (list_usuario.get(j).getCdf_usuario_id()==list_usuario_actual.get(i).getCdf_usuario_id()) {
                     
                    }
            }
        }*/
    
    gestionuuseuario.Insertar_cdf_usuario(usuario);
    
     request.getSession().setAttribute("usuario_actual", gestionuuseuario.getListar_cdf_usuario(null).get(gestionuuseuario.getListar_cdf_usuario(null).size()-1));
response.sendRedirect("View_Cdf_SeleccionarSectores.jsp");
%>
<%@page import="java.util.ArrayList"%>
<%@page import="cdf.model.Model_Cdf_candidato"%>
<%@page import="java.util.List"%>
<%@page import="cdf.model.Model_Cdf_propuesta"%>
<%@page import="cdf.controller.Controller_Cdf_propuesta"%>
<%@page import="cdf.model.Model_Cdf_usuario"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="cdf.model.Model_Cdf_sector"%>
<%@page import="cdf.model.Model_Cdf_valoracion"%>
<%@page import="cdf.controller.Controller_Cdf_valoracion"%>
<%

    
    Integer numerosector = Integer.parseInt(request.getSession().getAttribute("numerosector").toString());
    Integer contador = Integer.parseInt(request.getSession().getAttribute("contador").toString());
    Calendar calendario= new GregorianCalendar();
    Model_Cdf_usuario usuario_actual= (Model_Cdf_usuario)request.getSession().getAttribute("usuario_actual");
    SimpleDateFormat formato= new SimpleDateFormat("yyyy-MMMMM-dd");
    
    String[] combos=request.getParameterValues("selectpropuesta");    
    Controller_Cdf_valoracion gestionvaloracion= new Controller_Cdf_valoracion();
    
    Controller_Cdf_propuesta gestionpropuesta= new Controller_Cdf_propuesta();
    List<Model_Cdf_sector> list_sectores = (ArrayList<Model_Cdf_sector>) request.getSession().getAttribute("list_sectores");    
    List<Model_Cdf_propuesta> list_propuestas=gestionpropuesta.getListar_cdf_propuesta(new Model_Cdf_propuesta(list_sectores.get(contador)));
        
    for (int index = 0; index < combos.length; index++) {        
        Model_Cdf_valoracion cdf_model_valoracion= new Model_Cdf_valoracion();   
        cdf_model_valoracion.setCdf_sector_sector(list_sectores.get(contador));
        cdf_model_valoracion.setCdf_valoracion_fechavaloracion(formato.format(calendario.getTime()));
        cdf_model_valoracion.setCdf_valoracion_horavaloracion(formato.format(calendario.getTime()));
        cdf_model_valoracion.setCdf_valoracion_valor(combos[index]);
        cdf_model_valoracion.setCdf_usuario_usuario(usuario_actual);
        cdf_model_valoracion.setCdf_candidato_candidato(list_propuestas.get(index).getCdf_candidato_candidato());                
        gestionvaloracion.Insertar_cdf_valoracion(cdf_model_valoracion);
    }
    request.getSession().setAttribute("contador", contador+1);
    response.sendRedirect("View_Cdf_ValorarPropuestas.jsp");
    
    


%>
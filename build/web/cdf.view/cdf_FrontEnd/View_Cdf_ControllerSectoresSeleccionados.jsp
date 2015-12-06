<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cdf.model.Model_Cdf_sector"%>
<%@page import="cdf.controller.Controller_Cdf_sector"%>
<%

    String[] valores = request.getParameterValues("checksectores");
    Controller_Cdf_sector cdfsectores = new Controller_Cdf_sector();
    List<Model_Cdf_sector> list_sectores = new ArrayList<Model_Cdf_sector>();
    for (int index = 0; index < valores.length; index++) {

        Model_Cdf_sector sector = cdfsectores.getListar_cdf_sector(new Model_Cdf_sector(Integer.parseInt(valores[index]))).get(0);
        list_sectores.add(sector);
    }
    
    request.getSession().setAttribute("numerosector", list_sectores.size());
    Integer inicio=0;    
    request.getSession().setAttribute("contador", inicio);
    request.getSession().setAttribute("list_sectores", list_sectores);
    // tngo todos los sectores en una lista para recorrerlas
    response.sendRedirect("View_Cdf_ValorarPropuestas.jsp");
%>
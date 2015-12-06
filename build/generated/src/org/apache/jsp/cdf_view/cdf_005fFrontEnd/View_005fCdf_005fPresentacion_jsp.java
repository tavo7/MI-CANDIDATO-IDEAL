package org.apache.jsp.cdf_view.cdf_005fFrontEnd;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class View_005fCdf_005fPresentacion_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/cdf.view/cdf_FrontEnd/View_Cdf_Cabecera.jsp");
    _jspx_dependants.add("/cdf.view/cdf_FrontEnd/View_Cdf_Pie.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Mi Candidato Ideal</title>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link href=\"lib/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\" media=\"screen\">\n");
      out.write("        \n");
      out.write("        <link href=\"../../css/bootstrap.min.css\" rel=\"stylesheet\" media=\"screen\">\n");
      out.write("        <link href=\"asset/css/estilo.css\" rel=\"stylesheet\" media=\"screen\">\n");
      out.write("        <link href=\"../../css/estilo.css\" rel=\"stylesheet\" media=\"screen\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("<header class=\"cab-pag\">\n");
      out.write("    <nav class=\"navbar navbar-default\">\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <!-- Brand and toggle get grouped for better mobile display -->\n");
      out.write("            <div class=\"navbar-header\">\n");
      out.write("                <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\" aria-expanded=\"false\">\n");
      out.write("                    <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                </button>\n");
      out.write("                <a class=\"navbar-brand\" href=\"#\"><img src=\"../../img/iconos/logo.png\" alt=\"candidatos por sector\" class=\"logo img-responsive\" width=\"200\" ></a>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("            <div class=\"menu collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("                <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                    <li class=\"active\"><a href=\"#\">INICIO</a></li>\n");
      out.write("                    <li><a href=\"#\">COMUNIDAD</a></li>\n");
      out.write("                    <li><a href=\"#\">POLITICAS</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div><!-- /.navbar-collapse -->\n");
      out.write("        </div><!-- /.container-fluid -->\n");
      out.write("    </nav>\n");
      out.write("</header>");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <div class=\"row contenido\">\n");
      out.write("                <div class=\"col-lg-7 col-md-7 col-sm-7 col-xs-12 text-center\">\n");
      out.write("                    <div class=\"resumen\">\n");
      out.write("                        <h2 class=\"text-danger\">¿Aún no te decides?</h2>\n");
      out.write("                        <p>\n");
      out.write("                            Escoge los sectores que te interesan, puntúa las propuestas de cada postulante y encuentra el candidato ideal para ti.\n");
      out.write("                        </p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"empiesa\">\n");
      out.write("                        <a href=\"View_Cdf_LLenarDatosUsuario.jsp\" class=\"button\"/>¡ Empieza Ahora !</a>  \n");
      out.write("                    </div>\n");
      out.write("                    <div>\n");
      out.write("                        <h3>Estadísticas</h3>\n");
      out.write("                        <span class=\"glyphicon glyphicon-arrow-down\" aria-hidden=\"true\"></span>\n");
      out.write("                        <span class=\"glyphicon glyphicon-arrow-down\" aria-hidden=\"true\"></span>\n");
      out.write("                        <span class=\"glyphicon glyphicon-arrow-down\" aria-hidden=\"true\"></span>\n");
      out.write("                        <br><br>\n");
      out.write("                        <div class=\"row estadisticas\">\n");
      out.write("                            <div class=\"col-lg-4 col-md-4 col-sm-4 col-xs-4\">\n");
      out.write("                                <h4><span class=\"label label-default\">Candidatos</span>\n");
      out.write("                                    <img src=\"../../img/iconos/versus.png\" alt=\"versus\" class=\"\" width=\"20\" >\n");
      out.write("                                    <span class=\"label label-success\">Sector</span>\n");
      out.write("                                </h4>\n");
      out.write("                                <img src=\"../../img/iconos/e-1.png\" alt=\"candidatos por sector\" class=\"img-thumbnail\" width=\"100\" >\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-lg-4 col-md-4 col-sm-4 col-xs-4\">\n");
      out.write("                                <h4><span class=\"label label-default\">Sectores</span>\n");
      out.write("                                    <img src=\"../../img/iconos/versus.png\" alt=\"versus\" class=\"\" width=\"20\" >\n");
      out.write("                                    <span class=\"label label-danger\">Candidato</span>\n");
      out.write("                                </h4>\n");
      out.write("                                <img src=\"../../img/iconos/e-2.png\" alt=\"sectores por candidato\" class=\"img-thumbnail\" width=\"100\" >\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-lg-4 col-md-4 col-sm-4 col-xs-4\">\n");
      out.write("                                <h4><span class=\"label label-default\">Candidato</span>\n");
      out.write("                                    <img src=\"../../img/iconos/versus.png\" alt=\"versus\" class=\"\" width=\"20\" >\n");
      out.write("                                    <span class=\"label label-primary\">Candidato</span>\n");
      out.write("                                </h4>\n");
      out.write("                                <img src=\"../../img/iconos/e-3.png\" alt=\"compracion de candidatos\" class=\"img-thumbnail\" width=\"100\" >\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-5 col-md-5 col-sm-5 col-xs-12\">\n");
      out.write("                    <div class=\"ranking\">\n");
      out.write("                        <div class=\"panel panel-default\">\n");
      out.write("                            <div class=\"panel-heading\"><h4 class=\"text-center text-uppercase\" style=\"color: #ffffff;font-weight: bold;\"> Ranking </h4></div>\n");
      out.write("                            <div class=\"panel-body\">\n");
      out.write("                                <table class=\"table\">\n");
      out.write("                                    <thead>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <th style=\"width: 120px;\" >\n");
      out.write("                                                <span class=\"glyphicon glyphicon-user\" aria-hidden=\"true\"></span>\n");
      out.write("                                                Candidato</th>\n");
      out.write("                                            <th class=\"text-center\">\n");
      out.write("                                                <span class=\"glyphicon glyphicon-signal\" aria-hidden=\"true\"></span>\n");
      out.write("                                                Tendencia</th>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </thead>\n");
      out.write("                                    <tbody>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td><img src=\"../../img/imagen-Veronika-Mendoza.jpg\" alt=\"Veronika\" class=\"img-circle\" width=\"50\" ></td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <div class=\"progress\">\n");
      out.write("                                                    <div class=\"progress-bar progress-bar-success\" role=\"progressbar\" aria-valuenow=\"0\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"min-width: 2em;width: 23%;\">\n");
      out.write("                                                        23%\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td><img src=\"../../img/imagen-Alejandro-Toledo.jpg\" alt=\"Toledo\" class=\"img-circle\" width=\"50\" ></td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <div class=\"progress\">\n");
      out.write("                                                    <div class=\"progress-bar progress-bar-success\" role=\"progressbar\" aria-valuenow=\"0\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"min-width: 2em;width: 20%;\">\n");
      out.write("                                                        20%\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td><img src=\"../../img/imagen-Alan-Garcia.jpg\" alt=\"Garcia\" class=\"img-circle\" width=\"50\" ></td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <div class=\"progress\">\n");
      out.write("                                                    <div class=\"progress-bar progress-bar-success\" role=\"progressbar\" aria-valuenow=\"0\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"min-width: 2em;width: 18%;\">\n");
      out.write("                                                        18%\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td><img src=\"../../img/imagen-Keiko-fujimori.jpg\" alt=\"Fujimori\" class=\"img-circle\" width=\"50\" ></td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <div class=\"progress\">\n");
      out.write("                                                    <div class=\"progress-bar progress-bar-success\" role=\"progressbar\" aria-valuenow=\"0\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"min-width: 2em;width: 16%;\">\n");
      out.write("                                                        16%\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td><img src=\"../../img/imagen-Cesar-Acuna-Peralta.jpg\" alt=\"Acuña\" class=\"img-circle\" width=\"50\" ></td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <div class=\"progress\">\n");
      out.write("                                                    <div class=\"progress-bar progress-bar-success\" role=\"progressbar\" aria-valuenow=\"0\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"min-width: 2em;width: 10%;\">\n");
      out.write("                                                        10%\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </tbody>\n");
      out.write("                                </table>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    ");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"pie-pag\">\n");
      out.write("    <div class=\"pie-a\"> <p>Derechos Reservados° | Desarrollado por <a href=\"#\"> espartanos.com </a></p></div>\n");
      out.write("    <div class=\"pie-b\"> <p></p></div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("    <script src=\"../../js/jquery-1.9.1.min.js\"></script>\n");
      out.write("    <script src=\"../../js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"lib/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

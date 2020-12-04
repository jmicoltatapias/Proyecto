package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Registro_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Registro</title><meta charset=\"utf-8\" />\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\" />\n");
      out.write("        <meta name=\"description\" content=\"\" />\n");
      out.write("        <meta name=\"author\" content=\"\" />\n");
      out.write("        <title>Registrar</title>\n");
      out.write("        <link href=\"css/styles.css\" rel=\"stylesheet\" />\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"js/scripts.js\"></script>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css\" integrity=\"sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2\" crossorigin=\"anonymous\">\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\" integrity=\"sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js\" integrity=\"sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js\" integrity=\"sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s\" crossorigin=\"anonymous\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div class=\"card\">\n");
      out.write("            <div class=\"card-header\"><h5 class=\"font-weight-light my-1\">Creacion de posibles clientes</h5></div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"card-body\">\n");
      out.write("\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <form method=\"post\" action=\"#\">\n");
      out.write("\n");
      out.write("                        <div class=\"form-row\">\n");
      out.write("                            <div class=\"col-md-12\">\n");
      out.write("\n");
      out.write("                                <br>\n");
      out.write("\n");
      out.write("                                <input class=\"btn btn-primary\" type=\"submit\" value=\"Guardar\" id=\"btnGuardar\" name=\"btnGuardar\" />\n");
      out.write("\n");
      out.write("                                <input class=\"btn btn-primary\" href=\"#\" type=\"submit\" value=\"Modificar\"  />\n");
      out.write("\n");
      out.write("                                <input class=\"btn btn-primary\" href=\"#\" type=\"submit\" value=\"Cancelar\" />\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <br>\n");
      out.write("                        <h2 class=\"display- text-center\"><h1><Strong>Informacion de posibles clientes</strong></h1>\n");
      out.write("                            <br/>\n");
      out.write("\n");
      out.write("                            <div class=\"form-row\">\n");
      out.write("                                <div class=\"col-md-3\">\n");
      out.write("                                    <label>Empresa</label>\n");
      out.write("                                    <input class=\"form-control\" type=\"text\" placeholder=\"Ingrese Empresa\" id=\"txtEmpresa\" name=\"txtEmpresa\" />\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <div class=\"col-md-3\">\n");
      out.write("                                    <label>Nombre</label>\n");
      out.write("                                    <input class=\"form-control\" type=\"text\" placeholder=\"Ingrese su nombre\" id=\"txtNombre\" name=\"txtNombre\" />\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <div class=\"col-md-3\">\n");
      out.write("                                    <label>Apellido</label>\n");
      out.write("                                    <input class=\"form-control\" type=\"text\" placeholder=\"Ingrese su apellido\" id=\"txtApellido\" name=\"txtapellido\" />\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <div class=\"col-md-3\">\n");
      out.write("                                    <label>Titulo</label>\n");
      out.write("                                    <input class=\"form-control\" type=\"text\" placeholder=\"Ingrese su titulo\" id=\"txtTitulo\" name=\"txtTitulo\" />\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"form-row\">\n");
      out.write("\n");
      out.write("                                <div class=\"col-md-3\">\n");
      out.write("                                    <br>\n");
      out.write("                                    <label>Correo Electronico</label>\n");
      out.write("                                    <input class=\"form-control\" type=\"text\" placeholder=\"Ingrese su Email\" id=\"txtEmail\" name=\"txtEmail\" />\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <div class=\"col-md-3\">\n");
      out.write("                                    <br>\n");
      out.write("                                    <label>Telefono</label>\n");
      out.write("                                    <input class=\"form-control\" type=\"number\" placeholder=\"Ingrese su telefono\" id=\"txtTelefono\" name=\"txtTelefono\" />\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <div class=\"col-md-3\">\n");
      out.write("                                    <br>\n");
      out.write("                                    <label>Fax</label>\n");
      out.write("                                    <input class=\"form-control\" type=\"number\" placeholder=\"Fax\" id=\"txtFax\" name=\"txtFax\" />\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"col-md-3\">\n");
      out.write("                                    <br>\n");
      out.write("                                    <label>Movil</label>\n");
      out.write("                                    <input class=\"form-control\" type=\"number\" placeholder=\"Ingrese su movil\" id=\"txtMovil\" name=\"txtMovil\" />\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-row\">\n");
      out.write("\n");
      out.write("                                <div class=\"col-md-3\">\n");
      out.write("                                    <br>\n");
      out.write("                                    <label>Sitio Web</label>\n");
      out.write("                                    <input class=\"form-control\" type=\"text\" placeholder=\"Ingrese su sitio web\" id=\"txtWeb\" name=\"txtWeb\" />\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"col-md-3\">\n");
      out.write("                                    <br>\n");
      out.write("                                    <label>Fuente de posible cliente:</label>\n");
      out.write("                                    <select class=\"form-control\" id=\"ddlGenero\" name=\"ddlGenero\">\n");
      out.write("                                        <option value=\"-1\">None</option>\n");
      out.write("                                        <option value=\"1\">Aviso</option>\n");
      out.write("                                        <option value=\"2\">Llamada no solicitada</option>\n");
      out.write("                                        <option value=\"3\">Recomendacion de empleado</option>\n");
      out.write("                                        <option value=\"4\">Recomendacion externa</option>\n");
      out.write("                                        <option value=\"5\">tienda en linea</option>\n");
      out.write("                                    </select>\n");
      out.write("                                </div>  \n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </form>    \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("    </body>\n");
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

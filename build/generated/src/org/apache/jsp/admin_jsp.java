package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Admin</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\">\n");
      out.write("        <link href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\"> <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery-1.11.1.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\"> \n");
      out.write("            <div class=\"row\"> \n");
      out.write("                <h1 class=\"text-center\">Administrator</h1> \n");
      out.write("                <div class=\"col-md-10 col-md-offset-1\"> \n");
      out.write("                    <div class=\"panel panel-default panel-table\"> \n");
      out.write("                        <div class=\"panel-heading\"> \n");
      out.write("                            <div class=\"row\"> \n");
      out.write("                                <div class=\"col col-xs-6\"> \n");
      out.write("                                    <h3 class=\"panel-title\">List Product</h3> \n");
      out.write("                                </div> \n");
      out.write("                                <div class=\"col col-xs-6 text-right\"> \n");
      out.write("                                    <button type=\"button\" class=\"btn btn-sm btn-primary btn-create\">Add</button> \n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"panel-body\">\n");
      out.write("                            <table class=\"table table-striped table-bordered table-list\"> \n");
      out.write("                                <thead>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <th><em class=\"fa fa-cog\"></em>\n");
      out.write("                                        </th> \n");
      out.write("                                        <th class=\"hidden-xs\">Id</th> \n");
      out.write("                                        <th>Product</th> \n");
      out.write("                                        <th>Picture Big 1</th>\n");
      out.write("                                        <th>Picture Big 2</th>\n");
      out.write("                                        <th>Picture Big 3</th>\n");
      out.write("                                        <th>Picture Small 1</th>\n");
      out.write("                                        <th>Picture Small 2</th>\n");
      out.write("                                        <th>Picture Small 3</th>\n");
      out.write("                                        <th>Description</th>\n");
      out.write("                                    </tr> \n");
      out.write("                                </thead> \n");
      out.write("                                <tbody>\n");
      out.write("                                    <tr> \n");
      out.write("                                        <td align=\"center\"><a class=\"btn btn-default\"><em class=\"fa fa-pencil\"></em></a> <a class=\"btn btn-danger\"><em class=\"fa fa-trash\"></em></a>\n");
      out.write("                                        </td> \n");
      out.write("                                        <td class=\"hidden-xs\">1</td>\n");
      out.write("                                        <td>Trek</td>\n");
      out.write("                                        <td><img src=\"img/product/feature-product/f-p-1.jpg\" width=\"100\" height=\"110\"></td>]\n");
      out.write("                                        <td></td>\n");
      out.write("                                        <td></td>\n");
      out.write("                                        <td></td>\n");
      out.write("                                        <td></td>\n");
      out.write("                                        <td></td>\n");
      out.write("                                        <td></td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    <tr> \n");
      out.write("                                        <td align=\"center\"><a class=\"btn btn-default\"><em class=\"fa fa-pencil\"></em></a> <a class=\"btn btn-danger\"><em class=\"fa fa-trash\"></em></a>\n");
      out.write("                                        </td> \n");
      out.write("                                        <td class=\"hidden-xs\">2</td> \n");
      out.write("                                        <td></td> \n");
      out.write("                                        <td></td>\n");
      out.write("                                        <td></td>\n");
      out.write("                                        <td></td>\n");
      out.write("                                        <td></td>\n");
      out.write("                                        <td></td>\n");
      out.write("                                        <td></td>\n");
      out.write("                                        <td></td>\n");
      out.write("                                    </tr> \n");
      out.write("                                    <tr> \n");
      out.write("                                        <td align=\"center\"><a class=\"btn btn-default\"><em class=\"fa fa-pencil\"></em></a> <a class=\"btn btn-danger\"><em class=\"fa fa-trash\"></em></a>\n");
      out.write("                                        </td> \n");
      out.write("                                        <td class=\"hidden-xs\">3</td> \n");
      out.write("                                        <td></td> \n");
      out.write("                                        <td></td>\n");
      out.write("                                        <td></td>\n");
      out.write("                                        <td></td>\n");
      out.write("                                        <td></td>\n");
      out.write("                                        <td></td>\n");
      out.write("                                        <td></td>\n");
      out.write("                                        <td></td>\n");
      out.write("                                    </tr> \n");
      out.write("                                    <tr> \n");
      out.write("                                        <td align=\"center\"><a class=\"btn btn-default\"><em class=\"fa fa-pencil\"></em></a> <a class=\"btn btn-danger\"><em class=\"fa fa-trash\"></em></a>\n");
      out.write("                                        </td> \n");
      out.write("                                        <td class=\"hidden-xs\">4</td> \n");
      out.write("                                        <td></td> \n");
      out.write("                                        <td></td>\n");
      out.write("                                        <td></td>\n");
      out.write("                                        <td></td>\n");
      out.write("                                        <td></td>\n");
      out.write("                                        <td></td>\n");
      out.write("                                        <td></td>\n");
      out.write("                                        <td></td>\n");
      out.write("                                    </tr>\n");
      out.write("                                </tbody>\n");
      out.write("                            </table> \n");
      out.write("                        </div> \n");
      out.write("                        <div class=\"panel-footer\"> \n");
      out.write("                            <div class=\"row\"> \n");
      out.write("                                <div class=\"col col-xs-4\">Page 1 of 5 </div> \n");
      out.write("                                <div class=\"col col-xs-8\"> \n");
      out.write("                                    <ul class=\"pagination hidden-xs pull-right\"> \n");
      out.write("                                        <li><a href=\"#\">1</a>\n");
      out.write("                                        </li> \n");
      out.write("                                        <li><a href=\"#\">2</a>\n");
      out.write("                                        </li> \n");
      out.write("                                        <li><a href=\"#\">3</a>\n");
      out.write("                                        </li> \n");
      out.write("                                        <li><a href=\"#\">4</a>\n");
      out.write("                                        </li> \n");
      out.write("                                        <li><a href=\"#\">5</a>\n");
      out.write("                                        </li> \n");
      out.write("                                    </ul> \n");
      out.write("                                    <ul class=\"pagination visible-xs pull-right\"> \n");
      out.write("                                        <li><a href=\"#\">«</a>\n");
      out.write("                                        </li> \n");
      out.write("                                        <li><a href=\"#\">»</a>\n");
      out.write("                                        </li> \n");
      out.write("                                    </ul> \n");
      out.write("                                </div> \n");
      out.write("                            </div> \n");
      out.write("                        </div> \n");
      out.write("                    </div> \n");
      out.write("                </div> \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
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

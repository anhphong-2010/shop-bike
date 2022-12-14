package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Models.ProductDAO;
import Models.Product;
import Models.CategoryDAO;
import Models.Category;
import java.util.ArrayList;
import Models.User;

public final class tables_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/admin/header.jsp");
    _jspx_dependants.add("/admin/footer.jsp");
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("        <title>Anh Phong ByeBike Admin - Product Data</title>\n");
      out.write("\n");
      out.write("        <!-- Custom fonts for this template-->\n");
      out.write("        <link href=\"asset/vendor/fontawesome-free/css/all.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\n");
      out.write("        <!-- Page level plugin CSS-->\n");
      out.write("        <link href=\"asset/vendor/datatables/dataTables.bootstrap4.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Custom styles for this template-->\n");
      out.write("        <link href=\"asset/css/sb-admin.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body id=\"page-top\">\n");
      out.write("        <!-- Start Header-->\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <body>\n");
      out.write("        ");

            HttpSession ses1 = request.getSession();
            User u = (User) ses1.getAttribute("name");
            if (u != null) {
            }
        
      out.write("\n");
      out.write("        <!-- Start header -->\n");
      out.write("        <nav class=\"navbar navbar-expand navbar-dark bg-dark static-top\">\n");
      out.write("            <a class=\"navbar-brand mr-1\" href=\"index.jsp\">Anh Phong Byebike Admin</a>\n");
      out.write("\n");
      out.write("            <button class=\"btn btn-link btn-sm text-white order-1 order-sm-0\" id=\"sidebarToggle\" href=\"#\">\n");
      out.write("                <i class=\"fas fa-bars\"></i>\n");
      out.write("            </button>\n");
      out.write("            <!-- Navbar Search -->\n");
      out.write("            <form class=\"d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0\">\n");
      out.write("                <div class=\"input-group\">\n");
      out.write("                    <input type=\"text\" class=\"form-control\" placeholder=\"Search for...\" aria-label=\"Search\" aria-describedby=\"basic-addon2\">\n");
      out.write("                    <div class=\"input-group-append\">\n");
      out.write("                        <button class=\"btn btn-primary\" type=\"button\">\n");
      out.write("                            <i class=\"fas fa-search\"></i>\n");
      out.write("                        </button>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("\n");
      out.write("            <!-- Navbar -->\n");
      out.write("            <ul class=\"navbar-nav ml-auto ml-md-0\">\n");
      out.write("                <li class=\"nav-item dropdown no-arrow mx-1\">\n");
      out.write("                    <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"alertsDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                        <i class=\"fas fa-bell fa-fw\"></i>\n");
      out.write("                        <span class=\"badge badge-danger\">9+</span>\n");
      out.write("                    </a>\n");
      out.write("                    <div class=\"dropdown-menu dropdown-menu-right\" aria-labelledby=\"alertsDropdown\">\n");
      out.write("                        <a class=\"dropdown-item\" href=\"#\">Action</a>\n");
      out.write("                        <a class=\"dropdown-item\" href=\"#\">Another action</a>\n");
      out.write("                        <div class=\"dropdown-divider\"></div>\n");
      out.write("                        <a class=\"dropdown-item\" href=\"#\">Something else here</a>\n");
      out.write("                    </div>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item dropdown no-arrow mx-1\">\n");
      out.write("                    <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"messagesDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                        <i class=\"fas fa-envelope fa-fw\"></i>\n");
      out.write("                        <span class=\"badge badge-danger\">7</span>\n");
      out.write("                    </a>\n");
      out.write("                    <div class=\"dropdown-menu dropdown-menu-right\" aria-labelledby=\"messagesDropdown\">\n");
      out.write("                        <a class=\"dropdown-item\" href=\"#\">Action</a>\n");
      out.write("                        <a class=\"dropdown-item\" href=\"#\">Another action</a>\n");
      out.write("                        <div class=\"dropdown-divider\"></div>\n");
      out.write("                        <a class=\"dropdown-item\" href=\"#\">Something else here</a>\n");
      out.write("                    </div>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item dropdown no-arrow\">\n");
      out.write("                    <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"userDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                        <i class=\"fas fa-user-circle fa-fw\"></i>\n");
      out.write("                    </a>\n");
      out.write("                    <div class=\"dropdown-menu dropdown-menu-right\" aria-labelledby=\"userDropdown\">\n");
      out.write("                        <a class=\"dropdown-item\" href=\"#\">Settings</a>\n");
      out.write("                        <a class=\"dropdown-item\" href=\"#\">Activity Log</a>\n");
      out.write("                        <div class=\"dropdown-divider\"></div>\n");
      out.write("                        <a class=\"dropdown-item\" href=\"/shopxedap/UserController?command=logout\" data-toggle=\"modal\" data-target=\"#logoutModal\">Logout</a>\n");
      out.write("                    </div>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("\n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write("        <div id=\"wrapper\">\n");
      out.write("\n");
      out.write("            <!-- Sidebar -->\n");
      out.write("            <ul class=\"sidebar navbar-nav\">\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link\" href=\"index.jsp\">\n");
      out.write("                        <img src=\"images/avatar.png\" alt=\"avatar\" width=\"50\" height=\"50\" >\n");
      out.write("                        <span style=\"padding: 5px;\">");
      out.print( u.getTendangnhap());
      out.write("</span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link\" href=\"index.jsp\">\n");
      out.write("                        <i class=\"fas fa-fw fa-tachometer-alt\"></i>\n");
      out.write("                        <span>Dashboard</span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item active\">\n");
      out.write("                    <a class=\"nav-link\" href=\"tables.jsp\">\n");
      out.write("                        <i class=\"fas fa-fw fa-bicycle\"></i>\n");
      out.write("                        <span>Product Management</span></a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item active\">\n");
      out.write("                    <a class=\"nav-link\" href=\"addproduct.jsp\">\n");
      out.write("                        <i class=\"fas fa-fw fa-plus-circle\"></i>\n");
      out.write("                        <span>Add</span></a>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        <!-- End Header-->\n");
      out.write("        <div id=\"content-wrapper\">\n");
      out.write("\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("\n");
      out.write("                <!-- Breadcrumbs-->\n");
      out.write("                <ol class=\"breadcrumb\">\n");
      out.write("                    <li class=\"breadcrumb-item\">\n");
      out.write("                        <a href=\"/shopxedap/admin/index.jsp\">Dashboard</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"breadcrumb-item active\">Product</li>\n");
      out.write("                </ol>\n");
      out.write("\n");
      out.write("                <!-- DataTables Example -->\n");
      out.write("                <div class=\"card mb-3\">\n");
      out.write("                    <div class=\"card-header\">\n");
      out.write("                        <i class=\"fas fa-table\"></i>\n");
      out.write("                        Product Data Table</div>\n");
      out.write("                    <div class=\"card-body\">\n");
      out.write("                        <div class=\"table-responsive\">\n");
      out.write("                            <table class=\"table table-bordered\" id=\"dataTable\" width=\"100%\" cellspacing=\"0\">\n");
      out.write("                                <thead>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <th>ID</th>\n");
      out.write("                                        <th>Name</th>\n");
      out.write("                                        <th>Price</th>\n");
      out.write("                                        <th>Category ID</th>\n");
      out.write("                                        <th>Quantity</th>\n");
      out.write("                                        <th>Description</th>\n");
      out.write("                                        <th>Picture</th>\n");
      out.write("                                        <th>Big Picture 1</th>\n");
      out.write("                                        <th>Big Picture 2</th>\n");
      out.write("                                        <th>Big Picture 3</th>\n");
      out.write("                                        <th>Small Picture 1</th>\n");
      out.write("                                        <th>Small Picture 2</th>\n");
      out.write("                                        <th>Small Picture 3</th>\n");
      out.write("                                        <th>Brand</th>\n");
      out.write("                                        <th>Color</th>\n");
      out.write("                                        <th>Frame</th>\n");
      out.write("                                        <th>Weight</th>\n");
      out.write("                                        <th>Size</th>\n");
      out.write("                                        <th>Wheels</th>\n");
      out.write("                                        <th>Brake</th>\n");
      out.write("                                        <th></th>\n");
      out.write("                                    </tr>\n");
      out.write("                                </thead>\n");
      out.write("                                <tfoot>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <th>ID</th>\n");
      out.write("                                        <th>Name</th>\n");
      out.write("                                        <th>Price</th>\n");
      out.write("                                        <th>Category ID</th>\n");
      out.write("                                        <th>Quantity</th>\n");
      out.write("                                        <th>Description</th>\n");
      out.write("                                        <th>Picture</th>\n");
      out.write("                                        <th>Big Picture 1</th>\n");
      out.write("                                        <th>Big Picture 2</th>\n");
      out.write("                                        <th>Big Picture 3</th>\n");
      out.write("                                        <th>Small Picture 1</th>\n");
      out.write("                                        <th>Small Picture 2</th>\n");
      out.write("                                        <th>Small Picture 3</th>\n");
      out.write("                                        <th>Brand</th>\n");
      out.write("                                        <th>Color</th>\n");
      out.write("                                        <th>Frame</th>\n");
      out.write("                                        <th>Weight</th>\n");
      out.write("                                        <th>Size</th>\n");
      out.write("                                        <th>Wheels</th>\n");
      out.write("                                        <th>Brake</th>\n");
      out.write("                                        <th></th>\n");
      out.write("                                    </tr>\n");
      out.write("                                </tfoot>\n");
      out.write("                                <tbody>\n");
      out.write("\n");
      out.write("                                    <tr>\n");
      out.write("                                        ");
                                            
                                            ArrayList<Product> arrpro = ProductDAO.getProduct();
                                            for (int i = 0; i < arrpro.size(); i++) {
                                                Product pro = arrpro.get(i);
                                        
      out.write("\n");
      out.write("                                        <td style=\"font-size: 12px\">");
      out.print( pro.getMasanpham());
      out.write("</td>\n");
      out.write("                                        <td style=\"font-size: 12px\">");
      out.print( pro.getTensanpham());
      out.write("</td>\n");
      out.write("                                        <td style=\"font-size: 12px\">");
      out.print( pro.getGiatien());
      out.write("</td>\n");
      out.write("                                        <td style=\"font-size: 12px\">");
      out.print( pro.getMaloaisanpham());
      out.write("</td>\n");
      out.write("                                        <td style=\"font-size: 12px\">");
      out.print( pro.getSoluong());
      out.write("</td>\n");
      out.write("                                        <td style=\"font-size: 12px\">");
      out.print( pro.getMota());
      out.write("</td>\n");
      out.write("                                        <td style=\"font-size: 12px\">\n");
      out.write("                                            ");
      out.print( pro.getHinhanhsanpham());
      out.write("\n");
      out.write("                                            <hr>\n");
      out.write("                                            <img src=\"/shopxedap/");
      out.print( pro.getHinhanhsanpham());
      out.write("\" width=\"70\" height=\"80\" />\n");
      out.write("                                        </td>\n");
      out.write("                                        <td style=\"font-size: 12px\">\n");
      out.write("                                            ");
      out.print( pro.getHinhanhto1());
      out.write("\n");
      out.write("                                            <hr>\n");
      out.write("                                            <img src=\"/shopxedap/");
      out.print( pro.getHinhanhto1());
      out.write("\" width=\"70\" height=\"80\" />\n");
      out.write("                                        </td>\n");
      out.write("                                        <td style=\"font-size: 12px\">\n");
      out.write("                                            ");
      out.print( pro.getHinhanhto2());
      out.write("\n");
      out.write("                                            <hr>\n");
      out.write("                                            <img src=\"/shopxedap/");
      out.print( pro.getHinhanhto2());
      out.write("\" width=\"70\" height=\"80\" />\n");
      out.write("                                        </td>\n");
      out.write("                                        <td style=\"font-size: 12px\">\n");
      out.write("                                            ");
      out.print( pro.getHinhanhto3());
      out.write("\n");
      out.write("                                            <hr>\n");
      out.write("                                            <img src=\"/shopxedap/");
      out.print( pro.getHinhanhto3());
      out.write("\" width=\"70\" height=\"80\" />\n");
      out.write("                                        </td>\n");
      out.write("                                        <td style=\"font-size: 12px\">\n");
      out.write("                                            ");
      out.print( pro.getHinhanhnho1());
      out.write("\n");
      out.write("                                            <hr>\n");
      out.write("                                            <img src=\"/shopxedap/");
      out.print( pro.getHinhanhnho1());
      out.write("\" width=\"70\" height=\"80\" />\n");
      out.write("                                        </td>\n");
      out.write("                                        <td style=\"font-size: 12px\">\n");
      out.write("                                            ");
      out.print( pro.getHinhanhnho2());
      out.write("\n");
      out.write("                                            <hr>\n");
      out.write("                                            <img src=\"/shopxedap/");
      out.print( pro.getHinhanhnho2());
      out.write("\" width=\"70\" height=\"80\" />\n");
      out.write("                                        </td>\n");
      out.write("                                        <td style=\"font-size: 12px\">\n");
      out.write("                                            ");
      out.print( pro.getHinhanhnho3());
      out.write("\n");
      out.write("                                            <hr>\n");
      out.write("                                            <img src=\"/shopxedap/");
      out.print( pro.getHinhanhnho3());
      out.write("\" width=\"70\" height=\"80\" />\n");
      out.write("                                        </td>\n");
      out.write("                                        <td style=\"font-size: 12px\">");
      out.print( pro.getTenthuonghieu());
      out.write("</td>\n");
      out.write("                                        <td style=\"font-size: 12px\">");
      out.print( pro.getMausac());
      out.write("</td>\n");
      out.write("                                        <td style=\"font-size: 12px\">");
      out.print( pro.getKhung());
      out.write("</td>\n");
      out.write("                                        <td style=\"font-size: 12px\">");
      out.print( pro.getTrongluong());
      out.write("</td>\n");
      out.write("                                        <td style=\"font-size: 12px\">");
      out.print( pro.getKichthuoc());
      out.write("</td>\n");
      out.write("                                        <td style=\"font-size: 12px\">");
      out.print( pro.getBanhxe());
      out.write("</td>\n");
      out.write("                                        <td style=\"font-size: 12px\">");
      out.print( pro.getPhanh());
      out.write("</td>\n");
      out.write("                                        <td>\n");
      out.write("                                            <a href=\"/shopxedap/admin/editproduct.jsp?masanpham=");
      out.print( pro.getMasanpham());
      out.write("\"><span id=\"editbutton\" class=\"badge badge-primary\" style=\"font-size: 14px;\">Edit</span></a>\n");
      out.write("                                            <hr>\n");
      out.write("                                            <a href=\"/shopxedap/ProductManagerController?command=delete&masanpham=");
      out.print( pro.getMasanpham());
      out.write("\"><span id=\"deletebutton\" class=\"badge badge-danger\" style=\"font-size: 14px;\">Delete</span></a>\n");
      out.write("                                        </td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    ");

                                        }
                                    
      out.write("\n");
      out.write("                                </tbody>\n");
      out.write("                            </table>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"card-footer small text-muted\">Updated yesterday at 11:59 PM</div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <p class=\"small text-center text-muted my-5\">\n");
      out.write("                    <em>More table examples coming soon...</em>\n");
      out.write("                </p>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <!-- /.container-fluid -->\n");
      out.write("\n");
      out.write("            <!-- Sticky Footer -->\n");
      out.write("            ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Footer</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!-- Sticky Footer -->\n");
      out.write("        <footer class=\"sticky-footer\">\n");
      out.write("            <div class=\"container my-auto\">\n");
      out.write("                <div class=\"copyright text-center my-auto\">\n");
      out.write("                    <span>Copyright ?? Your Website 2019</span>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("        <!--Close Footer -->\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("            <!--Close Footer -->\n");
      out.write("        </div>\n");
      out.write("        <!-- /.content-wrapper -->\n");
      out.write("        <!-- /#wrapper -->\n");
      out.write("\n");
      out.write("        <!-- Scroll to Top Button-->\n");
      out.write("        <a class=\"scroll-to-top rounded\" href=\"#page-top\">\n");
      out.write("            <i class=\"fas fa-angle-up\"></i>\n");
      out.write("        </a>\n");
      out.write("\n");
      out.write("        <!-- Logout Modal-->\n");
      out.write("        <div class=\"modal fade\" id=\"logoutModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\n");
      out.write("            <div class=\"modal-dialog\" role=\"document\">\n");
      out.write("                <div class=\"modal-content\">\n");
      out.write("                    <div class=\"modal-header\">\n");
      out.write("                        <h5 class=\"modal-title\" id=\"exampleModalLabel\">Ready to Leave?</h5>\n");
      out.write("                        <button class=\"close\" type=\"button\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                            <span aria-hidden=\"true\">??</span>\n");
      out.write("                        </button>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"modal-body\">Select \"Logout\" below if you are ready to end your current session.</div>\n");
      out.write("                    <div class=\"modal-footer\">\n");
      out.write("                        <button class=\"btn btn-secondary\" type=\"button\" data-dismiss=\"modal\">Cancel</button>\n");
      out.write("                        <a class=\"btn btn-primary\" href=\"login.jsp\">Logout</a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- Bootstrap core JavaScript-->\n");
      out.write("        <script src=\"asset/vendor/jquery/jquery.min.js\"></script>\n");
      out.write("        <script src=\"asset/vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Core plugin JavaScript-->\n");
      out.write("        <script src=\"asset/vendor/jquery-easing/jquery.easing.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Page level plugin JavaScript-->\n");
      out.write("        <script src=\"asset/vendor/datatables/jquery.dataTables.js\"></script>\n");
      out.write("        <script src=\"asset/vendor/datatables/dataTables.bootstrap4.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Custom scripts for all pages-->\n");
      out.write("        <script src=\"asset/js/sb-admin.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Demo scripts for this page-->\n");
      out.write("        <script src=\"asset/js/demo/datatables-demo.js\"></script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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

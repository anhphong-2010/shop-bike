package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Models.Item;
import Models.Product;
import Models.ProductDAO;
import Models.CategoryDAO;
import java.util.ArrayList;
import Models.Category;
import Models.User;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/footer.jsp");
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
      out.write("<!doctype html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <!-- Required meta tags -->\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("        <link rel=\"icon\" href=\"img/favicon.png\" type=\"image/png\">\n");
      out.write("        <title>Anh Phong ByeBike</title>\n");
      out.write("        <!-- Bootstrap CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"vendors/linericon/style.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/font-awesome.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"vendors/owl-carousel/owl.carousel.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"vendors/lightbox/simpleLightbox.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"vendors/nice-select/css/nice-select.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"vendors/animate-css/animate.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"vendors/jquery-ui/jquery-ui.css\">\n");
      out.write("        <!-- main css -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/responsive.css\">\n");
      out.write("    </head>\n");
      out.write("    <script src=\"https://unpkg.com/sweetalert/dist/sweetalert.min.js\"></script>\n");
      out.write("    <script src='https://www.google.com/recaptcha/api.js'></script>\n");
      out.write("    <script src=\"https://www.google.com/recaptcha/api.js?render=reCAPTCHA_site_key\"></script>\n");
      out.write("    <script>\n");
      out.write("        function myFunction() {\n");
      out.write("            var x = document.forms[\"loginform\"][\"name\"].value;\n");
      out.write("            var y = document.forms[\"loginform\"][\"password\"].value;\n");
      out.write("            if (x == \"\") {\n");
      out.write("                alert(\"Name must be filled out\");\n");
      out.write("                return false;\n");
      out.write("            } else if (y == \"\") {\n");
      out.write("                alert(\"Password must be filled out\");\n");
      out.write("                return false;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            // Check capcha\n");
      out.write("            var resCapcha = grecaptcha.getResponse();\n");
      out.write("\n");
      out.write("            if (resCapcha.length === 0) { // Not verified\n");
      out.write("                var elm = document.getElementById('showError');\n");
      out.write("                elm.textContent = 'Please check captcha';\n");
      out.write("                elm.style.color = 'red';\n");
      out.write("                elm.style.display = 'block';\n");
      out.write("                return;\n");
      out.write("            } else { // Verified\n");
      out.write("                var elm = document.getElementById('showError');\n");
      out.write("                elm.style.display = 'none';\n");
      out.write("                document.getElementById('loginform').submit();\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        }\n");
      out.write("    </script>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <!--================Header Menu Area =================-->\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
      out.write("        <header class=\"header_area\">\n");
      out.write("            <div class=\"top_menu row m0\">\n");
      out.write("                <div class=\"container-fluid\">\n");
      out.write("                    <div class=\"float-left\">\n");
      out.write("                        <p>Call Us: 012 44 5698 7456 896</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"float-right\">\n");
      out.write("                        <ul class=\"right_side\">\n");
      out.write("                            ");

                                HttpSession s = request.getSession();
                                User u = (User) s.getAttribute("name");
                                if (u != null) {
                                    if (u.getTrangthai() == true) {
                            
      out.write("\n");
      out.write("                            <li style=\"color: green\">Account activated</li>\n");
      out.write("                                ");
 } else if (u.getTrangthai() == false) { 
      out.write("\n");
      out.write("\n");
      out.write("                            <li style=\"color: red\">Account is not activated</li>\n");
      out.write("\n");
      out.write("                            ");
 }
      out.write("\n");
      out.write("\n");
      out.write("                            <li><a href=\"#\">");
      out.print( u.getTendangnhap());
      out.write("</a></li>\n");
      out.write("                                ");

                                } else {
                                
      out.write("                        \n");
      out.write("                            <li><a href=\"login.jsp\">Login</a></li>\n");
      out.write("                                ");
  }  
      out.write("\n");
      out.write("                                ");

                                    if (u == null) {
                                
      out.write("\n");
      out.write("                            <li><a href=\"registration.jsp\">Register</a></li>\n");
      out.write("                                ");

                                } else if (u.getTrangthai() == true) {
                                
      out.write("\n");
      out.write("                            <li><a href=\"editinformation.jsp\">Edit</a></li>\n");
      out.write("                            <li><a href=\"UserController?command=logout\">Log out</a></li>\n");
      out.write("                                ");

                                } else if (u.getTrangthai() == false) {
                                
      out.write("\n");
      out.write("                            <li><a href=\"UserController?command=logout\">Log out</a></li>\n");
      out.write("                                ");

                                    }
                                
      out.write("\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"main_menu\">\n");
      out.write("                <nav class=\"navbar navbar-expand-lg navbar-light\">\n");
      out.write("                    <div class=\"container-fluid\">\n");
      out.write("                        <!-- Brand and toggle get grouped for better mobile display -->\n");
      out.write("                        <a class=\"navbar-brand logo_h\" href=\"index.jsp\">\n");
      out.write("                            <img src=\"img/logo3.png\" alt=\"\" />\n");
      out.write("                        </a>\n");
      out.write("                        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\"\n");
      out.write("                                aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                            <span class=\"icon-bar\"></span>\n");
      out.write("                            <span class=\"icon-bar\"></span>\n");
      out.write("                            <span class=\"icon-bar\"></span>\n");
      out.write("                        </button>\n");
      out.write("                        <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("                        <div class=\"collapse navbar-collapse offset\" id=\"navbarSupportedContent\">\n");
      out.write("                            <div class=\"row w-100\">\n");
      out.write("                                <div class=\"col-lg-7 pr-0\">\n");
      out.write("                                    <ul class=\"nav navbar-nav center_nav pull-right\">\n");
      out.write("                                        <li class=\"nav-item active\">\n");
      out.write("                                            <a class=\"nav-link\" href=\"index.jsp\">Home</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li class=\"nav-item submenu dropdown\">\n");
      out.write("                                            <a href=\"#\" class=\"nav-link dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">Shop</a>\n");
      out.write("                                            <ul class=\"dropdown-menu\">\n");
      out.write("                                                ");
 ArrayList<Category> arrloai = CategoryDAO.getCategory();
                                                    for (int i = 0; i < arrloai.size(); i++) {
                                                        Category c = arrloai.get(i);
                                                
      out.write("\n");
      out.write("                                                <li class=\"nav-item\">\n");
      out.write("                                                    <a class=\"nav-link\" href=\"ProductController?MaLoaiSanPham=");
      out.print(c.getMaloaisanpham());
      out.write("&MaTrang=1\">");
      out.print( c.getTenloaisanpham());
      out.write("</a>\n");
      out.write("                                                </li>\n");
      out.write("                                                ");

                                                    }
                                                
      out.write("\n");
      out.write("                                            </ul>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li class=\"nav-item submenu dropdown\">\n");
      out.write("                                            <a href=\"#\" class=\"nav-link dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">Gallerry</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li class=\"nav-item submenu dropdown\">\n");
      out.write("                                            <a href=\"#\" class=\"nav-link dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">Blog</a>\n");
      out.write("                                            <ul class=\"dropdown-menu\">\n");
      out.write("                                                <li class=\"nav-item\">\n");
      out.write("                                                    <a class=\"nav-link\" href=\"blog.html\">Blog</a>\n");
      out.write("                                                </li>\n");
      out.write("                                                <li class=\"nav-item\">\n");
      out.write("                                                    <a class=\"nav-link\" href=\"single-blog.html\">Blog Details</a>\n");
      out.write("                                                </li>\n");
      out.write("                                            </ul>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li class=\"nav-item\">\n");
      out.write("                                            <a class=\"nav-link\" href=\"contact.jsp\">Contact</a>\n");
      out.write("                                        </li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-lg-5\">\n");
      out.write("                                    <ul class=\"nav navbar-nav navbar-right right_nav pull-right\">\n");
      out.write("                                        <hr>\n");
      out.write("                                        <li class=\"nav-item\">\n");
      out.write("                                            <a href=\"#\" class=\"icons\">\n");
      out.write("                                                <i class=\"fa fa-search\" aria-hidden=\"true\"></i>\n");
      out.write("                                            </a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <hr>\n");
      out.write("                                        <li class=\"nav-item\">\n");
      out.write("                                            <a href=\"historypayments.jsp\" class=\"icons\">\n");
      out.write("                                                <i class=\"fa fa-user\" aria-hidden=\"true\"></i>\n");
      out.write("                                            </a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <hr>\n");
      out.write("                                        <li class=\"nav-item\">\n");
      out.write("                                            <a href=\"#\" class=\"icons\">\n");
      out.write("                                                <i class=\"fa fa-heart-o\" aria-hidden=\"true\"></i>\n");
      out.write("                                            </a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <hr>\n");
      out.write("                                        <li class=\"nav-item\">\n");
      out.write("                                            ");

                                                HttpSession sescart = request.getSession();
                                                if (sescart.getAttribute("giohang") != null) {
                                                    ArrayList<Item> cart = (ArrayList<Item>) sescart.getAttribute("giohang");
                                            
      out.write("\n");
      out.write("                                            <a href=\"cart.jsp\" class=\"icons\">\n");
      out.write("                                                <i class=\"lnr lnr lnr-cart\"><span class=\"badge badge-danger\" style=\"border-radius:10px;\">");
      out.print( cart.size());
      out.write("</span></i>\n");
      out.write("                                                \n");
      out.write("                                            </a>\n");
      out.write("                                            ");

                                            } else if (sescart.getAttribute("giohang") == null) {

                                            
      out.write("\n");
      out.write("                                            <a href=\"cart.jsp\" class=\"icons\">\n");
      out.write("                                                <i class=\"lnr lnr lnr-cart\"></i>\n");
      out.write("\n");
      out.write("                                            </a>\n");
      out.write("                                            ");
                                                }
                                            
      out.write("\n");
      out.write("                                        </li>\n");
      out.write("                                        <hr>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </nav>\n");
      out.write("            </div>\n");
      out.write("        </header>     \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        <!--================Header Menu Area =================-->\n");
      out.write("        <!--================Home Banner Area =================-->\n");
      out.write("        <section class=\"banner_area\">\n");
      out.write("            <div class=\"banner_inner d-flex align-items-center\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"banner_content text-center\">\n");
      out.write("                        <h2>Login</h2>\n");
      out.write("                        <div class=\"page_link\">\n");
      out.write("                            <a href=\"index.jsp\">Home</a>\n");
      out.write("                            <a href=\"login.jsp\">Login</a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <!--================End Home Banner Area =================-->\n");
      out.write("\n");
      out.write("        <!--================Login Box Area =================-->\n");
      out.write("        <section class=\"login_box_area p_120\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-6\">\n");
      out.write("                        <div class=\"login_box_img\">\n");
      out.write("                            <img class=\"img-fluid\" src=\"img/login.jpg\" alt=\"\">\n");
      out.write("                            <div class=\"hover\">\n");
      out.write("                                <h4>New to our website?</h4>\n");
      out.write("                                <p>There are advances being made in science and technology everyday, and a good example of this is the</p>\n");
      out.write("                                <a class=\"main_btn\" href=\"registration.jsp\">Create an Account</a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-6\">\n");
      out.write("                        <div class=\"login_form_inner\">\n");
      out.write("                            <h3>Log in to enter</h3>\n");
      out.write("                            <form class=\"row login_form\" name=\"loginform\" action=\"UserController\" method=\"post\" id=\"loginform\" >\n");
      out.write("                                <div class=\"col-md-12 form-group \">\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" id=\"name\" name=\"name\" placeholder=\"Username\" />\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-12 form-group\">\n");
      out.write("                                    <input type=\"password\" class=\"form-control\" id=\"password\" name=\"password\" placeholder=\"Password\" />\n");
      out.write("                                </div>\n");
      out.write("                                <input type=\"hidden\" id=\"command\" name=\"command\" value=\"login\" />\n");
      out.write("                                <div id=\"showError\" style=\"display:none;\"></div>\n");
      out.write("                                <div class=\"col-md-12 form-group\">\n");
      out.write("                                    <div class=\"g-recaptcha\" data-sitekey=\"6LeMzF0UAAAAAOa0kmcjpIhHJdvIg-6h5rVlSEA7\"></div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-12 form-group\">\n");
      out.write("                                    <div class=\"creat_account\">\n");
      out.write("                                        <input type=\"checkbox\" id=\"f-option2\" name=\"selector\">\n");
      out.write("                                        <label for=\"f-option2\">Keep me logged in</label>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-12 form-group\">\n");
      out.write("                                    <button type=\"button\" id=\"btnSubmit\" class=\"btn submit_btn\" onclick=\"myFunction()\">Log In</button>\n");
      out.write("                                    <a href=\"#\">Forgot Password?</a>\n");
      out.write("                                </div>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <!--================End Login Box Area =================-->\n");
      out.write("\n");
      out.write("        <!--================ Subscription Area ================-->\n");
      out.write("        <section class=\"subscription-area section_gap\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row justify-content-center\">\n");
      out.write("                    <div class=\"col-lg-8\">\n");
      out.write("                        <div class=\"section-title text-center\">\n");
      out.write("                            <h2>Subscribe for Our Newsletter</h2>\n");
      out.write("                            <span>We won’t send any kind of spam</span>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row justify-content-center\">\n");
      out.write("                    <div class=\"col-lg-6\">\n");
      out.write("                        <div id=\"mc_embed_signup\">\n");
      out.write("                            <form target=\"_blank\" novalidate action=\"https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&id=92a4423d01\"\n");
      out.write("                                  method=\"get\" class=\"subscription relative\">\n");
      out.write("                                <input type=\"email\" name=\"EMAIL\" placeholder=\"Email address\" onfocus=\"this.placeholder = ''\" onblur=\"this.placeholder = 'Email address'\"\n");
      out.write("                                       required=\"\">\n");
      out.write("                                <!-- <div style=\"position: absolute; left: -5000px;\">\n");
      out.write("                                                <input type=\"text\" name=\"b_36c4fd991d266f23781ded980_aefe40901a\" tabindex=\"-1\" value=\"\">\n");
      out.write("                                        </div> -->\n");
      out.write("                                <button type=\"submit\" class=\"newsl-btn\">Get Started</button>\n");
      out.write("                                <div class=\"info\"></div>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <!--================ End Subscription Area ================-->\n");
      out.write("\n");
      out.write("        <!--================ start footer Area  =================-->\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <body>\n");
      out.write("        <footer class=\"footer-area section_gap\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("\t\t<div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-3  col-md-6 col-sm-6\">\n");
      out.write("                        <div class=\"single-footer-widget\">\n");
      out.write("                            <h6 class=\"footer_title\">About Us</h6>\n");
      out.write("                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore dolore magna aliqua.</p>\n");
      out.write("\t\t\t</div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-4 col-md-6 col-sm-6\">\n");
      out.write("\t\t\t<div class=\"single-footer-widget\">\n");
      out.write("                            <h6 class=\"footer_title\">Newsletter</h6>\n");
      out.write("                                <p>Stay updated with our latest trends</p>\n");
      out.write("\t\t\t\t<div id=\"mc_embed_signup\">\n");
      out.write("                                    <form target=\"_blank\" action=\"https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01\"\n");
      out.write("\t\t\t\t\t\t\t method=\"get\" class=\"subscribe_form relative\">\n");
      out.write("                                    <div class=\"input-group d-flex flex-row\">\n");
      out.write("\t\t\t\t\t<input name=\"EMAIL\" placeholder=\"Email Address\" onfocus=\"this.placeholder = ''\" onblur=\"this.placeholder = 'Email Address '\"\n");
      out.write("\t\t\t\t\t\t\t\t\t required=\"\" type=\"email\">\n");
      out.write("\t\t\t\t\t<button class=\"btn sub-btn\">\n");
      out.write("                                            <span class=\"lnr lnr-arrow-right\"></span>\n");
      out.write("\t\t\t\t\t</button>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"mt-10 info\"></div>\n");
      out.write("                                    </form>\n");
      out.write("                                </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-3 col-md-6 col-sm-6\">\n");
      out.write("\t\t\t<div class=\"single-footer-widget instafeed\">\n");
      out.write("                            <h6 class=\"footer_title\">Instagram Feed</h6>\n");
      out.write("                            <ul class=\"list instafeed d-flex flex-wrap\">\n");
      out.write("\t\t\t\t<li>\n");
      out.write("                                    <img src=\"img/instagram/Image-01.jpg\" alt=\"\">\n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t\t\t\t<li>\n");
      out.write("                                    <img src=\"img/instagram/Image-02.jpg\" alt=\"\">\n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t\t\t\t<li>\n");
      out.write("                                    <img src=\"img/instagram/Image-03.jpg\" alt=\"\">\n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t\t\t\t<li>\n");
      out.write("                                    <img src=\"img/instagram/Image-04.jpg\" alt=\"\">\n");
      out.write("                                </li>\n");
      out.write("\t\t\t\t<li>\n");
      out.write("                                    <img src=\"img/instagram/Image-05.jpg\" alt=\"\">\n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t\t\t\t<li>\n");
      out.write("                                    <img src=\"img/instagram/Image-06.jpg\" alt=\"\">\n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t\t\t\t<li>\n");
      out.write("                                    <img src=\"img/instagram/Image-07.jpg\" alt=\"\">\n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t\t\t\t<li>\n");
      out.write("                                    <img src=\"img/instagram/Image-08.jpg\" alt=\"\">\n");
      out.write("\t\t\t\t</li>\n");
      out.write("                            </ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-2 col-md-6 col-sm-6\">\n");
      out.write("\t\t\t<div class=\"single-footer-widget f_social_wd\">\n");
      out.write("                            <h6 class=\"footer_title\">Follow Us</h6>\n");
      out.write("                            <p>Let us be social</p>\n");
      out.write("                            <div class=\"f_social\">\n");
      out.write("\t\t\t\t<a href=\"#\"><i class=\"fa fa-facebook\"></i></a>\n");
      out.write("\t\t\t\t<a href=\"#\"><i class=\"fa fa-twitter\"></i></a>\n");
      out.write("\t\t\t\t<a href=\"#\"><i class=\"fa fa-dribbble\"></i></a>\n");
      out.write("\t\t\t\t<a href=\"#\"><i class=\"fa fa-behance\"></i></a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"row footer-bottom d-flex justify-content-between align-items-center\">\n");
      out.write("                    <p class=\"col-lg-12 footer-text text-center\"><!-- Link back to me can't be removed. Template is licensed under CC BY 3.0. -->\n");
      out.write("Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class=\"fa fa-heart-o\" aria-hidden=\"true\"></i> by <a href=\"https://colorlib.com\" target=\"_blank\">ByeBike</a>\n");
      out.write("<!-- Link back to me can't be removed. Template is licensed under CC BY 3.0. -->\n");
      out.write("                    </p>\n");
      out.write("\t\t</div>\n");
      out.write("            </div>\n");
      out.write("\t</footer>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        <!--================ End footer Area  =================-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Optional JavaScript -->\n");
      out.write("        <!-- jQuery first, then Popper.js, then Bootstrap JS -->\n");
      out.write("        <script src=\"js/jquery-3.2.1.min.js\"></script>\n");
      out.write("        <script src=\"js/popper.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"js/stellar.js\"></script>\n");
      out.write("        <script src=\"vendors/lightbox/simpleLightbox.min.js\"></script>\n");
      out.write("        <script src=\"vendors/nice-select/js/jquery.nice-select.min.js\"></script>\n");
      out.write("        <script src=\"vendors/isotope/imagesloaded.pkgd.min.js\"></script>\n");
      out.write("        <script src=\"vendors/isotope/isotope-min.js\"></script>\n");
      out.write("        <script src=\"vendors/owl-carousel/owl.carousel.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery.ajaxchimp.min.js\"></script>\n");
      out.write("        <script src=\"js/mail-script.js\"></script>\n");
      out.write("        <script src=\"vendors/jquery-ui/jquery-ui.js\"></script>\n");
      out.write("        <script src=\"vendors/counter-up/jquery.waypoints.min.js\"></script>\n");
      out.write("        <script src=\"vendors/counter-up/jquery.counterup.js\"></script>\n");
      out.write("        <script src=\"js/theme.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>");
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

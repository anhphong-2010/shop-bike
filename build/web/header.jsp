<%-- 
    Document   : header
    Created on : May 12, 2019, 9:37:58 AM
    Author     : Dell
--%>

<%@page import="Models.Item"%>
<%@page import="Models.Product"%>
<%@page import="Models.ProductDAO"%>
<%@page import="Models.CategoryDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Models.Category"%>
<%@page import="Models.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <header class="header_area">
            <div class="top_menu row m0">
                <div class="container-fluid">
                    <div class="float-left">
                        <p>Call Us: 012 44 5698 7456 896</p>
                    </div>
                    <div class="float-right">
                        <ul class="right_side">
                            <%
                                HttpSession s = request.getSession();
                                User u = (User) s.getAttribute("name");
                                if (u != null) {
                                    if (u.getTrangthai() == true) {
                            %>
                            <li style="color: green">Account activated</li>
                                <% } else if (u.getTrangthai() == false) { %>

                            <li style="color: red">Account is not activated</li>

                            <% }%>

                            <li><a href="#"><%= u.getTendangnhap()%></a></li>
                                <%
                                } else {
                                %>                        
                            <li><a href="login.jsp">Login</a></li>
                                <%  }  %>
                                <%
                                    if (u == null) {
                                %>
                            <li><a href="registration.jsp">Register</a></li>
                                <%
                                } else if (u.getTrangthai() == true) {
                                %>
                            <li><a href="editinformation.jsp">Edit</a></li>
                            <li><a href="UserController?command=logout">Log out</a></li>
                                <%
                                } else if (u.getTrangthai() == false) {
                                %>
                            <li><a href="UserController?command=logout">Log out</a></li>
                                <%
                                    }
                                %>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="main_menu">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <div class="container-fluid">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <a class="navbar-brand logo_h" href="index.jsp">
                            <img src="img/logo3.png" alt="" />
                        </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                            <div class="row w-100">
                                <div class="col-lg-7 pr-0">
                                    <ul class="nav navbar-nav center_nav pull-right">
                                        <li class="nav-item active">
                                            <a class="nav-link" href="index.jsp">Home</a>
                                        </li>
                                        <li class="nav-item submenu dropdown">
                                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Shop</a>
                                            <ul class="dropdown-menu">
                                                <% ArrayList<Category> arrloai = CategoryDAO.getCategory();
                                                    for (int i = 0; i < arrloai.size(); i++) {
                                                        Category c = arrloai.get(i);
                                                %>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="ProductController?MaLoaiSanPham=<%=c.getMaloaisanpham()%>&MaTrang=1"><%= c.getTenloaisanpham()%></a>
                                                </li>
                                                <%
                                                    }
                                                %>
                                            </ul>
                                        </li>
                                        <li class="nav-item submenu dropdown">
                                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Gallerry</a>
                                        </li>
                                        <li class="nav-item submenu dropdown">
                                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Blog</a>
                                            <ul class="dropdown-menu">
                                                <li class="nav-item">
                                                    <a class="nav-link" href="blog.html">Blog</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="single-blog.html">Blog Details</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="contact.jsp">Contact</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-lg-5">
                                    <ul class="nav navbar-nav navbar-right right_nav pull-right">
                                        <hr>
                                        <li class="nav-item">
                                            <a href="#" class="icons">
                                                <i class="fa fa-search" aria-hidden="true"></i>
                                            </a>
                                        </li>
                                        <hr>
                                        <li class="nav-item">
                                            <a href="historypayments.jsp" class="icons">
                                                <i class="fa fa-user" aria-hidden="true"></i>
                                            </a>
                                        </li>
                                        <hr>
                                        <li class="nav-item">
                                            <a href="/shopxedap/admin/index.jsp" class="icons">
                                                <i class="fa fa-gears" aria-hidden="true"></i>
                                            </a>
                                        </li>
                                        <hr>
                                        <li class="nav-item">
                                            <%
                                                HttpSession sescart = request.getSession();
                                                if (sescart.getAttribute("giohang") != null) {
                                                    ArrayList<Item> cart = (ArrayList<Item>) sescart.getAttribute("giohang");
                                            %>
                                            <a href="cart.jsp" class="icons">
                                                <i class="lnr lnr lnr-cart"><span class="badge badge-danger" style="border-radius:10px;"><%= cart.size()%></span></i>
                                                
                                            </a>
                                            <%
                                            } else if (sescart.getAttribute("giohang") == null) {

                                            %>
                                            <a href="cart.jsp" class="icons">
                                                <i class="lnr lnr lnr-cart"></i>

                                            </a>
                                            <%                                                }
                                            %>
                                        </li>
                                        <hr>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </header>     
    </body>
</html>

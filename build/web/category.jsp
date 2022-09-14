<%-- 
    Document   : category
    Created on : May 9, 2019, 12:08:41 AM
    Author     : Dell
--%>

<%@page import="Models.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="icon" href="img/favicon.png" type="image/png">
        <title>Anh Phong ByeBike</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="vendors/linericon/style.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
        <link rel="stylesheet" href="vendors/lightbox/simpleLightbox.css">
        <link rel="stylesheet" href="vendors/nice-select/css/nice-select.css">
        <link rel="stylesheet" href="vendors/animate-css/animate.css">
        <link rel="stylesheet" href="vendors/jquery-ui/jquery-ui.css">
        <!-- main css -->
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/responsive.css">
    </head>

    <body>

        <!--================Header Menu Area =================-->
        <%@ include file="header.jsp" %>
        <!--================Header Menu Area =================-->

        <!--================Home Banner Area =================-->
        <section class="banner_area">
            <div class="banner_inner d-flex align-items-center">
                <div class="container">
                    <div class="banner_content text-center">
                        <h2>Shop Category Page</h2>
                        <div class="page_link">
                            <a href="index.jsp">Home</a>
                            <a href="category.jsp">Category</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================End Home Banner Area =================-->

        <!--================Category Product Area =================-->
        <section class="cat_product_area section_gap">
            <div class="container-fluid">
                <div class="row flex-row-reverse">
                    <div class="col-lg-9">
                        <div class="product_top_bar">
                            <div class="left_dorp">
                                <select class="sorting">
                                    <option value="1">Default sorting</option>
                                    <option value="2">Default sorting 01</option>
                                    <option value="4">Default sorting 02</option>
                                </select>
                                <select class="show">
                                    <option value="1">Show 2</option>
                                    <option value="2">Show 4</option>
                                    <option value="4">Show 6</option>
                                </select>
                            </div>
                            <div class="right_page ml-auto">
                                <nav class="cat_page" aria-label="Page navigation example">
                                    <ul class="pagination">
                                        <li class="page-item">
                                            <a class="page-link" href="#">
                                                <i class="fa fa-long-arrow-left" aria-hidden="true"></i>
                                            </a>
                                        </li>
                                        <%                                        
                                            int maloaisp = Integer.parseInt(request.getAttribute("MaLoaiSP").toString());
                                            int sotrang = Integer.parseInt(request.getAttribute("SoTrang").toString());

                                            for (int i = 0; i < sotrang; i++) {
                                        %>
                                        <li class="page-item">
                                            <a class="page-link" href="ProductController?MaLoaiSanPham=<%=maloaisp%>&MaTrang=<%=i + 1%>"><%=i + 1%></a>
                                        </li>
                                        <%
                                            }
                                        %>
                                        <li class="page-item">
                                            <a class="page-link" href="#">
                                                <i class="fa fa-long-arrow-right" aria-hidden="true"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="latest_product_inner row">
                            <% ArrayList<Product> arrpro = (ArrayList<Product>) request.getAttribute("SoSanPham1Trang");
                                for (int i = 0; i < arrpro.size(); i++) {
                                    Product pro = arrpro.get(i);
                            %>
                            <div class="col-lg-3 col-md-3 col-sm-6">
                                <div class="f_p_item">
                                    <div class="f_p_img">
                                        <img class="img-fluid" src="<%= pro.getHinhanhsanpham()%>" alt="">
                                        <div class="p_icon">
                                            <a href="#">
                                                <i class="lnr lnr-heart"></i>
                                            </a>
                                            <a href="CartController?productID=<%= pro.getMasanpham()%>">
                                                <i class="lnr lnr-cart"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <a href="ProductDetailController?ProductID=<%= pro.getMasanpham()%>">
                                        <h4><%= pro.getTensanpham()%></h4>
                                    </a>
                                    <h5>$<%= pro.getGiatien()%></h5>
                                </div>
                            </div>
                            <%
                                }
                            %>    

                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="left_sidebar_area">
                            <aside class="left_widgets cat_widgets">
                                <div class="l_w_title">
                                    <h3>Browse Categories</h3>
                                </div>
                                <div class="widgets_inner">
                                    <ul class="list">
                                        <li>
                                            <a href="#">Bikes</a>
                                            <ul class="list">
                                                <% ArrayList<Category> arrloai2 = CategoryDAO.getCategoryCustom();
                                                    for (int i = 0; i < arrloai2.size(); i++) {
                                                        Category c = arrloai2.get(i);
                                                %>
                                                <li>
                                                    <a href="ProductController?MaLoaiSanPham=<%=c.getMaloaisanpham()%>&MaTrang=1"><%= c.getTenloaisanpham()%></a>
                                                </li>
                                                <%
                                                    }
                                                %>

                                            </ul>
                                        </li>
                                        <li>
                                            <% int masphelmet = 4;%>
                                            <a href="ProductController?MaLoaiSanPham=<%= masphelmet%>&MaTrang=1">Helmet</a>
                                        </li>

                                    </ul>
                                </div>
                            </aside>
                            <aside class="left_widgets p_filter_widgets">
                                <div class="l_w_title">
                                    <h3>Product Filters</h3>
                                </div>
                                <div class="widgets_inner">
                                    <h4>Brand</h4>
                                    <ul class="list">
                                        <li>
                                            <a href="#">TREK</a>
                                        </li>
                                        <li>
                                            <a href="#">GT</a>
                                        </li>
                                        <li class="active">
                                            <a href="#">JETT</a>
                                        </li>
                                        <li>
                                            <a href="#">BONTRAGER</a>
                                        </li>
                                        <li>
                                            <a href="#">CANNONDALE</a>
                                        </li>
                                        <li>
                                            <a href="#">GIRO</a>
                                        </li>
                                        <li>
                                            <a href="#">BELL</a>
                                        </li>
                                        <li>
                                            <a href="#">Khác</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="widgets_inner">
                                    <h4>Price</h4>
                                    <div class="range_item">
                                        <div id="slider-range"></div>
                                        <div class="row m0">
                                            <label for="amount">Price : </label>
                                            <input type="text" id="amount" readonly>
                                        </div>
                                    </div>
                                </div>
                            </aside>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <nav class="cat_page mx-auto" aria-label="Page navigation example">
                        <ul class="pagination">
                            <li class="page-item">
                                <a class="page-link" href="#">
                                    <i class="fa fa-chevron-left" aria-hidden="true"></i>
                                </a>
                            </li>
                            <%
                                int sotrang2 = Integer.parseInt(request.getAttribute("SoTrang").toString());
                                for (int i = 0; i < sotrang2; i++) {
                            %>
                            <li class="page-item">
                                <a class="page-link" href="ProductController?MaLoaiSanPham=<%=maloaisp%>&MaTrang=<%=i + 1%>"><%=i + 1%></a>
                            </li>
                            <%
                                }
                            %>
                            <li class="page-item">
                                <a class="page-link" href="#">
                                    <i class="fa fa-chevron-right" aria-hidden="true"></i>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </section>
        <!--================End Category Product Area =================-->

        <!--================ Subscription Area ================-->
        <section class="subscription-area section_gap">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="section-title text-center">
                            <h2>Subscribe for Our Newsletter</h2>
                            <span>We won’t send any kind of spam</span>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <div id="mc_embed_signup">
                            <form target="_blank" novalidate action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&id=92a4423d01"
                                  method="get" class="subscription relative">
                                <input type="email" name="EMAIL" placeholder="Email address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email address'"
                                       required="">
                                <!-- <div style="position: absolute; left: -5000px;">
                                                <input type="text" name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="">
                                        </div> -->
                                <button type="submit" class="newsl-btn">Get Started</button>
                                <div class="info"></div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================ End Subscription Area ================-->

        <!--================ start footer Area  =================-->
        <%@include file="footer.jsp" %>
        <!--================ End footer Area  =================-->




        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/popper.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/stellar.js"></script>
        <script src="vendors/lightbox/simpleLightbox.min.js"></script>
        <script src="vendors/nice-select/js/jquery.nice-select.min.js"></script>
        <script src="vendors/isotope/imagesloaded.pkgd.min.js"></script>
        <script src="vendors/isotope/isotope-min.js"></script>
        <script src="vendors/owl-carousel/owl.carousel.min.js"></script>
        <script src="js/jquery.ajaxchimp.min.js"></script>
        <script src="js/mail-script.js"></script>
        <script src="vendors/jquery-ui/jquery-ui.js"></script>
        <script src="vendors/counter-up/jquery.waypoints.min.js"></script>
        <script src="vendors/counter-up/jquery.counterup.js"></script>
        <script src="js/theme.js"></script>
    </body>
</html>

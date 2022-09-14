<%-- 
    Document   : shopping-cart
    Created on : May 26, 2019, 5:13:40 PM
    Author     : Dell
--%>

<%@page import="Models.Product"%>
<%@page import="Models.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

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
                    <h2>Shopping Cart</h2>
                    <div class="page_link">
                        <a href="index.jsp">Home</a>
                        <a href="cart.jsp">Cart</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Home Banner Area =================-->

    <!--================Cart Area =================-->
    <section class="cart_area">
        <form method="POST" action="CartController?editcart=update">
            <div class="container">
                <div class="cart_inner">
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">Product</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Quantity</th>
                                    <th scope="col">Total</th>
                                    <th scope="col"></th>

                                </tr>
                            </thead>

                            <tbody>
                                <%                                int total = 0;
                                    HttpSession ses1 = request.getSession();
                                    if (ses1.getAttribute("giohang") != null) {

                                        ArrayList<Item> cart = (ArrayList<Item>) ses1.getAttribute("giohang");
                                        for (int i = 0; i < cart.size(); i++) {
                                            Item temp = cart.get(i);
                                            Product pro = temp.getP();
                                            total += pro.getGiatien() * temp.getSoluong();
                                %>
                                <tr>
                                    <td>
                                        <div class="media">
                                            <div class="d-flex">
                                                <img src="<%= pro.getHinhanhto1()%>" width="150" height="160" alt="">
                                            </div>
                                            <div class="media-body">
                                                <p><%= pro.getTensanpham()%></p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <h5>$<%= pro.getGiatien()%></h5>
                                    </td>
                                    <td>
                                        <div class="product_count">
                                            <input type="text" name="qty<%=i%>" id="sst" maxlength="12" value="<%= temp.getSoluong()%>" title="Quantity:" class="input-text qty">
                                            <button onclick="var result = document.getElementById('sst');
                                                    var sst = result.value;
                                                    if (!isNaN(sst))
                                                        result.value++;
                                                    return false;"
                                                    class="increase items-count" type="button">
                                                <i class="lnr lnr-chevron-up"></i>
                                            </button>
                                            <button onclick="var result = document.getElementById('sst'); var sst = result.value; if (!isNaN(sst) & amp; & amp; sst & gt; 0) result.value--; return false;"
                                                    class="reduced items-count" type="button">
                                                <i class="lnr lnr-chevron-down"></i>
                                            </button>
                                        </div>
                                    </td>
                                    <td>
                                        <h5>$<%= pro.getGiatien() * temp.getSoluong()%></h5> 
                                    </td> 
                                    <td>
                                        <a href="CartController?editcart=delete&productID=<%= pro.getMasanpham()%>"><span id="deletebutton" class="badge badge-danger" style="font-size: 14px;">Delete</span></a>
                                    </td>
                                </tr>
                                <%
                                        }
                                    }
                                %>
                                <tr class="bottom_button">
                                    <td>
                                        <button type ="submit" class="gray_btn" style="cursor: pointer;" >Update Cart</button>
                                    </td>
                                    <td>

                                    </td>
                                    <td>
                                        <h5>Subtotal</h5>
                                    </td>
                                    <td>
                                        <h5>$<%= total%></h5>
                                    </td>
                                    <td></td>
                                </tr>

                                <tr class="out_button_area">
                                    <td>

                                    </td>
                                    <td>
                                        <div class="checkout_btn_inner">
                                            <a class="gray_btn" href="#">Continue Shopping</a>
                                        </div>
                                    </td>
                                    <td>

                                    </td>
                                    <td>
                                        <div class="checkout_btn_inner">
                                            <a class="main_btn" href="PaidController">Proceed to checkout</a>
                                        </div>
                                    </td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </form>
    </section>
    <!--================End Cart Area =================-->

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
    <footer class="footer-area section_gap">
        <div class="container">
            <div class="row">
                <div class="col-lg-3  col-md-6 col-sm-6">
                    <div class="single-footer-widget">
                        <h6 class="footer_title">About Us</h6>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore dolore magna aliqua.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="single-footer-widget">
                        <h6 class="footer_title">Newsletter</h6>
                        <p>Stay updated with our latest trends</p>
                        <div id="mc_embed_signup">
                            <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
                                  method="get" class="subscribe_form relative">
                                <div class="input-group d-flex flex-row">
                                    <input name="EMAIL" placeholder="Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address '"
                                           required="" type="email">
                                    <button class="btn sub-btn">
                                        <span class="lnr lnr-arrow-right"></span>
                                    </button>
                                </div>
                                <div class="mt-10 info"></div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="single-footer-widget instafeed">
                        <h6 class="footer_title">Instagram Feed</h6>
                        <ul class="list instafeed d-flex flex-wrap">
                            <li>
                                <img src="img/instagram/Image-01.jpg" alt="">
                            </li>
                            <li>
                                <img src="img/instagram/Image-02.jpg" alt="">
                            </li>
                            <li>
                                <img src="img/instagram/Image-03.jpg" alt="">
                            </li>
                            <li>
                                <img src="img/instagram/Image-04.jpg" alt="">
                            </li>
                            <li>
                                <img src="img/instagram/Image-05.jpg" alt="">
                            </li>
                            <li>
                                <img src="img/instagram/Image-06.jpg" alt="">
                            </li>
                            <li>
                                <img src="img/instagram/Image-07.jpg" alt="">
                            </li>
                            <li>
                                <img src="img/instagram/Image-08.jpg" alt="">
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6 col-sm-6">
                    <div class="single-footer-widget f_social_wd">
                        <h6 class="footer_title">Follow Us</h6>
                        <p>Let us be social</p>
                        <div class="f_social">
                            <a href="#">
                                <i class="fa fa-facebook"></i>
                            </a>
                            <a href="#">
                                <i class="fa fa-twitter"></i>
                            </a>
                            <a href="#">
                                <i class="fa fa-dribbble"></i>
                            </a>
                            <a href="#">
                                <i class="fa fa-behance"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row footer-bottom d-flex justify-content-between align-items-center">
                <p class="col-lg-12 footer-text text-center"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="#" target="_blank">ByeBike</a>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                </p>
            </div>
        </div>
    </footer>
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

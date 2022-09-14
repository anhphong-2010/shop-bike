<%-- 
    Document   : historypayments
    Created on : Jun 11, 2019, 12:01:49 AM
    Author     : pc
--%>

<%@page import="Models.HistoryPaymentsDAO"%>
<%@page import="Models.HistoryPayments"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
                        <h2>History Payments</h2>
                        <div class="page_link">
                            <a href="index.jsp">Home</a>
                            <a href="historypayments.jsp">History Payments</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================End Home Banner Area =================-->

        <!--================Order Details Area =================-->
        <section class="order_details p_120">
            <div class="container">
                <h3 class="title_confirmation">History Information</h3>
                <div class="row order_d_inner">
                    <div class="col-lg-6">
                        <div class="details_item">
                            <h4>Customer Information</h4>
                            <ul class="list">
                                <li>
                                    <a href="#">
                                        <span>Name</span> : <%= u.getTendangnhap()%></a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span>Phone</span> : <%= u.getSodienthoai()%></a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span>Email</span> : <%= u.getEmail()%></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="details_item">
                            <h4>Statistical Payments</h4>
                            <% 
                            
                            HistoryPayments hp = HistoryPaymentsDAO.statistical(u.getManguoidung());
                                
                            %>
                            <ul class="list">
                                <li>
                                    <a href="#">
                                        <span>Total Payments</span> : <%= hp.getTongdon() %></a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span>Total Product Paid</span> : <%= hp.getSoluong() %></a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span>Total Consumption</span> : $<%= hp.getTongtientheosanpham() %></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <%
                    int idu = u.getManguoidung();
                    ArrayList<HistoryPayments> donhang = HistoryPaymentsDAO.getPayments(idu);
                    for (int i = 0; i < donhang.size(); i++) {
                        HistoryPayments ls = donhang.get(i);
                %>
                <div class="order_details_table">
                    <div class="table-responsive">
                        <div class="confirmation-card">
                            <h2>PaymentID : <%=ls.getMadonhang()%></h2>
                            <table class="order-rable">
                                <tr>
                                    <td>Date</td>
                                    <td><%=ls.getNgaydathang()%> </td>
                                </tr>
                                <tr>
                                    <td>Amount</td>
                                    <td>: <%=ls.getSoluong()%></td>
                                </tr>                                    
                            </table>
                        </div>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">Picture</th>
                                    <th scope="col">Product</th>
                                    <th scope="col">Quantity</th>
                                    <th scope="col">Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    long tongdon = 0;
                                    int madonhang = ls.getMadonhang();
                                    ArrayList<HistoryPayments> chitiet = HistoryPaymentsDAO.getDetails(madonhang);
                                    for (int j = 0; j < chitiet.size(); j++) {
                                        HistoryPayments ctls = chitiet.get(j);
                                        tongdon += Integer.parseInt(ctls.getTongtientheosanpham());
                                %>
                                <tr>
                                    <td>
                                        <p> <img src="<%=ctls.getHinhanhnho1()%> " style='width: 100px'> </p>
                                    </td>
                                    <td>
                                        <p><%=ctls.getTensanpham()%></p>
                                    </td>
                                    <td>
                                        <h5>x <%= ctls.getSoluong() %></h5>
                                    </td>
                                    <td>
                                        <p>$<%= ctls.getTongtientheosanpham() %></p>
                                    </td>
                                </tr>
                                <% }%>
                                <tr>
                                    <td>
                                        <h4>Total</h4>
                                    </td>
                                    <td>
                                        <h5></h5>
                                    </td>
                                    <td>
                                        
                                    </td>
                                    <td>
                                        <p>$<%= tongdon%></p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <% }%>
            </div>
        </section>
        <!--================End Order Details Area =================-->

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
        <script src="vendors/counter-up/jquery.waypoints.min.js"></script>
        <script src="vendors/flipclock/timer.js"></script>
        <script src="vendors/counter-up/jquery.counterup.js"></script>
        <script src="js/mail-script.js"></script>
        <script src="js/theme.js"></script>
    </body>
</html>

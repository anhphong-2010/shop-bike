<%-- 
    Document   : single-product
    Created on : May 9, 2019, 11:46:24 PM
    Author     : Dell
--%>

<%@page import="java.sql.Timestamp"%>
<%@page import="Models.CommentRating"%>
<%@page import="Models.CommentRatingDAO"%>
<%@page import="Models.Product"%>
<%@page import="Models.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
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
        <style>
            div.star{
                width: 270px;
                display: inline-block;
            }
            input.star{ display: none;}
            label.star{
                float: right;
                padding : 10px;
                font-size: 30px;
                color: #444;
                transition: all .2s;
            }
            input.star:checked ~ label.star:before{
                content : '\f005';
                color: #FD4;
                transition: all .25s;
            }
            input.star-5:checked ~ label.star:before{
                color: #FE7;
                text-shadow: 0 0 20px #952;
            }
            input.star-1:checked ~ label.star:before{
                color: #F62;
            }
            input.star:hover {
                transform: rotate(-15deg) scale(1.3);
            }
            label.star:before{
                content: '\f006';
                font-family: FontAwesome;
            }
        </style>
    </head>

    <body>
        <!--================Header Menu Area =================-->
        <%@ include file="header.jsp" %>
        <!--================End Home Banner Area =================-->

        <!--================Single Product Area =================-->
        <%            HttpSession ses3 = request.getSession();
            Product pro = (Product) ses3.getAttribute("sanpham");
            if (pro != null) {
        %>   
        <div class="product_image_area">
            <div class="container">
                <div class="row s_product_inner">
                    <div class="col-lg-6">
                        <div class="s_product_img">

                            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                                <ol class="carousel-indicators">
                                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active">
                                        <img src="<%= pro.getHinhanhnho1()%>" alt="">
                                    </li>
                                    <li data-target="#carouselExampleIndicators" data-slide-to="1">
                                        <img src="<%= pro.getHinhanhnho2()%>" alt="">
                                    </li>
                                    <li data-target="#carouselExampleIndicators" data-slide-to="2">
                                        <img src="<%= pro.getHinhanhnho3()%>" alt="">
                                    </li>
                                </ol>
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img class="d-block w-100" src="<%= pro.getHinhanhto1()%>" alt="First slide">
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="<%= pro.getHinhanhto2()%>" alt="Second slide">
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="<%= pro.getHinhanhto3()%>" alt="Third slide">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-5 offset-lg-1">
                        <div class="s_product_text">
                            <h3><%= pro.getTensanpham()%></h3>
                            <h2> $<%= pro.getGiatien()%></h2>
                            <ul class="list">
                                <li>
                                    <a class="active" href="https://www.google.com">
                                        <span>Brand</span> :  <%= pro.getTenthuonghieu()%></a>
                                </li>
                                <li>

                                </li>
                            </ul>
                            <p><%= pro.getMota()%></p>

                            <div class="product_count">
                                <label for="qty">Quantity : <%= pro.getSoluong()%></label>
                                <input type="text" name="qty" id="sst" maxlength="12" value="1" title="Quantity:" class="input-text qty">
                                <button onclick="var result = document.getElementById('sst');
                                        var sst = result.value;
                                        if (!isNaN(sst))
                                            result.value++;
                                        return false;"
                                        class="increase items-count" type="button">
                                    <i class="lnr lnr-chevron-up"></i>
                                </button>
                                <button onclick="var result = document.getElementById('sst'); var sst = result.value; if (!isNaN(sst) & amp; & amp; sst > 0) result.value--; return false;"
                                        class="reduced items-count" type="button">
                                    <i class="lnr lnr-chevron-down"></i>
                                </button>
                            </div>

                            <div class="card_area">
                                <a class="main_btn" href="CartController?editcart=add&productID=<%= pro.getMasanpham()%>">Add to Cart</a>
                                <a class="icon_btn" href="#">
                                    <i class="lnr lnr lnr-diamond"></i>
                                </a>
                                <a class="icon_btn" href="#">
                                    <i class="lnr lnr lnr-heart"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--================End Single Product Area =================-->

        <!--================Product Description Area =================-->
        <section class="product_description_area">
            <div class="container">
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Description</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Specification</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" id="review-tab" data-toggle="tab" href="#review" role="tab" aria-controls="review" aria-selected="false">Reviews</a>
                    </li>
                </ul>
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <p><%= pro.getMota()%></p>
                    </div>
                    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                        <div class="table-responsive">
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <td>
                                            <h5>Color</h5>
                                        </td>
                                        <td>
                                            <h5><%= pro.getMausac()%></h5>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h5>Size</h5>
                                        </td>
                                        <td>
                                            <h5><%= pro.getKichthuoc()%></h5>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h5>Weight</h5>
                                        </td>
                                        <td>
                                            <h5><%= pro.getTrongluong()%></h5>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h5>Frame</h5>
                                        </td>
                                        <td>
                                            <h5><%= pro.getKhung()%></h5>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h5>Wheels</h5>
                                        </td>
                                        <td>
                                            <h5><%= pro.getBanhxe()%></h5>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h5>Brakes</h5>
                                        </td>
                                        <td>
                                            <h5><%= pro.getPhanh()%></h5>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <%
                        } else {
                        }
                    %>
                    <div class="tab-pane fade show active" id="review" role="tabpanel" aria-labelledby="review-tab">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="row total_rate">
                                    <div class="col-6">
                                        <div class="box_total">
                                            <h5>Overall</h5>
                                            <%
                                                int masp = Integer.parseInt(request.getParameter("ProductID"));
                                                float ov = CommentRatingDAO.Overall(masp);
                                            %>
                                            <h4><%=ov%></h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="review_list">
                                    <%
                                        ArrayList<CommentRating> arrcmtr = CommentRatingDAO.getComment(masp);
                                        for (int i = 0; i < arrcmtr.size(); i++) {
                                            CommentRating cr = arrcmtr.get(i);
                                    %>
                                    <div class="review_item">
                                        <div class="media">
                                            <div class="d-flex">
                                                <img src="img/product/single-product/avatar.png" alt="">
                                            </div>
                                            <div class="media-body">
                                                <h4><%= cr.getTendangnhap()%></h4>
                                                <span style="float:right; color: black">
                                                    <%=cr.getThoigian()%>
                                                </span>
                                                <% for (int star = 0; star < cr.getGiatri(); star++) { %>
                                                <i class="fa fa-star"></i>
                                                <%}%>
                                            </div>
                                        </div>
                                        <p><%= cr.getDanhgia()%></p>
                                    </div>
                                    <%
                                        }
                                    %>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="review_box">
                                    <h4>Add a Review</h4>
                                    <p>Your Rating:</p>
                                    <% if(u != null && u.getTrangthai() == true) {%>
                                    <form action="CommentRatingController" class="row contact_form" >
                                           <div class="stars">
                                                <input class="star star-5" id="star-5" type="radio" name="sao" value="5" />
                                                <label class="star star-5" for="star-5"></label>
                                                <input class="star star-4" id="star-4" type="radio" name="sao" value="4" />
                                                <label class="star star-4" for="star-4"></label>
                                                <input class="star star-3" id="star-3" type="radio" name="sao" value="3" />
                                                <label class="star star-3" for="star-3"></label>
                                                <input class="star star-2" id="star-2" type="radio" name="sao" value="2" />
                                                <label class="star star-2" for="star-2"></label>
                                                <input class="star star-1" id="star-1" type="radio" name="sao" value="1" />
                                                <label class="star star-1" for="star-1"></label>
                                            </div>                        
                                                <input type="hidden" class="form-control" name="idnguoidung" value="<%=u.getManguoidung()%>"/>
                                                <input type="hidden" class="form-control" name="idsanpham" value="<%=request.getParameter("ProductID")%>"/>
                                                <input type="hidden" name="command" value="themcmt"/>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <textarea class="form-control" name="noidung" id="noidung" rows="1" placeholder="Review"></textarea>
                                            </div>
                                            <script>
                                                document.getElementById("noidung").innerHTML();
                                            </script>
                                        </div>
                                        <div class="col-md-12 text-right">
                                            <button type="submit" value="submit" class="btn submit_btn">Submit Now</button>
                                        </div>
                                    </form>
                                    <%} else {%>
                                    <h4><i>Login to Comment</i></h4>
                                    <%}%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================End Product Description Area =================-->

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

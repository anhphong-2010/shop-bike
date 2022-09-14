<%-- 
    Document   : registration
    Created on : May 7, 2019, 10:08:52 PM
    Author     : Dell
--%>

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
        <style>
            .showErrorMessage{
                float: left;
                color: red;
            }
            .showSuccessMessage{
                float: left;
                color: green;
            }
        </style>
    </head>
    <script src="https://www.google.com/recaptcha/api.js?render=reCAPTCHA_site_key"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <body>
        <script>
            function myFunction() {
                var a = document.forms["registerform"]["userName"].value;
                var b = document.forms["registerform"]["namsinh"].value;
                var c = document.forms["registerform"]["sodienthoai"].value;
                var d = document.forms["registerform"]["email"].value;
                var e = document.forms["registerform"]["password"].value;
                var f = document.forms["registerform"]["confirmpassword"].value;
                if (a, b, c, d, e, f === "") {
                    alert("Please fill all information");
                    return false;
                }

                // Check capcha
                var resCapcha = grecaptcha.getResponse();

                if (resCapcha.length === 0) { // Not verified
                    var elm = document.getElementById('showError');
                    elm.textContent = 'Please check captcha';
                    elm.style.color = 'red';
                    elm.style.display = 'block';
                    return;
                } else { // Verified
                    var elm = document.getElementById('showError');
                    elm.style.display = 'none';
                    document.getElementById('registerform').submit();
                }
            }

            function checkUserName(elm) {
                $.ajax({
                    type: "POST",
                    url: 'CheckUserExistsServlet',
                    data: {userName: elm.value},
                    success: function (res) {
                        var elmMessage = document.getElementById('showErrorUserName');
                        if (res === 'true' || res === true) { // Username is exists
                            elmMessage.setAttribute('class', 'showErrorMessage');
                            elmMessage.textContent = 'Username is exists';
                        } else { // Username is not exsits
                            elmMessage.setAttribute('class', 'showSuccessMessage');
                            elmMessage.textContent = 'Username is not exists';
                        }
                    }
                });
            }

            function checkPassword(elm) {
                $.ajax({
                    type: "POST",
                    url: 'CheckPasswordExistsServlet',
                    data: {password: elm.value},
                    success: function (res) {
                        var elmMessage = document.getElementById('showErrorPassword');
                        if (res === 'true' || res === true) { // Password is exists
                            elmMessage.setAttribute('class', 'showErrorMessage');
                            elmMessage.textContent = 'Password is exists';
                        } else { // Password is not exsits
                            elmMessage.setAttribute('class', 'showSuccessMessage');
                            elmMessage.textContent = 'Password is not exists';
                        }
                    }
                });
            }

            function checkValidEmail(elm) {
                var elmMessage = document.getElementById('showErrorEmail');
                var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                if (!re.test(elm.value)) {
                    elmMessage.setAttribute('class', 'showErrorMessage');
                    elmMessage.textContent = 'Invalid email';
                } else {
                    elmMessage.setAttribute('class', 'showSuccessMessage');
                    elmMessage.textContent = 'Valid email';
                }
            }

            function checkValidPhone(elm) {
                var elmMessage = document.getElementById('showErrorPhone');
                var regex = /((0)+([0-9]{9}))/g;
                if (!regex.test(elm.value)) {
                    elmMessage.setAttribute('class', 'showErrorMessage');
                    elmMessage.textContent = 'Invalid phone';
                } else {
                    elmMessage.setAttribute('class', 'showSuccessMessage');
                    elmMessage.textContent = 'Valid phone';
                }
            }

            function checkYearDOB(elm) {
                var elmMessage = document.getElementById('showErrorDOB');
                var dob = elm.value.replace(/\s/g, '');
                var year = dob.match(/\/(\d{4})/)[1];
                var curYear = new Date().getFullYear();
                if (year >= 1900 && year <= curYear) { // Valid
                    elmMessage.setAttribute('class', 'showSuccessMessage');
                    elmMessage.textContent = 'Valid DOB';
                } else { // Invalid
                    elmMessage.setAttribute('class', 'showErrorMessage');
                    elmMessage.textContent = 'Invalid DOB';
                }
            }

            function checkValue(str, max) {
                if (str.charAt(0) !== '0' || str === '00') {
                    var num = parseInt(str);
                    if (isNaN(num) || num <= 0 || num > max)
                        num = 1;
                    str = num > parseInt(max.toString().charAt(0)) && num.toString().length === 1 ? '0' + num : num.toString();
                }
                ;
                return str;
            }

            function inputDOB(elm) {
                var input = elm.value;
                if (/\D\/$/.test(input))
                    input = input.substr(0, input.length - 3);
                var values = input.split('/').map(function (v) {
                    return v.replace(/\D/g, '')
                });
                if (values[0])
                    values[0] = checkValue(values[0], 31);
                if (values[1])
                    values[1] = checkValue(values[1], 12);
                var output = values.map(function (v, i) {
                    return v.length === 2 && i < 2 ? v + ' / ' : v;
                });
                elm.value = output.join('').substr(0, 14);
            }

            function checkPasswordConfirm(elm) {
                var elmMessage = document.getElementById('showErrorConfirmPassword');
                if (elm.value === document.getElementById('password').value) { // Match
                    elmMessage.setAttribute('class', 'showSuccessMessage');
                    elmMessage.textContent = 'Match';
                } else { // Not match
                    elmMessage.setAttribute('class', 'showErrorMessage');
                    elmMessage.textContent = 'Not Match';
                }
            }
        </script>
        <!--================Header Menu Area =================-->
        <%@ include file="header.jsp" %>
        <!--================Header Menu Area =================-->

        <!--================Home Banner Area =================-->
        <section class="banner_area">
            <div class="banner_inner d-flex align-items-center">
                <div class="container">
                    <div class="banner_content text-center">
                        <h2>Login/Register</h2>
                        <div class="page_link">
                            <a href="index.jsp">Home</a>
                            <a href="registration.jsp">Register</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================End Home Banner Area =================-->

        <!--================Login Box Area =================-->
        <section class="login_box_area p_120">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="login_box_img">
                            <img class="img-fluid" src="img/login.jpg" alt="">
                            <div class="hover">
                                <h4>Already have an account?</h4>
                                <p>Click button below</p>
                                <a class="main_btn" href="login.jsp">Login</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="login_form_inner reg_form">
                            <h3>Create an Account</h3>
                            <form class="row login_form" name="registerform" action="RegisterController" method="post" id="registerform" novalidate="novalidate">

                                <div class="col-md-12 form-group">
                                    <input type="text" class="form-control" id="userName" name="userName" onblur="checkUserName(this);" placeholder="Name">
                                    <span id="showErrorUserName"></span>
                                </div>
                                <div class="col-md-12 form-group">
                                    <input type="text" class="form-control" id="namsinh" name="namsinh" onblur="checkYearDOB(this);" oninput="inputDOB(this);" placeholder="Birthday">
                                    <span id="showErrorDOB"></span>
                                </div>
                                <div class="col-md-12 form-group">
                                    <input type="text" onkeypress="if (isNaN(String.fromCharCode(event.keyCode)))
                                                return false;" onblur="checkValidPhone(this);" maxlength="10" class="form-control" id="sodienthoai" name="sodienthoai" placeholder="Phone">
                                    <span id="showErrorPhone"></span>
                                </div>
                                <div class="col-md-12 form-group">
                                    <input type="text" class="form-control" id="email" name="email" onblur="checkValidEmail(this);" placeholder="Enter your email">
                                    <span id="showErrorEmail"></span>
                                </div>
                                <div class="col-md-12 form-group">
                                    <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                                    <span id="showErrorPassword"></span>
                                </div>
                                <div class="col-md-12 form-group">
                                    <input type="password" class="form-control" id="confirmpassword" onblur="checkPasswordConfirm(this);" name="confirmpassword" placeholder="Confirm password">
                                    <span id="showErrorConfirmPassword"></span>
                                </div>
                                <input type="hidden" id="option" name="option" value="register" />
                                <div id="showError" style="display:none;"></div>
                                <div class="col-md-12 form-group">
                                    <div class="g-recaptcha" data-sitekey="6LeMzF0UAAAAAOa0kmcjpIhHJdvIg-6h5rVlSEA7"></div>
                                </div>
                                <div class="col-md-12 form-group">
                                    <div class="creat_account">
                                        <input type="checkbox" id="f-option2" name="selector">
                                        <label for="f-option2">Keep me logged in</label>
                                    </div>
                                </div>
                                <div class="col-md-12 form-group">
                                    <button type="button" id="btnSubmit" class="btn submit_btn" onclick="myFunction();">Register</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================End Login Box Area =================-->

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
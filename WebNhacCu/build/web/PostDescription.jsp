<%-- 
    Document   : PostDescription
    Created on : Sep 30, 2022, 1:13:49 PM
    Author     : DELL
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>HighShop</title>
        <link rel="stylesheet" href="/css/style2.css">
        <script src="/js/cart.js"></script>
        <!-- bootstrap css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- style css -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Responsive-->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- fevicon -->
        <link rel="icon" href="images/fevicon.png" type="image/gif" />
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
        <!-- Tweaks for older IEs-->
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
        <!-- owl stylesheets -->
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
              media="screen">
        <link rel="icon" type="image/x-icon" href="images/new4logo.jpg">
        <link rel="stylesheet" href="font/themify-icons/themify-icons.css">
    </head>

    <!-- body -->

    <body>
        <div class="header_section header_main"  style="margin-bottom: 48px">
            <jsp:include page="Header.jsp"></jsp:include>
            </div>
            <div class="container">
            <c:forEach var="o" items="${listLiqui}">
                <div class="row">
                    <div class="col-md-5" style="z-index: -999;">
                        <img src="${o.image}" alt="" class="img-responsive">
                    </div>

                    <div class="col-md-7">
                        <div class="text-left">
                            <h1 style="font-weight: bold;">${o.title}</h1>
                        </div>
                        <hr />
                        <div>
                            <h2>Price: ${o.price} $</h2>
                        </div>
                        <hr />

                        <div class="content">
                            <p class="text-justify">${o.description}</p>
                        </div>

                        <div class="row">
                            <div class="col-md-2">
                                <label for="quantity">
                                    <h3>
                                        Quantity: 
                                    </h3>
                                </label>

                            </div>

                            <div class="col-md-10">
                                <input style="width: 50%;" type="text" class="form-control" name="quantity" id="quantity"
                                       placeholder="Number of Products..." size="10" value="1">
                            </div>
                        </div>

                        <div class="row" style="margin-top: 32px;">
                            <div class="col-md-12">
                                <button onclick="contactBtnClick()" id="contactBtn" style="min-width: 200px;" type="button" class="btn btn-success">Contact</button>
                            </div>
                        </div>

                        <div id="contactInfor" style="display: none; margin-top: 32px;">
                            <h3>Contact information:</h3>
                            <p>${o.getContactDescrip()}</p>
                        </div>
                    </div>
                </div>
            </c:forEach>



        </div>
        <div style="margin-top: 48px;">
            <jsp:include page="Footer.jsp"></jsp:include>
        </div>

        <script>
            $(document).ready(function () {
                $(".fancybox").fancybox({
                    openEffect: "none",
                    closeEffect: "none"
                });
            });


            $('#myCarousel').carousel({
                interval: false
            });

            //scroll slides on swipe for touch enabled devices

            $("#myCarousel").on("touchstart", function (event) {

                var yClick = event.originalEvent.touches[0].pageY;
                $(this).one("touchmove", function (event) {

                    var yMove = event.originalEvent.touches[0].pageY;
                    if (Math.floor(yClick - yMove) > 1) {
                        $(".carousel").carousel('next');
                    } else if (Math.floor(yClick - yMove) < -1) {
                        $(".carousel").carousel('prev');
                    }
                });
                $(".carousel").on("touchend", function () {
                    $(this).off("touchmove");
                });
            });
        </script>

        <script>
            function contactBtnClick() {
                var contactBtn = document.getElementById('contactBtn');
                var contactInfor = document.getElementById('contactInfor');

                console.log(contactBtn);
                console.log(contactInfor);

                if (contactInfor.style.display == 'none') {
                    contactInfor.style.display = 'block';
                } else {
                    contactInfor.style.display = 'none';
                }
            }

        </script>
    </body>

</html>

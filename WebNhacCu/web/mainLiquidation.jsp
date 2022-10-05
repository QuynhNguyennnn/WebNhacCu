<%-- 
    Document   : mainLiquidation
    Created on : Sep 28, 2022, 1:37:15 PM
    Author     : DELL
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- basic -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- mobile metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- site metas -->
        <title>[Liquidation] High shop</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">
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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
        <link rel="stylesheet" href="font/themify-icons/themify-icons.css">
    </head>
    <body>
        <div class="header_section header_main">
            <jsp:include page="Header.jsp"></jsp:include>
            </div>
            <div style="background-color: #ACC3A6" class="collection_section layout_padding ">
                <div class="container ">
                    <h1 class="new_text "><strong>Liquidation</strong></h1>
                <c:if test="${sessionScope.acc.isAdmin == 1}">
                    <a href="postLiquidation.jsp"><button type="button" class="btn btn-success">Post</button></a>
                    <a href="PostManagementControl"><button type="button" class="btn btn-primary">Post Management</button></a>
                </c:if>
                <c:if test="${sessionScope.acc.isCus == 1}">
                    <a href="postLiquidation.jsp"><button type="button" class="btn btn-success">Post</button></a>
                    <a href="PostManagementCusControl"><button type="button" class="btn btn-primary">Manage Post</button></a>
                </c:if>
                <c:if test="${sessionScope.acc == null}">
                    <a href="LoginControl"><button type="button" class="btn btn-success">Post</button></a>
                    <!--<a href="PostManagementControl"><button type="button" class="btn btn-primary">Manager Post</button></a>-->
                </c:if>

                    <p class="consectetur_text ">Need to liquidate your old musical instrument? Please post now to find a new owner for it</p>
                    <p class="consectetur_text ">Below is a list of products that need to be liquidated</p>
                </div>
            </div>
            <!-- new collection section end -->
            <!-- New Arrivals section start -->
            <div style="background-color: #ACC3A6;" class="layout_padding gallery_section ">
                <div class="container">
                    <div class="row ">
                    <c:forEach var="o" items="${listLiqui}">
                        <div class="col-sm-4 ">
                            <div class="best_shoes ">
                                <p class="best_text ">${o.title}</p>
                                <div class="shoes_icon "><img class="list_product " src="${o.image}"></div>
                                <div class="star_text center">
                                    <div class="left_part ">
                                        <p style="width: 70%;" class="btn btn-danger btn-block">${o.price}$</p>
                                    </div>
                                    <div class="right_part addToCart_btn_listP">
                                        <a href="postDescriptionControl?ID=${o.ID}" class="btn btn-success btn-block">View Detail</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>                    
                    </div>
                </div>
            </div>
        <jsp:include page="Footer.jsp"></jsp:include>
        <!-- Javascript files-->
        <script src="js/jquery.min.js "></script>
        <script src="js/popper.min.js "></script>
        <script src="js/bootstrap.bundle.min.js "></script>
        <script src="js/jquery-3.0.0.min.js "></script>
        <script src="js/plugin.js "></script>
        <!-- sidebar -->
        <script src="js/jquery.mCustomScrollbar.concat.min.js "></script>
        <script src="js/custom.js "></script>
        <!-- javascript -->
        <script src="js/owl.carousel.js "></script>
        <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js "></script>
        <script>
            $(document).ready(function () {
                $(".fancybox ").fancybox({
                    openEffect: "none ",
                    closeEffect: "none "
                });
            });


            $('#myCarousel').carousel({
                interval: false
            });

            //scroll slides on swipe for touch enabled devices

            $("#myCarousel ").on("touchstart ", function (event) {

                var yClick = event.originalEvent.touches[0].pageY;
                $(this).one("touchmove ", function (event) {

                    var yMove = event.originalEvent.touches[0].pageY;
                    if (Math.floor(yClick - yMove) > 1) {
                        $(".carousel ").carousel('next');
                    } else if (Math.floor(yClick - yMove) < -1) {
                        $(".carousel ").carousel('prev');
                    }
                });
                $(".carousel ").on("touchend ", function () {
                    $(this).off("touchmove ");
                });
            });
        </script>
    </body>
</html>
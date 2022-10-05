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

        <link rel="stylesheet" href="./css/liquidation.css">
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
            <div style="
                 background-image: url('/images/tam-removebg-preview.png');
                 background-repeat: no-repeat;
                 background-size: contain;" 
                 class="collection_section layout_padding ">
                <div class="container">
                    <h1 class="new_text text-center"><strong>Add Liquidation Product</strong></h1>

                    <p class="consectetur_text ">Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptas accusantium explicabo accusamus tempore reprehenderit voluptatem debitis adipisci autem nulla sed.</p>
                </div>
            </div>
            <!-- new collection section end -->
            <!-- New Arrivals section start -->
                <div style="background-color: #96CEB4;" class="layout_padding gallery_section ">
                <div class="container" style="max-width: 1000px;">
                    <form action="PostControl" method="post" style="margin-top: 174px;">
                        <div class="form-group">
                            <label ></label>
                            <input type="text" class="form-control" name="title" placeholder="Title">
                        </div>

                        <div class="form-group">
                            <label></label>
                            <textarea class="form-control" name="description" placeholder="Description" rows="3"></textarea>
                        </div>

                        <div class="form-group">
                            <label></label>
                            <input type="text" class="form-control" name="price" placeholder="Price">
                        </div>

                        <div class="form-group">
                            <label></label>
                            <input type="text" class="form-control" name="image" placeholder="Image URI">
                        </div>

                        <div class="form-group">
                            <label></label>
                            <input type="text" class="form-control" name="contactDesc" placeholder="Contact Description">
                        </div>
                        <div class="form-group">
                            <label></label>
                            <select name="categoryPro" class="form-select" aria-label="Default select example">
                                <option value="1">Guitar</option>
                                <option value="2">Drum</option>
                                <option value="3">Flute</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-success">Post</button>
                    </form>
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
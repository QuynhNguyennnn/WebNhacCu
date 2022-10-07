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
        <link rel="stylesheet" href="css/style2.css">
        <link href="/css/modal.css" rel="stylesheet" type="text/css" />
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
        <link rel="stylesheet" href="font/themify-icons/themify-icons.css">
    </head>

    <body>
        <div class="header_section header_main">
            <jsp:include page="Header.jsp"></jsp:include>
            </div>
            <div class="container-fluid" style="overflow-x: scroll; padding-bottom: 108px;">
                <!--                <div class="basket-module">
                                    <a style="background-color: #28a745; margin: 24px 0;" href="#addProductModal" class="btn btn-success" data-toggle="modal"><i class="material-icons"></i> <span>Add New Product</span></a>
                                </div>-->


                <table class="table">
                    <thead>
                        <tr>
                            <th style="width:20%" class="text-center">Item</th>
                            <th class="text-center">Title</th>
                            <th class="text-center">Description</th>
                            <th class="text-center">Contact Description</th>
                            <th class="text-center">Price</th>
                            <th class="text-center">Sell status</th>
                            <th class="text-center"></th>
                            <th class="text-center"></th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="o" items="${listLiqui}">
                        <tr class="text-center">
                            <td>
                                <img src="${o.image}">
                            </td>
                            <td>
                                ${o.title}
                            </td>
                            <td>
                                <p>${o.description}</p>
                            </td>
                            <td>
                                <p>${o.getContactDescrip()}</p>
                            </td>
                            <td>
                                <p>${o.price}</p>
                            </td>
                            <td>
                                <c:if test="${o.sell_status == 1 }">
                                    <p>On sale</p>
                                </c:if>
                                <c:if test="${o.sell_status == 0 }">
                                    <p>Browsing</p>
                                </c:if>
                            </td>
                            <td>
                            <td>
                                <c:if test="${o.getSell_status() == 0}">
                                    <a href="deletePostControl?post_id=${o.ID}"><button type="submit" class="btn btn-success" disabled>Sold</button></a>
                                </c:if>
                                <c:if test="${o.getSell_status() == 1}">
                                    <a href="deletePostControl?post_id=${o.ID}"><button type="submit" class="btn btn-success">Sold</button></a>
                                </c:if>
                                
                            </td>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <!--add new product modal-->
            <!--                <div class="dialog overlay" id="addProductModal">
                                <a href="#" class="overlay-close"></a>
                                <div class="dialog-body">
                                    <form action="add" method="post" style="width: 368px;">
                                        <div class="modal-header">
                                            <h4 class="modal-title">Add Product</h4>
                                            <a href="#" type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</a>
                                        </div>
                                        <div class="">
                                            <div class="modal-body-pad">
                                                <label>Item Image</label>
                                                <input name="itemImage" type="text" class="form-control" required>
                                            </div>
                                            <div class="modal-body-pad">
                                                <label>Description</label>
                                                <textarea name="description" class="form-control" required></textarea>
                                            </div>
                                            <div class="modal-body-pad">
                                                <label>Contact Description</label>
                                                <textarea name="contactDescription"  class="form-control" required></textarea>
                                            </div>
                                            <div class="modal-body-pad">
                                                <label>Price</label>
                                                <input name="price" type="text" class="form-control" required></input>
                                            </div>
                                            <div class="modal-body-pad" style="margin-top: 44px;">
                                                <label>Sell Status</label>
                                                <select name="sellStatus" id="">
                                                    <option value="0">0 - Sold</option>
                                                    <option value="1">1 - Available</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="modal-footer modal-footer-pad">
                                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                            <input style="background-color: black;" type="submit" class="btn btn-success" value="Add">
                                        </div>
                                    </form>
                                </div>
                            </div>-->
        </div>
        <jsp:include page="Footer.jsp"></jsp:include>
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
    </body>

</html>
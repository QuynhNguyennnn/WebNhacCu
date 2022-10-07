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
            <div class="container-fluid" style="overflow-x: scroll;">
                <h1 class="text-center" style="margin-top: 20px;">Posts have been <span style="font-weight:bold;">approved</span></h1>
                <table class="table">
                    <thead class="thead-light">
                        <tr>
                            <th style="width:10%" class="text-center">Item</th>
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
                    <c:forEach var="o" items="${listLiquiApproved}">
                        <c:if test="${o.getSell_status() == 1}">
                            <tr>
                            <td>
                                <img class="imgRe" src="${o.image}" alt="Placholder Image 2" class="product-frame">
                            </td>
                            <td>
                                ${o.title}
                            </td>
                            <td  style="width: 40%;">
                                <p>${o.description}</p>
                            </td>
                            <td>
                                <p>${o.getContactDescrip()}</p>
                            </td>
                            <td>
                                <p>${o.price}</p>
                            </td>
                            <td>
                                    <p>On sale</p>
                            </td>
<!--                            <td>
                                <a href="browsePostControl?post_id=${o.ID}"><button type="submit" class="btn btn-success">Accept</button></a>
                            </td>
                            <td>
                                <a href="deletePostControl?post_id=${o.ID}"><button type="submit" class="btn btn-success">Reject</button></a>
                            </td>-->
                        </tr>
                        </c:if>
                        
                    </c:forEach>
                </tbody>
            </table>
                <h1 class="text-center" style="margin-top: 20px;"><span style="font-weight:bold;">Waiting for browse</span></h1>
            <table class="table">
                <thead class="thead-light">
                    <tr>
                        <th style="width:10%" class="text-center">Item</th>
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
                        <c:if test="${o.getSell_status() == 0}">
                            <tr>
                            <td>
                                <img class="imgRe" src="${o.image}" alt="Placholder Image 2" class="product-frame">
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
                                    <p>Browsing</p>

                            </td>
                            <td>
                                <a href="browsePostControl?post_id=${o.ID}"><button type="submit" class="btn btn-success">Accept</button></a>
                            </td>
                            <td>
                                <a href="deletePostControl?post_id=${o.ID}"><button type="submit" class="btn btn-warning">Reject</button></a>
                            </td>
                        </tr>
                        </c:if>
                        
                    </c:forEach>
                </tbody>
            </table>
<!--            add new product modal
            <div class="dialog overlay" id="addProductModal">
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

<%@page import="POJO.Vehicle"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!DOCTYPE html>
<html lang="en">


    <head>

        <!-- Basic page needs
            ============================================ -->
        <title>Taxi details</title>
        <meta charset="utf-8">
        <meta name="keywords" content="boostrap, responsive, html5, css3, jquery, theme, multicolor, parallax, retina, business" />
        <meta name="author" content="Magentech">
        <meta name="robots" content="index, follow" />

        <!-- Mobile specific metas
        ============================================ -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

        <!-- Favicon
        ============================================ -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">
        <link rel="shortcut icon" href="ico/favicon.png">

        <!-- Google web fonts
        ============================================ -->
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>

        <!-- Libs CSS
            ============================================ -->
        <link rel="stylesheet" href="css/bootstrap/css/bootstrap.min.css">
        <link href="css/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="js/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">
        <link href="js/owl-carousel/owl.carousel.css" rel="stylesheet">
        <link href="css/themecss/lib.css" rel="stylesheet">
        <link href="js/jquery-ui/jquery-ui.min.css" rel="stylesheet">
        <link href="js/lightslider/lightslider.css" rel="stylesheet">

        <!-- Theme CSS
        ============================================ -->
        <link href="css/themecss/so_megamenu.css" rel="stylesheet">
        <link href="css/themecss/so-categories.css" rel="stylesheet">
        <link href="css/themecss/so-listing-tabs.css" rel="stylesheet">
        <link href="css/footer1.css" rel="stylesheet">
        <link href="css/header1.css" rel="stylesheet">
        <link id="color_scheme" href="css/theme.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">


        <!-- Include Libs & Plugins
        ============================================ -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script type="text/javascript" src="js/jquery-2.2.4.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/owl-carousel/owl.carousel.js"></script>
        <script type="text/javascript" src="js/themejs/libs.js"></script>
        <script type="text/javascript" src="js/unveil/jquery.unveil.js"></script>
        <script type="text/javascript" src="js/countdown/jquery.countdown.min.js"></script>
        <script type="text/javascript" src="js/dcjqaccordion/jquery.dcjqaccordion.2.8.min.js"></script>
        <script type="text/javascript" src="js/datetimepicker/moment.js"></script>
        <script type="text/javascript" src="js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui/jquery-ui.min.js"></script>
        <script type="text/javascript" src="js/lightslider/lightslider.js"></script>

        <!-- Theme files
        ============================================ -->


        <script type="text/javascript" src="js/themejs/so_megamenu.js"></script>
        <script type="text/javascript" src="js/themejs/addtocart.js"></script>
        <script type="text/javascript" src="js/themejs/application.js"></script>


    </head>

    <body class="res layout-subpage">
        <div id="wrapper" class="wrapper-full ">
            <!-- Header Container  -->
            <%@include file="UserHeader.jsp" %>
            <!-- //Header Container  -->
            <!-- Main Container  -->
            <div class="main-container container">

                <%                String idload = request.getParameter("itemidz");
                    String vehnumber = request.getParameter("veh");
                %>

                <div class="row">
                    <!--Middle Part Start-->
                    <%
                        Criteria singlepro = ses2.createCriteria(POJO.Vehicle.class);
                        singlepro.add(Restrictions.eq("id", Integer.parseInt(idload)));
                        Vehicle signgl = (Vehicle) singlepro.uniqueResult();


                    %>

                    <div id="content" class="col-md-12 col-sm-12">

                        <div class="product-view row">
                            <div class="left-content-product col-lg-10 col-xs-12">
                                <div class="row">
                                    <div class="content-product-left  col-sm-7 col-xs-12 ">

                                        <div class="large-image  vertical">
                                            <img itemprop="image" class="product-image-zoom" src="image/taxi.png" data-zoom-image="image/taxi.png" title="Bint Beef" alt="Bint Beef">
                                        </div>

                                    </div>

                                    <div class="content-product-right col-sm-5 col-xs-12">
                                        <div class="title-product">
                                            <h1><%= signgl.getVehiclename()%></h1>
                                            <input type="hidden" id="loggzcarnumbz2" value="<%= signgl.getVehumber()%>">
                                            <input type="hidden" id="itz" value="<%= idload%>">
                                        </div>
                                        <!-- Review ---->


                                        <div class="product-label form-group">
                                            <div class="product_page_price price" itemprop="offerDetails" itemscope="" itemtype="http://data-vocabulary.org/Offer">
                                                Drive By : <span class="price-new" itemprop="price"><%= signgl.getDname()%></span>

                                            </div>
                                            <div class="stock"><span>Availability:</span> <span class="status-stock">Available now</span></div>
                                        </div>

                                        <div class="product-box-desc">
                                            <div class="inner-box-desc">
                                                <div class="price-tax"><span>Vehicle Type:</span> <%= signgl.getType()%></div>
                                                <div class="price-tax"><span>Vehicle Number:</span> <%= signgl.getVehumber()%></div>
                                                <div class="price-tax"><span>Registered Branch:</span> <%= signgl.getBranchz()%></div>
                                                <div class="reward"><span>Taxi's City:</span> <%= signgl.getCity()%></div>
                                            </div>
                                        </div>


                                        <div id="product">




                                            <div class="form-group box-info-product">
                                                <%                                    if (request.getSession().getAttribute("user1") == null) {

                                                    } else {
                                                %>
                                                <div class="cart" style="width: 100%;">
                                                    <input type="button" data-toggle="tooltip" title="" value="Book now" data-loading-text="Loading..." id="button-cart" class="btn btn-mega btn-lg" onclick="loadcheckoutz(<%= signgl.getId()%>)" data-original-title="Book now">
                                                </div>
                                                <%
                                                    }
                                                %>

                                            </div>

                                        </div>
                                        <!-- end box info product -->

                                    </div>
                                </div>
                            </div>

                            <section class="col-lg-2 hidden-sm hidden-md hidden-xs slider-products">
                                <div class="module col-sm-12 four-block">
                                    <div class="modcontent clearfix">
                                        <div class="policy-detail">
                                            <div class="banner-policy">
                                                <div class="policy policy1">
                                                    <a href="#"> <span class="ico-policy">&nbsp;</span>	Pay
                                                        <br> Easily </a>
                                                </div>
                                                <div class="policy policy2">
                                                    <a href="#"> <span class="ico-policy">&nbsp;</span>	Search city vise </a>
                                                </div>
                                                <div class="policy policy3">
                                                    <a href="#"> <span class="ico-policy">&nbsp;</span>	Search vehicle vise </a>
                                                </div>
                                                <div class="policy policy4">
                                                    <a href="#"> <span class="ico-policy">&nbsp;</span>	Best cab service  </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </div>

                        <!-- Product Tabs -->
                        <div class="producttab ">
                            <div class="tabsslider  col-xs-12">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#tab-1">Description</a></li>
                                    <li class="item_nonactive"><a data-toggle="tab" href="#tab-review">Reviews</a></li>
                                </ul>
                                <div class="tab-content col-xs-12">
                                    <div id="tab-1" class="tab-pane fade active in">



                                        <p>
                                            <b>Additional Details</b></p>
                                        <ul>
                                            <li>
                                                Vehicle type : <%= signgl.getType()%></li>
                                            <li>
                                            <li>
                                                Vehicle Number : <%= signgl.getVehumber()%></li>
                                            <li>
                                                Chassie Number :   <%= signgl.getChassienumber()%></li>
                                            <li>
                                                Driver Name: <%= signgl.getDname()%></li>
                                            <li>
                                                Driver Register Number: <%= signgl.getDregno()%></li>

                                        </ul>


                                    </div>
                                    <div id="tab-review" class="tab-pane fade">

                                        <div id="review">
                                            <table class="table table-striped table-bordered">
                                                <tbody>
                                                    <%

                                                        Criteria procri = ses2.createCriteria(POJO.Reviews.class);
                                                        procri.add(Restrictions.eq("vehiclenumber", signgl.getVehumber()));
                                                        List<POJO.Reviews> available_veh = procri.list();

                                                        for (POJO.Reviews avbz : available_veh) {
                                                    %>
                                                    <tr>
                                                        <td style="width: 50%;"><strong><%= avbz.getUsernamez()%></strong></td>
                                                        <td class="text-right"><%= avbz.getDatez()%></td>
                                                        <td class="text-right"><%= avbz.getTimez()%></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="3">
                                                            <p><%= avbz.getReviewz()%></p>
                                                            <div class="ratings">
                                                                <div class="rating-box">
                                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <%
                                                        }
                                                    %>
                                                </tbody>
                                            </table>
                                            <div class="text-right"></div>
                                        </div>
                                        <%                                    if (request.getSession().getAttribute("user1") == null) {

                                            } else {
                                        %>
                                        <h2 id="review-title">Write a review</h2>
                                        <div class="contacts-form">
                                            <div class="form-group"> <span class="icon icon-user"></span>
                                                <input type="text" name="name" class="form-control" disabled=""> 
                                            </div>
                                            <div class="form-group"> <span class="icon icon-bubbles-2"></span>
                                                Your Review
                                                <input type="text" id="reczz" style="height: 200px;" class="form-control" > 
                                            </div> 



                                        </div>
                                        <div class="buttons clearfix"><button id="button-review" class="btn buttonGray" onclick="Addcommentuser()">Post review</button></div>
                                        <%
                                            }
                                        %>
                                    </div>

                                </div>


                            </div>
                        </div>
                    </div>
                    <!-- //Product Tabs -->

                    <!-- Related Products -->
                    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
                    <script src="http://maps.google.com/maps/api/js?sensor=false"></script>
                    <script type="text/javascript">
                                            function Addcommentuser() {


                                                var rr = $('#itz').val();
                                                var usercommentz = $('#reczz').val();
                                                var vehnumbz = $('#loggzcarnumbz2').val();



                                                if (usercommentz == "") {

                                                    swal("Error!", "Please type a review....!", "error");
                                                } else {

                                                    $.post("AddreviewUser",
                                                            {
                                                                revw: usercommentz,
                                                                vehz: vehnumbz

                                                            },
                                                    function(data, status) {
                                                        if (data == "ok") {


                                                            swal("Review Added...!", {
                                                                icon: "success",
                                                            });


                                                            var url = "SingleTaxiDetails.jsp?itemidz=" + rr + "&veh=" + vehnumbz;

                                                            window.location = url;


                                                        }



                                                    });
                                                }

                                            }

                                            function loadcheckoutz(gg) {

                                                var url = "Checkout.jsp?itemidzd=" + gg;

                                                window.location = url;

                                            }


                    </script>



                </div>


            </div>
            <!--Middle Part End-->
        </div>
        <!-- //Main Container -->


        <!-- Footer Container -->
        <%@include file="UserFooter.jsp" %>
        <!-- //end Footer Container -->

    </div>




</body>

</html>
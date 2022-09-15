

<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">


    <head>

        <!-- Basic page needs
            ============================================ -->
        <title>All vehicles</title>
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

        <!-- Theme CSS
        ============================================ -->
        <link href="css/themecss/so_megamenu.css" rel="stylesheet">
        <link href="css/themecss/so-categories.css" rel="stylesheet">
        <link href="css/themecss/so-listing-tabs.css" rel="stylesheet">
        <link href="css/footer1.css" rel="stylesheet">
        <link href="css/header1.css" rel="stylesheet">
        <link id="color_scheme" href="css/theme.css" rel="stylesheet">

        <link href="css/responsive.css" rel="stylesheet">



    </head>

    <body class="res layout-subpage banners-effect-6">
        <div id="wrapper" class="wrapper-full ">
            <!-- Header Container  -->
            <%@include file="UserHeader.jsp" %>
            <!-- //Header Container  -->
            <!-- Main Container  -->
            <div class="main-container container">
                <ul class="breadcrumb">
                    <li><a href="#"><i class="fa fa-home"></i></a></li>
                    <li><a href="#">All vehicles</a></li>
                </ul>

                <div class="row">
                    <!--Left Part Start -->
                    <aside class="col-sm-4 col-md-3" id="column-left">
                        <div class="module menu-category titleLine">
                            <h3 class="modtitle">Categories</h3>
                            <div class="modcontent">
                                <div class="box-category">
                                    <ul id="cat_accordion" class="list-group">

                                        <%                                           
                                         String cityname_loadih = request.getParameter("citynamez");
                                         Criteria cri223 = ses2.createCriteria(POJO.Vehicletypez.class);

                                            List<POJO.Vehicletypez> branches_list223 = cri223.list();

                                            for (POJO.Vehicletypez brnz223 : branches_list223) {

                                        %>
                                        <li class="hadchild">
                                            <a  class="cutom-parent" id="lodz2<%= brnz223.getVehid() %>" onclick="loadchesearchtypez2(<%= brnz223.getVehid() %>)"><%= brnz223.getVehtype()%></a>   
                                            <span class="button-view  fa fa-car"></span>

                                        </li>
                                        <%}
                                        %>

                                    </ul>
                                </div>


                            </div>
                        </div>

                        <div class="module">
                            <div class="modcontent clearfix">
                                <div class="banners">
                                    <div>
                                        <a href="#"><img src="image/img1.jpg" alt="left-image"></a>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </aside>
                    <!--Left Part End -->

                    <!--Middle Part Start-->
                    <div id="content" class="col-md-9 col-sm-8">
                        <div class="products-category">
                            <div class="category-derc">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="banners">
                                            <div>
                                                <a  href="#"><img src="image/img2.jpg" ><br></a>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!-- Filters -->

                            <!-- //end Filters -->
                            <!--changed listings-->
                            <div class="products-list row grid">

                                <%
                                    Criteria procri = ses2.createCriteria(POJO.Vehicle.class);
                                    procri.add(Restrictions.eq("availablez", "ok"));
                                    procri.add(Restrictions.eq("city",cityname_loadih ));
                                    List<POJO.Vehicle> available_veh = procri.list();

                                    for (POJO.Vehicle avbz : available_veh) {

                                %>
                                <div class="product-layout col-md-4 col-sm-6 col-xs-12 ">
                                    <div class="product-item-container">
                                        <div class="left-block">
                                            <div class="product-image-container lazy second_img ">
                                                <img data-src="image/taxi.png" src="image/taxi.png"  alt="Taxi" class="img-responsive" />
                                            </div>
                                            <!--Sale Label-->
                                            <span class="label label-sale">Book Now</span>

                                        </div>


                                        <div class="right-block">
                                            <center>
                                                <div class="caption">
                                                    <h4><a><%= avbz.getVehiclename()%></a></h4>		


                                                    <div class="price">
                                                        <span class="price-new"><%= avbz.getDname()%></span>  
                                                        <br>
                                                        <span><%= avbz.getCity()%></span>    
                                                        <input type="hidden" id="loggzcarnumbz" value="<%= avbz.getVehumber() %>">
                                                    </div>


                                                </div>

                                                <div class="button-group">
                                                    <button class="addToCart" type="button" data-toggle="tooltip" title="Book Now" onclick="singleTaxidetails(<%= avbz.getId()%>)"><i class="fa fa-car"></i> <span class="hidden-xs">Book Now</span></button>
                                                </div>
                                            </center>
                                        </div><!-- right block -->

                                    </div>
                                </div>
                                <div class="clearfix visible-xs-block"></div>
                                <% }

                                %>

                            </div>					
                            <!-- Filters -->

                            <!-- //end Filters -->

                        </div>

                    </div>


                </div>
                <!--Middle Part End-->
            </div>
            <!-- //Main Container -->


            <!-- Footer Container -->
            <%@include file="UserFooter.jsp" %>
            <!-- //end Footer Container -->

        </div>


        <!-- Cpanel Block -->
        <div id="sp-cpanel_btn" class="isDown visible-lg">
            <i class="fa fa-cog"></i>
        </div>		

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


        <!-- Theme files
        ============================================ -->


        <script type="text/javascript" src="js/themejs/so_megamenu.js"></script>
        <script type="text/javascript" src="js/themejs/addtocart.js"></script>
        <script type="text/javascript" src="js/themejs/application.js"></script>
        

        <script>


            function singleTaxidetails(cc) {
                
                var itemid = cc;
                var vehnumbz = $('#loggzcarnumbz').val();
                
                var url = "SingleTaxiDetails.jsp?itemidz=" + itemid+ "&veh=" + vehnumbz;

                window.location = url;
            }

            

        </script>
        <script>

            function loadchesearchtypez2(gg) {


                var selectedcity = $('#lodz' + gg).text();
                var url = "SearchCato.jsp?vehtypez=" + selectedcity;

                window.location = url;

            }
        </script>
    </script>
</body>

</html>
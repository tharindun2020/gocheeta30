
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">


    <head>

        <!-- Basic page needs
            ============================================ -->
        <title>My Rides History</title>
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
        <link href="css/checkout.css" rel="stylesheet">
        <link id="color_scheme" href="css/theme.css" rel="stylesheet">

        <link href="css/responsive.css" rel="stylesheet">



    </head>

    <body class="res layout-subpage">
        <div id="wrapper" class="wrapper-full ">
            <!-- Header Container  -->
            <%@include file="UserHeader.jsp" %>
            <!-- //Header Container  -->
            <!-- Main Container  -->
            <div class="main-container container">
                <ul class="breadcrumb">
                    <li><a href="#"><i class="fa fa-home"></i></a></li>
                    <li><a href="#">Confirm Ride</a></li>

                </ul>

                <div class="row">
                    <!--Middle Part Start-->

                    <%                        String vehicle_deta = request.getParameter("itemidzd");
                        POJO.Users current_user = (POJO.Users) request.getSession().getAttribute("user1");

                    %>
                    <div id="content" class="col-sm-12">
                        <h2 class="title">Ride History</h2>
                        <div class="so-onepagecheckout ">
                            <div class="col-left col-sm-3">

                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><i class="fa fa-user"></i> Your Personal Details</h4>
                                    </div>
                                    <div class="panel-body">
                                        <fieldset id="account">
                                            <div class="form-group required">
                                                <label for="input-payment-firstname" class="control-label">Name</label>
                                                <input type="text" class="form-control" id="input-payment-firstname" placeholder="First Name" value="<%= current_user.getNamez()%>" name="firstname" disabled="">
                                            </div>
                                            <div class="form-group required">
                                                <label for="input-payment-lastname" class="control-label">NIC</label>
                                                <input type="text" class="form-control" id="input-payment-lastname" placeholder="Last Name" value="<%= current_user.getNicz()%>" name="lastname" disabled="">
                                            </div>
                                            <div class="form-group required">
                                                <label for="input-payment-email" class="control-label">E-Mail</label>
                                                <input type="text" class="form-control" id="input-payment-email" placeholder="E-Mail" value="<%= current_user.getEmailz()%>" name="email" disabled="">
                                            </div>
                                            <div class="form-group required">
                                                <label for="input-payment-telephone" class="control-label">Telephone</label>
                                                <input type="text" class="form-control" id="input-payment-telephone" placeholder="Telephone" value="<%= current_user.getContacttz()%>" name="telephone" disabled="">
                                            </div>

                                        </fieldset>
                                    </div>
                                </div>

                            </div>
                            <div class="col-right col-sm-9">
                                <div class="row">




                                    <div class="col-sm-12">

                                        <div class="col-sm-12">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title"><i class="fa fa-cab"></i> Ride History</h4>
                                                </div>
                                                <div class="panel-body">
                                                    <div class="table-responsive">
                                                        <table class="table table-bordered">
                                                            <thead>
                                                                <tr>
                                                                    <td class="text-center">Vehicle number</td>
                                                                    <td class="text-center">Vehicle Type</td>
                                                                    <td class="text-left">Driver Name</td>
                                                                    <td class="text-left">Drop in Address</td>
                                                                    <td class="text-left">Drop off Address</td>
                                                                    <td class="text-right">Date</td>
                                                                    <td class="text-right">Time</td>
                                                                    <td class="text-right">Status</td>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <%
                                                                    Criteria procri = ses2.createCriteria(POJO.Ridedetailz.class);
                                                                    procri.add(Restrictions.eq("nicz", current_user.getNicz()));

                                                                    List<POJO.Ridedetailz> available_veh = procri.list();

                                                                    for (POJO.Ridedetailz avbz : available_veh) {
                                                                %>
                                                                <tr>

                                                                    <td class="text-right"><%= avbz.getVehnumber()%></td>
                                                                    <td class="text-right"><%= avbz.getVehicletype() %></td>
                                                                    <td class="text-right"><%= avbz.getDrivername() %></td>
                                                                    <td class="text-right"><%= avbz.getDropinaddress() %></td>
                                                                    <td class="text-right"><%= avbz.getDropoffadress() %></td>
                                                                    <td class="text-right"><%= avbz.getDatez()  %></td>
                                                                    <td class="text-right"><%= avbz.getTimez() %></td>
                                                                    <td class="text-right"><%= avbz.getStatusz() %></td>
                                                                </tr>
                                                                <%
                                                                    }
                                                                %>
                                                            </tbody>

                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--Middle Part End -->

                    </div>
                </div>
                <!-- //Main Container -->

                <!-- Footer Container -->
                <%@include file="UserFooter.jsp" %>
                <!-- //end Footer Container -->

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
            <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js" ></script>
            <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
            <script>

                                                                function Loaddistance() {

                                                                    var dropinloc = document.getElementById('selcity1').value;
                                                                    var dropoffcity = document.getElementById('selcity2').value;
                                                                    if (dropinloc == "Select city" || dropoffcity == "Select city") {

                                                                        swal("Error!", "Select valid city....!", "error");
                                                                    } else {

                                                                        $.post("LoadKilometerdistance",
                                                                                {
                                                                                    dropinloc: dropinloc,
                                                                                    dropoffcity: dropoffcity

                                                                                },
                                                                        function(data, status) {


                                                                            $("#distancez").val(data);



                                                                        });
                                                                    }

                                                                }

                                                                function confirmride(gg) {


                                                                    var vehicleid = gg;
                                                                    var dropinaddress = document.getElementById('input-pickupadd').value;
                                                                    var dropoffaddress = document.getElementById('input-pickoffadd').value;
                                                                    var dropinloc = document.getElementById('selcity1').value;
                                                                    var dropoffcity = document.getElementById('selcity2').value;
                                                                    var price = document.getElementById('distancez').value;

                                                                    if (dropinloc == "Select city" || dropoffcity == "Select city" || dropinaddress == "" || dropoffaddress == "") {

                                                                        swal("Error!", "Select valid city and fill all feilds....!", "error");
                                                                    } else {

                                                                        $.post("ConfirmRide",
                                                                                {
                                                                                    vehicleid: vehicleid,
                                                                                    dropinaddress: dropinaddress,
                                                                                    dropoffaddress: dropoffaddress,
                                                                                    dropinloc: dropinloc,
                                                                                    dropoffcity: dropoffcity,
                                                                                    price: price

                                                                                },
                                                                        function(data, status) {

                                                                            if (data == "ok") {


                                                                                swal("Ride confirmed..Wait for the call from driver...!", {
                                                                                    icon: "success",
                                                                                });

                                                                                setTimeout(Gotohomez(), 56000);


                                                                            }

                                                                            else {

                                                                                alert(data);
                                                                            }




                                                                        });
                                                                    }

                                                                }
                                                                function Gotohomez() {

                                                                    var url = "AllVehicles.jsp";

                                                                    window.location = url;

                                                                }
            </script>
    </body>

</html>

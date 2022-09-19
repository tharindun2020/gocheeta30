
<!DOCTYPE html>
<html lang="en">

    <head>

        <!-- Basic page needs
            ============================================ -->
        <title>Login</title>
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

    <body class="res layout-subpage">
        <div id="wrapper" class="wrapper-full ">
            <!-- Header Container  -->
            <%@include file="UserHeader.jsp" %>
            <!-- //Header Container  -->
            <!-- Main Container  -->
            <div class="main-container container">
                <ul class="breadcrumb">
                    <li><a href="#"><i class="fa fa-home"></i></a></li>
                    <li><a href="#">Account</a></li>
                    <li><a href="#">Login</a></li>
                </ul>

                <div class="row">
                    <div id="content" class="col-sm-12">
                        <h2 class="title">Login in to your Account</h2>
                        <p>If you haven't any accounts register from here<a href="UserRegister.jsp">Register page</a>.</p>

                        <fieldset id="account">



                            <fieldset>
                                <legend>Login details</legend>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-password">Type</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" id="slecttype">

                                            <option>User</option>
                                            <option>Driver</option>
                                        </select>
                                    </div>
                                </div>
                                <br><br>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-password">NIC</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="password" value="" placeholder="Username" id="loginz-email" class="form-control">
                                    </div>
                                </div>

                                <br><br>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-confirm">Password</label>
                                    <div class="col-sm-10">
                                        <input type="password" name="confirm"  placeholder="Password" id="loginz-password" class="form-control">
                                    </div>
                                </div>
                            </fieldset>
                            <br>
                            <br>
                            <div class="buttons" style="width: 50%;">
                                <input type="button" value="Login" style="width: 50%;" class="btn btn-primary" onclick="Loginuserss()">
                            </div>

                    </div>
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
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="http://maps.google.com/maps/api/js?sensor=false"></script>
        <script type="text/javascript">
                                    function Loginuserss() {

                                        var emailz = $('#loginz-email').val();
                                        var passwords = $('#loginz-password').val();
                                        var usertype = $('#slecttype').val();


                                        if (emailz == "" || passwords == "") {

                                            swal("Error!", "Please fill all  mandatory feilds....!", "error");
                                        } else {

                                            if (usertype == "User") {
                                                $.post("LoginUser",
                                                        {
                                                            uname: emailz,
                                                            passwordz: passwords

                                                        },
                                                function(data, status) {
                                                    if (data == "Done") {


                                                        swal("Login Sucessfully...!", {
                                                            icon: "success",
                                                        });

                                                        setTimeout(rideirecttoShop(), 56000);


                                                    }

                                                    else if (data == "Invalid") {
                                                        swal("Error!", "Invalid Login details....!", "error");

                                                    } else {

                                                        alert(data);
                                                    }

                                                });

                                            } else if (usertype == "Driver") {

                                                $.post("LoginDriver",
                                                        {
                                                            uname: emailz,
                                                            passwordz: passwords

                                                        },
                                                function(data, status) {
                                                    if (data == "Done") {


                                                        swal("Login Sucessfully...!", {
                                                            icon: "success",
                                                        });

                                                        setTimeout(rideirecttoShop2(), 56000);


                                                    }

                                                    else if (data == "Invalid") {
                                                        swal("Error!", "Invalid Login details....!", "error");

                                                    } else {

                                                        alert(data);
                                                    }

                                                });
                                            }
                                        }

                                    }

                                    function rideirecttoShop() {

                                        window.location = "AllVehicles.jsp";
                                    }
                                    function rideirecttoShop2() {

                                        window.location = "MyRidessDriver.jsp";
                                    }


        </script>

    </body>

</html>
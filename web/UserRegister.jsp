
<!DOCTYPE html>
<html lang="en">

    <head>

        <!-- Basic page needs
            ============================================ -->
        <title>Register</title>
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
                    <li><a href="#">Register</a></li>
                </ul>

                <div class="row">
                    <div id="content" class="col-sm-12">
                        <h2 class="title">Register Account</h2>
                        <p>If you already have an account with us, please login at the <a href="UserLogin.jsp">login page</a>.</p>

                        <fieldset id="account">
                            <legend>Your Personal Details</legend>
                            <div class="form-group required" style="display: none;">
                                <label class="col-sm-2 control-label">Customer Group</label>
                                <div class="col-sm-10">
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="customer_group_id" value="1" checked="checked"> Default
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-firstname">Name in full</label>
                                <div class="col-sm-10">
                                    <input type="text" name="firstname" value="" placeholder="First Name" id="aa" class="form-control">
                                </div>
                            </div>
                            <br><br>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-lastname">NIC Number</label>
                                <div class="col-sm-10">
                                    <input type="text" name="lastname" value="" placeholder="Last Name" id="bb" class="form-control">
                                </div>
                            </div>
                            <br><br>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-email">E-Mail</label>
                                <div class="col-sm-10">
                                    <input type="email" name="email" value="" placeholder="E-Mail" id="cc" class="form-control">
                                </div>
                            </div>
                            <br><br>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-telephone">Contact</label>
                                <div class="col-sm-10">
                                    <input type="tel" name="telephone" value="" placeholder="Telephone" id="dd" class="form-control">
                                </div>
                            </div>
                            <br><br>
                        </fieldset>

                        <fieldset>
                            <legend>Your Password</legend>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-password">Password</label>
                                <div class="col-sm-10">
                                    <input type="password" name="password" value="" placeholder="Password" id="ee" class="form-control">
                                </div>
                            </div>
                            <br><br>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-confirm">Password Confirm</label>
                                <div class="col-sm-10">
                                    <input type="password" name="confirm" value="" placeholder="Confirm password" id="ff" class="form-control">
                                </div>
                            </div>
                        </fieldset>
                        <br>
                        <br>
                        <div class="buttons" style="width: 50%;">
                            <input type="button" value="Register" onclick="Userregister()" style="width: 50%;" class="btn btn-primary">
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
        <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js" ></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script>

                                function Userregister() {


                                    var driver_name = document.getElementById("aa").value;
                                    var driver_nic = document.getElementById("bb").value;
                                    var email = document.getElementById("cc").value;
                                    var contact = document.getElementById("dd").value;
                                    var pw1 = document.getElementById("ee").value;
                                    var pw2 = document.getElementById("ff").value;

                                    if (driver_name == "" || driver_nic == "" || email == "" || contact == "" || pw1 == "" || pw2 == "") {
                                        swal("Please fill all feilds...!", {
                                            icon: "error",
                                        });

                                    } else if (!(pw1 == pw2)) {

                                        swal("Passwords are not matched...!", {
                                            icon: "error",
                                        });
                                    } else {
                                        $.post("RegisterUser",
                                                {
                                                    driver_name: driver_name,
                                                    driver_nic: driver_nic,
                                                    email: email,
                                                    contact: contact,
                                                    pw1: pw1

                                                },
                                                function(data, status) {
                                                    if (data == "alread") {


                                                        swal("This NIC is already registered...!", {
                                                            icon: "error",
                                                        });


                                                    } else if (data == "ok") {

                                                        swal("Done!User  regstered..!", {
                                                            icon: "success",
                                                        });
                                                        window.location = "UserRegister.jsp";
                                                    }
                                                    else {

                                                        alert(data);
                                                    }

                                                });

                                    }




                                }




        </script>

        <!-- Theme files
        ============================================ -->


        <script type="text/javascript" src="js/themejs/so_megamenu.js"></script>
        <script type="text/javascript" src="js/themejs/addtocart.js"></script>
        <script type="text/javascript" src="js/themejs/application.js"></script>	

    </body>

</html>
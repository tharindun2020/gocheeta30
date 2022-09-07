<!DOCTYPE html>
<html lang="en">


    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Admin Login</title>
        <!-- plugins:css -->
        <link rel="stylesheet" href="vendors/iconfonts/mdi/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="vendors/iconfonts/puse-icons-feather/feather.css">
        <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
        <link rel="stylesheet" href="vendors/css/vendor.bundle.addons.css">
        <!-- endinject -->
        <!-- plugin css for this page -->
        <!-- End plugin css for this page -->
        <!-- inject:css -->
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/gradient.css" id="style-swicher">
        <!-- endinject -->
        <link rel="shortcut icon" href="images/favicon.png" />
    </head>

    <body style="background:   url('images/backz.jpg');">
        <div class="container-scroller" style="margin-top: 250px;">
            <div class="container-fluid page-body-wrapper full-page-wrapper">
                <div class="content-wrapper d-flex align-items-center">
                    <div class="row w-100">
                        <div class="col-lg-4 mx-auto">
                            <div class="auto-form-wrapper">

                                <div class="form-group">
                                    <label class="label" style="color: white;">Username</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="Username" id="uname">
                                        <div class="input-group-append">
                                            <span class="input-group-text">
                                                <i class="mdi mdi-check-circle-outline"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="label" style="color: white;">Password</label>
                                    <div class="input-group">
                                        <input type="password" class="form-control" placeholder="*********" id="pwz">
                                        <div class="input-group-append">
                                            <span class="input-group-text">
                                                <i class="mdi mdi-check-circle-outline"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <button class="btn btn-primary submit-btn btn-block" onclick="Loginadmin()">Login</button>
                                </div>




                            </div>

                            
                        </div>
                    </div>
                </div>
                <!-- content-wrapper ends -->
            </div>
            <!-- page-body-wrapper ends -->
        </div>
        <!-- container-scroller -->
        <!-- plugins:js -->
        <script src="vendors/js/vendor.bundle.base.js"></script>
        <script src="vendors/js/vendor.bundle.addons.js"></script>
        <!-- endinject -->
        <!-- inject:js -->
        <script src="js/off-canvas.js"></script>
        <script src="js/hoverable-collapse.js"></script>
        <script src="js/misc.js"></script>
        <script src="js/settings.js"></script>
        <script src="js/todolist.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="http://maps.google.com/maps/api/js?sensor=false"></script>
        <script type="text/javascript">
                                    function Loginadmin() {

                                        var emailz = $('#uname').val();
                                        var passwords = $('#pwz').val();


                                        if (emailz == "" || passwords == "") {

                                            swal("Error!", "Please fill all  mandatory feilds....!", "error");
                                        } else {

                                            $.post("../Adminlogz",
                                                    {
                                                        uname: emailz,
                                                        passwordz: passwords

                                                    },
                                            function(data, status) {
                                                if (data == "Done") {


                                                    swal("Login Sucessfully...!", {
                                                        icon: "success",
                                                    });

                                                    setTimeout(rideirecttoShopz(), 56000);


                                                }

                                                else if (data == "Invalid") {
                                                    swal("Error!", "Invalid Login details....!", "error");

                                                } else {

                                                    alert(data);
                                                }

                                            });
                                        }

                                    }
                                    
                                    function rideirecttoShopz() {

                                        window.location = "Adminhome.jsp";
                                    }


        </script>
        <!-- endinject -->
    </body>
    

</html>
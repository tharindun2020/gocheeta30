<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<!DOCTYPE html>
<html lang="en">


    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Admin Home</title>
        <!-- plugins:css -->
        <link rel="stylesheet" href="vendors/iconfonts/mdi/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
        <link rel="stylesheet" href="vendors/css/vendor.bundle.addons.css">
        <!-- endinject -->
        <!-- plugin css for this page -->
        <link rel="stylesheet" href="vendors/iconfonts/simple-line-icon/css/simple-line-icons.css">
        <link rel="stylesheet" href="vendors/iconfonts/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="vendors/iconfonts/ti-icons/css/themify-icons.css">
        <!-- End plugin css for this page -->
        <!-- inject:css -->
        <link rel="stylesheet" href="css/style.css">
        <!-- endinject -->
        <link rel="shortcut icon" href="images/favicon.png" />
    </head>

    <body>
        <div class="site-preloader">
            <div class="loader-demo-box">
                <div class="flip-square-loader mx-auto"></div>
            </div>
        </div>
        <div class="menu-overlay"></div>
        <div class="container-scroller">
            <!-- partial:partials/_navbar.html -->
            <%@include file="Adminheadsec.jsp" %>
            <!-- partial -->
            <div class="container-fluid page-body-wrapper">
                <!-- partial:partials/_sidebar.html -->
                <%@include file="AdminSidebar.jsp" %>

                <!-- partial -->
                <div class="main-panel">
                    <div class="page-title-wrapper">
                        <h1 class="page-title">Dashboard 1</h1>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Library</li>
                            </ol>
                        </nav>
                    </div>
                    <div class="content-wrapper">
                        <div class="row">
                            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card ">
                                <div class="card card-statistics one">
                                    <div class="card-body">
                                        <div class="clearfix">
                                            <div class="float-left">
                                                <i class="icon-present icon-lg"></i>
                                            </div>
                                            <div class="float-right">
                                                <%

                                                    Session ss2 = Utill.NewHibernateUtil.getSessionFactory().openSession();
                                                    Criteria procri = ss2.createCriteria(POJO.Vehicle.class);
                                                    Criteria procri2 = ss2.createCriteria(POJO.Users.class);
                                                    Criteria procri3 = ss2.createCriteria(POJO.Reviews.class);
                                                    Criteria procri4 = ss2.createCriteria(POJO.Branches.class);

                                                    List<POJO.Vehicle> available_veh = procri.list();
                                                    List<POJO.Vehicle> available_veh2 = procri2.list();
                                                    List<POJO.Vehicle> available_veh3 = procri3.list();
                                                    List<POJO.Vehicle> available_veh4 = procri4.list();

                                                    
                                                %>
                                                <p class="mb-0 text-right">Total Vehicles</p>
                                                <div class="fluid-container">
                                                    <h3 class="font-weight-medium text-right mb-0"><%= available_veh.size() %></h3>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card">
                                <div class="card card-statistics two">
                                    <div class="card-body">
                                        <div class="clearfix">
                                            <div class="float-left">
                                                <i class="icon-cloud-upload icon-lg"></i>
                                            </div>
                                            <div class="float-right">
                                                <p class="mb-0 text-right">Total customers</p>
                                                <div class="fluid-container">
                                                    <h3 class="font-weight-medium text-right mb-0"><%= available_veh2.size() %></h3>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="text-muted mt-3 mb-0">
                                            <i class="mdi mdi-bookmark-outline mr-1" aria-hidden="true"></i> Total users
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card">
                                <div class="card card-statistics three">
                                    <div class="card-body">
                                        <div class="clearfix">
                                            <div class="float-left">
                                                <i class="icon-star icon-lg"></i>
                                            </div>
                                            <div class="float-right">
                                                <p class="mb-0 text-right">Review</p>
                                                <div class="fluid-container">
                                                    <h3 class="font-weight-medium text-right mb-0"><%= available_veh3.size() %></h3>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="text-muted mt-3 mb-0">
                                            <i class="mdi mdi-calendar mr-1" aria-hidden="true"></i> Product reviews
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card">
                                <div class="card card-statistics four">
                                    <div class="card-body">
                                        <div class="clearfix">
                                            <div class="float-left">
                                                <i class="icon-people icon-lg"></i>
                                            </div>
                                            <div class="float-right">
                                                <p class="mb-0 text-right">Branches</p>
                                                <div class="fluid-container">
                                                    <h3 class="font-weight-medium text-right mb-0"><%= available_veh4.size() %></h3>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="text-muted mt-3 mb-0">
                                            <i class="mdi mdi-reload mr-1" aria-hidden="true"></i> Branch details
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>




                    </div>
                    <!-- content-wrapper ends -->
                    <!-- partial:partials/_footer.html -->
                    <footer class="footer">
                        <div class="container-fluid clearfix">
                            <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © 2022
                                <a href="#" target="_blank">Taxi service</a>. All rights reserved.</span>
                            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with
                                <i class="mdi mdi-heart text-danger"></i>
                            </span>
                        </div>
                    </footer>
                    <!-- partial -->
                </div>
                <!-- main-panel ends -->
            </div>
            <!-- page-body-wrapper ends -->
        </div>
        <!-- container-scroller -->

        <!-- plugins:js -->
        <script src="vendors/js/vendor.bundle.base.js"></script>
        <script src="vendors/js/vendor.bundle.addons.js"></script>
        <!-- jQuery custom content scroller -->

        <!-- inject:js -->
        <script src="js/off-canvas.js"></script>
        <!-- endinject -->
        <!-- Custom js for this page-->
        <script src="js/float-chart.js"></script>
        <script type="text/javascript" src="js/dashboard.js"></script>
        <script type="text/javascript" src="js/widgets.js"></script>
        <!-- End custom js for this page-->
        <script src="js/misc.js"></script>
    </body>


    <!-- Mirrored from bestdesignstudio.in/demo/extreame-admin/largemenu/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 31 Oct 2018 05:26:19 GMT -->
</html>
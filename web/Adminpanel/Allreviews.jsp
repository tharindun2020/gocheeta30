

<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>All Reviews</title>
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
                        <h1 class="page-title">Dashboard</h1>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">All Customer reviews</li>
                            </ol>
                        </nav>
                    </div>
                    <div class="content-wrapper">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Customer Reviews</h4>
                                <div class="row">
                                    <div class="col-12">
                                        <div id="order-listing_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4 no-footer">
                                            <div class="row">
                                                <div class="col-sm-12 col-md-6">
                                                    <div class="dataTables_length" id="order-listing_length">

                                                    </div>
                                                </div>
                                                <div class="col-sm-12 col-md-6">
                                                    <div id="order-listing_filter" class="dataTables_filter">

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <table id="order-listing" class="table dataTable no-footer" role="grid" aria-describedby="order-listing_info">
                                                        <thead>
                                                            <tr role="row">


                                                                <th class="sorting" tabindex="0" aria-controls="order-listing" rowspan="1" colspan="1"  >#</th>
                                                                <th class="sorting" tabindex="0" aria-controls="order-listing" rowspan="1" colspan="1"  >Vehicle Number</th>
                                                                <th class="sorting" tabindex="0" aria-controls="order-listing" rowspan="1" colspan="1"  >Review</th>
                                                                <th class="sorting" tabindex="0" aria-controls="order-listing" rowspan="1" colspan="1"  >Username</th>
                                                                <th class="sorting" tabindex="0" aria-controls="order-listing" rowspan="1" colspan="1"  >Date</th>
                                                                <th class="sorting" tabindex="0" aria-controls="order-listing" rowspan="1" colspan="1"  >Time</th>
                                                                <th class="sorting" tabindex="0" aria-controls="order-listing" rowspan="1" colspan="1"  ></th>

                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <%

                                                                Session ss2 = Utill.NewHibernateUtil.getSessionFactory().openSession();
                                                                Criteria procri = ss2.createCriteria(POJO.Reviews.class);

                                                                List<POJO.Reviews> available_veh = procri.list();

                                                                for (POJO.Reviews avbz : available_veh) {
                                                            %>
                                                            <tr role="row" class="odd">

                                                                

                                                                <td><%= avbz.getId() %></td>
                                                                <td><%= avbz.getVehiclenumber() %></td>
                                                                <td><%= avbz.getReviewz() %></td>
                                                                <td><%= avbz.getUsernamez() %></td>
                                                                <td><%= avbz.getDatez() %></td>
                                                                <td><%= avbz.getTimez() %></td>
                                                                <td><input type="button" value="Remove" class="btn btn-danger" onclick="Removereviewe(<%= avbz.getId() %>)"></td>

                                                            </tr>
                                                            <%
                                                                }
                                                            %>

                                                        </tbody>
                                                    </table></div>
                                            </div><div class="row">
                                                <div class="col-sm-12 col-md-5">
                                                <div class="col-sm-12 col-md-7">
                                                    <div class="dataTables_paginate paging_simple_numbers" id="order-listing_paginate">
                                                        </div></div></div></div>
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
        <!-- endinject -->
        <!-- Plugin js for this page-->
        <script type="text/javascript" src="js/data-table.js"></script>
        <!-- End plugin js for this page-->

        <!-- inject:js -->
        <script src="js/off-canvas.js"></script>
        <script src="js/misc.js"></script>
        <!-- endinject -->
        <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js" ></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script>

            function Removereviewe(gg) {





                $.post("../RemoveReview",
                        {
                            vehid: gg

                        },
                        function(data, status) {
                            if (data == "alread") {


                                swal("This NIC is already registered...!", {
                                    icon: "error",
                                });


                            } else if (data == "ok") {

                                swal("Done!Review Removed..!", {
                                    icon: "success",
                                });
                                window.location = "Allreviews.jsp";
                            }
                            else {

                                alert(data);
                            }

                        });






            }




        </script>
    </body>


</html>



<%@page import="org.hibernate.criterion.Restrictions"%>
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
        <title>On going</title>
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
                                <li class="breadcrumb-item active" aria-current="page">Ride history</li>
                            </ol>
                        </nav>
                    </div>
                    <div class="content-wrapper">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Ride History</h4>
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
                                                                <th class="sorting_asc" tabindex="0" aria-controls="order-listing" rowspan="1" colspan="1"  aria-sort="ascending" aria-label="Order #: activate to sort column descending">#</th>
                                                                <th class="sorting" tabindex="0" aria-controls="order-listing" rowspan="1" colspan="1"  >Vehicle Number</th>


                                                                <th class="sorting" tabindex="0" aria-controls="order-listing" rowspan="1" colspan="1"  >Driver Name</th>
                                                                <th class="sorting" tabindex="0" aria-controls="order-listing" rowspan="1" colspan="1"  >Drive Reg</th>
                                                                <th class="sorting" tabindex="0" aria-controls="order-listing" rowspan="1" colspan="1"  >Customer</th>
                                                                <th class="sorting" tabindex="0" aria-controls="order-listing" rowspan="1" colspan="1"  >NIC</th>
                                                                <th class="sorting" tabindex="0" aria-controls="order-listing" rowspan="1" colspan="1"  >Contact</th>
                                                                <th class="sorting" tabindex="0" aria-controls="order-listing" rowspan="1" colspan="1" >Drop in</th>
                                                                <th class="sorting" tabindex="0" aria-controls="order-listing" rowspan="1" colspan="1"  >Drop off</th>
                                                                <th class="sorting" tabindex="0" aria-controls="order-listing" rowspan="1" colspan="1"  >Cost</th>

                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <%

                                                                Session ss2 = Utill.NewHibernateUtil.getSessionFactory().openSession();
                                                                Criteria procri = ss2.createCriteria(POJO.Ridedetailz.class);
                                                                procri.add(Restrictions.eq("statusz", "Pending"));

                                                                List<POJO.Ridedetailz> available_veh = procri.list();

                                                                for (POJO.Ridedetailz avbz : available_veh) {
                                                            %>
                                                            <tr role="row" class="odd">
                                                                <td class="sorting_1"><%= avbz.getId()%></td>
                                                                <td><%= avbz.getVehnumber()%></td>

                                                                <td><%= avbz.getDrivername() %></td>
                                                                <td><%= avbz.getDriverregni()%></td>
                                                                <td><%= avbz.getUsernamez() %></td>
                                                                <td><%= avbz.getNicz()%></td>
                                                                <td><%= avbz.getContact()%></td>
                                                                <td><%= avbz.getDropinaddress()%></td>
                                                                <td><%= avbz.getDropoffadress()%></td>
                                                                <td><%= avbz.getCost() %></td>

                                                            </tr>
                                                            <%
                                                                }
                                                            %>

                                                        </tbody>
                                                    </table></div></div><div class="row"><div class="col-sm-12 col-md-5"><div class="dataTables_info" id="order-listing_info" role="status" aria-live="polite">Showing 1 to 10 of 10 entries</div></div><div class="col-sm-12 col-md-7"><div class="dataTables_paginate paging_simple_numbers" id="order-listing_paginate"><ul class="pagination"><li class="paginate_button page-item previous disabled" id="order-listing_previous"><a href="#" aria-controls="order-listing" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li><li class="paginate_button page-item active"><a href="#" aria-controls="order-listing" data-dt-idx="1" tabindex="0" class="page-link">1</a></li><li class="paginate_button page-item next disabled" id="order-listing_next"><a href="#" aria-controls="order-listing" data-dt-idx="2" tabindex="0" class="page-link">Next</a></li></ul></div></div></div></div>
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
    </body>


</html>
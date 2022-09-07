
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Add new branch</title>
        <!-- plugins:css -->
        <link rel="stylesheet" href="vendors/iconfonts/mdi/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
        <link rel="stylesheet" href="vendors/css/vendor.bundle.addons.css">
        <!-- endinject -->
        <!-- plugin css for this page -->
        <!-- End plugin css for this page -->
        <link rel="stylesheet" href="vendors/iconfonts/simple-line-icon/css/simple-line-icons.css">
        <link rel="stylesheet" href="vendors/iconfonts/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="vendors/iconfonts/ti-icons/css/themify-icons.css">
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
                                <li class="breadcrumb-item active" aria-current="page">Add new Branch</li>
                            </ol>
                        </nav>
                    </div>
                    <div class="content-wrapper">
                        <div class="row">
                            <div class="col-md-12 d-flex align-items-stretch grid-margin">
                                <div class="row flex-grow">
                                    <div class="col-12">
                                        <div class="card">
                                            <div class="card-body">
                                                <h4 class="card-title">Add new Branch</h4>

                                                <form class="forms-sample">



                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">Select City for new branch</label>
                                                        <select class="form-control" id="branchnn">
                                                            <%
                                                                Session ses2 = Utill.NewHibernateUtil.getSessionFactory().openSession();
                                                                Criteria cri2 = ses2.createCriteria(POJO.Cities.class);

                                                                List<POJO.Cities> branches_list2 = cri2.list();

                                                                for (POJO.Cities brnz2 : branches_list2) {


                                                            %>
                                                            <option><%=  brnz2.getCity()%></option>
                                                            <%    }%> 
                                                        </select>
                                                    </div>

                                                    <button type="button" class="btn btn-success mr-2" onclick="addnewdriverzzz()">Add Branch</button>

                                                </form>
                                            </div>
                                        </div>
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
        <!-- End plugin js for this page-->

        <script type="text/javascript" src="js/gal.js"></script>

        <!-- inject:js -->
        <script src="js/off-canvas.js"></script>
        <script src="js/misc.js"></script>
        <!-- endinject -->
        <!-- Custom js for this page-->
        <!-- End custom js for this page-->

        <!-- Custom js for this page-->
        <script src="js/file-upload.js"></script>
        <!-- End custom js for this page-->


    </body>



    <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js" ></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script>

                                                        function addnewdriverzzz() {


                                                            var branchname = document.getElementById("branchnn").value;


                                                            $.post("../AddnewBranch",
                                                                    {
                                                                        branchname: branchname

                                                                    },
                                                            function(data, status) {
                                                                if (data == "alread") {


                                                                    swal("This branch is already registered...!", {
                                                                        icon: "error",
                                                                    });


                                                                } else if (data == "ok") {

                                                                    swal("Done!Branch regstered..!", {
                                                                        icon: "success",
                                                                    });
                                                                    window.location = "AddBranch.jsp";
                                                                }
                                                                else {

                                                                    alert(data);
                                                                }

                                                            });






                                                        }




    </script>


</html>

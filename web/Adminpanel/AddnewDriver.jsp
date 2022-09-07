<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<!DOCTYPE html>
<html lang="en">


    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Add new Driver</title>
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
                                <li class="breadcrumb-item active" aria-current="page">Add new Driver</li>
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
                                                <h4 class="card-title">Add new Driver</h4>

                                                <form class="forms-sample">
                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">Driver Name</label>
                                                        <input class="form-control" id="dname1" placeholder="Name" type="text">

                                                    </div>
                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">Driver NIC</label>
                                                        <input class="form-control" id="dname2" placeholder="NIC" type="text">

                                                    </div>

                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">Driver Contact</label>
                                                        <input class="form-control" id="dname3" placeholder="Contact" type="text">

                                                    </div>

                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">Driver password</label>
                                                        <input class="form-control" id="dname4" placeholder="Password" type="password">

                                                    </div>

                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">Branch</label>
                                                        <select class="form-control" id="dname5">
                                                            <%
                                                                Session ses = Utill.NewHibernateUtil.getSessionFactory().openSession();
                                                                Criteria cri = ses.createCriteria(POJO.Branches.class);

                                                                List<POJO.Branches> branches_list = cri.list();

                                                                for (POJO.Branches brnz : branches_list) {


                                                            %>
                                                            <option><%=  brnz.getBranchname()%></option>
                                                            <%    }%> 
                                                        </select>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">City</label>
                                                        <select class="form-control" id="dname6">
                                                            <%
                                                                Session ses2 = Utill.NewHibernateUtil.getSessionFactory().openSession();
                                                                Criteria cri2 = ses.createCriteria(POJO.Cities.class);

                                                                List<POJO.Cities> branches_list2 = cri2.list();

                                                                for (POJO.Cities brnz2 : branches_list2) {


                                                            %>
                                                            <option><%=  brnz2.getCity()%></option>
                                                            <%    }%> 
                                                        </select>
                                                    </div>

                                                    <button type="button" class="btn btn-success mr-2" onclick="addnewdriverz()">Add Driver</button>

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

                                                        function addnewdriverz() {

                                                            
                                                            var driver_name = document.getElementById("dname1").value;
                                                            var driver_nic = document.getElementById("dname2").value;
                                                            var driver_contact = document.getElementById("dname3").value;
                                                            var driver_password = document.getElementById("dname4").value;
                                                            var driver_branch = document.getElementById("dname5").value;
                                                            var driver_city = document.getElementById("dname6").value;

                                                            if (driver_name == "" || driver_nic == "" || driver_contact == "" || driver_password == "" || driver_branch == "") {
                                                                swal("Please fill all feilds...!", {
                                                                    icon: "error",
                                                                });

                                                            } else {
                                                                $.post("../AddnewDriver",
                                                                        {
                                                                            driver_name: driver_name,
                                                                            driver_nic: driver_nic,
                                                                            driver_contact: driver_contact,
                                                                            driver_password: driver_password,
                                                                            driver_branch: driver_branch,
                                                                            driver_city driver_city

                                                                        },
                                                                function(data, status) {
                                                                    if (data == "alread") {


                                                                        swal("This NIC is already registered...!", {
                                                                            icon: "error",
                                                                        });
                                                                        

                                                                    } else if (data == "ok") {

                                                                        swal("Done!Driver regstered..!", {
                                                                            icon: "success",
                                                                        });
                                                                        window.location = "AddnewDriver.jsp";
                                                                    }
                                                                    else {

                                                                        alert(data);
                                                                    }

                                                                });

                                                            }




                                                        }




    </script>


</html>
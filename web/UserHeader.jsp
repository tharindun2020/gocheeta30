<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<header id="header" class=" variantleft type_1">
    <!-- Header Top -->
    <div class="header-top">
        <div class="container">
            <div class="row">

                <div class="header-top-right collapsed-block text-right  col-sm-6 col-xs-12 ">
                    <h5 class="tabBlockTitle visible-xs">More<a class="expander " href="#TabBlock-1"><i class="fa fa-angle-down"></i></a></h5>
                    <div class="tabBlock" id="TabBlock-1">
                        <ul class="top-link list-inline">
                            <li class="account" id="my_account">
                                <a href="#" title="My Account" class="btn btn-xs dropdown-toggle" data-toggle="dropdown"> <span >My Account</span> <span class="fa fa-angle-down"></span></a>
                                <ul class="dropdown-menu ">
                                    <li><a href="UserRegister.jsp"><i class="fa fa-user"></i> Register</a></li>
                                    <li><a href="UserLogin.jsp"><i class="fa fa-pencil-square-o"></i> Login</a></li>
                                </ul>
                            </li>
                            <%                                    if (request.getSession().getAttribute("user1") == null) {

                                } else {
                            %>
                            <li class="account" id="my_account">
                                <a href="#" title="My Account" class="btn btn-xs dropdown-toggle" data-toggle="dropdown"> <span >Rides</span> <span class="fa fa-angle-down"></span></a>
                                <ul class="dropdown-menu ">
                                    <li><a href="MyRides.jsp"><i class="fa fa-user"></i> My Ride History</a></li>
                                    <li><a href="Adminpanel/AdminLogin.jsp"><i class="fa fa-user"></i> Admin login</a></li>
                                    <li><a href="UserLogin.jsp"><i class="fa fa-user"></i> Logout</a></li>
                                </ul>
                            </li>
                            <%
                                }
                                if (request.getSession().getAttribute("driver1") == null) {

                                } else {


                            %>
                            <li class="account" id="my_account">
                                <a href="#" title="My Account" class="btn btn-xs dropdown-toggle" data-toggle="dropdown"> <span >Rides</span> <span class="fa fa-angle-down"></span></a>
                                <ul class="dropdown-menu ">
                                    <li><a href="MyRidessDriver.jsp"><i class="fa fa-user"></i> My Ride History</a></li>
                                    <li><a href="UserLogin.jsp"><i class="fa fa-user"></i> Logout</a></li>
                                </ul>
                            </li>
                            <%                                }
                            %>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- //Header Top -->

    <!-- Header center -->
    <div class="header-center left">
        <div class="container">
            <div class="row">
                <!-- Logo -->
                <div class="navbar-logo col-md-3 col-sm-12 col-xs-12">
                    <a href="index.jsp"><img src="image/car.png" title="Book your car" alt="Book your car" /></a>
                </div>
                <!-- //end Logo -->

                <!-- Search -->
                <div id="sosearchpro" class="col-sm-7 search-pro">

                    <div id="search0" class="search input-group">
                        <div class="select_category filter_type icon-select">
                            <select class="no-border" name="category_idpo" id="category_idpo">
                                <option value="0">All Cities</option>
                                <%
                                    Session ses2 = Utill.NewHibernateUtil.getSessionFactory().openSession();
                                    Criteria cri2 = ses2.createCriteria(POJO.Cities.class);

                                    List<POJO.Cities> branches_list2 = cri2.list();

                                    for (POJO.Cities brnz2 : branches_list2) {


                                %>
                                <option>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=  brnz2.getCity()%></option>
                                <%    }%>

                            </select>
                        </div>

                        <span class="input-group-btn">
                            <button type="button" class="button-search btn btn-primary" name="submit_search" onclick="loadchesearch()"><i class="fa fa-search"></i></button>
                        </span>
                    </div>
                    <input type="hidden" name="route" value="product/search" />

                </div>
                <!-- //end Search -->

                <!-- Secondary menu -->

            </div>

        </div>
    </div>
    <!-- //Header center -->

    <!-- Header Bottom -->
    <div class="header-bottom">
        <div class="container">
            <div class="row">

                <div class="sidebar-menu col-md-3 col-sm-6 col-xs-12 ">
                    <div class="responsive so-megamenu ">
                        <div class="so-vertical-menu no-gutter ">
                            <nav class="navbar-default">	

                                <div class="container-megamenu vertical open">
                                    <div id="menuHeading">
                                        <div class="megamenuToogle-wrapper">
                                            <div class="megamenuToogle-pattern">
                                                <div class="container">
                                                    <div>
                                                        <span></span>
                                                        <span></span>
                                                        <span></span>
                                                    </div>
                                                    All Categories							
                                                    <i class="fa pull-right arrow-circle fa-chevron-circle-up"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="navbar-header">
                                        <button type="button" id="show-verticalmenu" data-toggle="collapse" class="navbar-toggle fa fa-list-alt">

                                        </button>
                                        All Vehicle Types		
                                    </div>
                                    <div class="vertical-wrapper" >
                                        <span id="remove-verticalmenu" class="fa fa-times"></span>
                                        <div class="megamenu-pattern">
                                            <div class="container">
                                                <ul class="megamenu">
                                                    <%

                                                        Criteria cri22 = ses2.createCriteria(POJO.Vehicletypez.class);

                                                        List<POJO.Vehicletypez> branches_list22 = cri22.list();

                                                        for (POJO.Vehicletypez brnz22 : branches_list22) {

                                                    %>
                                                    <li class="item-vertical"  >
                                                        <p class="close-menu"></p>
                                                        <a  class="clearfix" onclick="loadchesearchtypez(<%= brnz22.getVehid() %>)">
                                                            <img src="image/theme/icons/9.png" alt="icon">
                                                            <span id="lodz<%= brnz22.getVehid() %>"><%= brnz22.getVehtype()%></span>

                                                        </a>
                                                    </li>
                                                    <%}
                                                    %>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </nav>
                        </div>
                    </div>

                </div>

                <!-- Main menu -->
                <div class="megamenu-hori header-bottom-right  col-md-9 col-sm-6 col-xs-12 ">
                    <div class="responsive so-megamenu ">
                        <nav class="navbar-default">
                            <div class=" container-megamenu  horizontal">
                                <div class="navbar-header">
                                    <button type="button" id="show-megamenu" data-toggle="collapse" class="navbar-toggle">
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                    Navigation		
                                </div>

                                <div class="megamenu-wrapper">
                                    <span id="remove-megamenu" class="fa fa-times"></span>
                                    <div class="megamenu-pattern">
                                        <div class="container">
                                            <ul class="megamenu " data-transition="slide" data-animationtime="250">
                                                <li class="home hover">
                                                    <a href="index.jsp">Home </a>

                                                </li>

                                                <li>
                                                    <p class="close-menu"></p>
                                                    <a href="AllVehicles.jsp" class="clearfix">
                                                        <strong>Book a Ride</strong>
                                                        <img class="label-hot" src="image/theme/icons/hot-icon.png" alt="icon items">

                                                    </a>

                                                </li>
<!--                                                <li>
                                                    <a href="index.html">About </a>

                                                </li>

                                                <li>
                                                    <a href="index.html">Contact</a>

                                                </li>-->



                                            </ul>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </nav>
                    </div>
                </div>
                <!-- //end Main menu -->

            </div>
        </div>

    </div>
    <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js" ></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script>

        function loadchesearch() {

            var selectedcity = $('#category_idpo').val();
            var url = "AllcityVehicles.jsp?citynamez=" + selectedcity;

            window.location = url;

        }
        function loadchesearchtypez(gg) {
            
            
            var selectedcity = $('#lodz'+gg).text();
            var url = "SearchCato.jsp?vehtypez=" + selectedcity;

            window.location = url;

        }

    </script>
</header>
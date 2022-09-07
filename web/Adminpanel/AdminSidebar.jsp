<nav class="sidebar sidebar-offcanvas" id="sidebar">
    <ul class="nav">
        <li class="nav-item nav-profile">
            <div class="nav-link">
                <div class="user-wrapper">
                    <div class="profile-image">
                        <img src="images/adminimage.png" alt="profile image"> </div>
                    <div class="text-wrapper">
                        <p class="profile-name">Hello Welcome</p>
                        <div>
                            <small class="designation text-muted">Admin</small>
                            <span class="status-indicator online"></span>
                        </div>
                    </div>
                </div>
            </div>
        </li>
        <li class="nav-item active">
            <a class="nav-link" data-toggle="collapse" href="#dashboard-dropdown" aria-expanded="true" aria-controls="dashboard-dropdown"><i class="menu-icon mdi mdi-television"></i><span class="menu-title">Vehicles</span><i class="menu-arrow"></i></a>
            <div class="collapse" id="dashboard-dropdown">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"> <a class="nav-link active" href="addnewvehicle.jsp">Add vehicle</a></li>
                    <li class="nav-item"> <a class="nav-link active" href="Allvehicledetails.jsp">Vehicle details</a></li>
                    <li class="nav-item"> <a class="nav-link active" href="Addvehicletype.jsp">Add vehicle type</a></li>
                    <li class="nav-item"> <a class="nav-link active" href="Vehicletypedataz.jsp">Vehicle type details</a></li>
                </ul>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#charts" aria-expanded="false" aria-controls="charts"><i class="menu-icon mdi mdi-chart-line"></i><span class="menu-title">Customer</span><i class="menu-arrow"></i></a>
            <div class="collapse" id="charts">
              <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="Customerdetails.jsp">All customer details</a></li>
              </ul>
            </div>
          </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#apps-dropdown" aria-expanded="false" aria-controls="apps-dropdown"><i class="menu-icon mdi mdi-dna"></i><span class="menu-title">Driver</span><i class="menu-arrow"></i></a>
            <div class="collapse" id="apps-dropdown">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"> <a class="nav-link" href="AddnewDriver.jsp">Add new Driver</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="Alldriverdetails.jsp">All Drivers</a> </li>
                </ul>
            </div>
        </li>
        
        <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic"><i class="menu-icon mdi mdi-content-copy"></i><span class="menu-title">Ride details</span><i class="menu-arrow"></i></a>
            <div class="collapse" id="ui-basic">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"> <a class="nav-link" href="OngoingRides.jsp">On going</a></li>
                    <li class="nav-item"> <a class="nav-link" href="ViewRideHistory.jsp">History</a></li>
                </ul>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-advanced" aria-expanded="false" aria-controls="ui-advanced"><i class="menu-icon mdi mdi-lightbulb-outline"></i><span class="menu-title">Reviews</span><i class="menu-arrow"></i></a>
            <div class="collapse" id="ui-advanced">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"> <a class="nav-link" href="Allreviews.jsp">All reviews</a></li>
                </ul>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-advancedz" aria-expanded="false" aria-controls="ui-advanced"><i class="menu-icon mdi mdi-television"></i><span class="menu-title">Cities</span><i class="menu-arrow"></i></a>
            <div class="collapse" id="ui-advancedz">
                <ul class="nav flex-column sub-menu">
                    
                    <li class="nav-item"> <a class="nav-link" href="AddBranch.jsp">Add new branch</a></li>
                    <li class="nav-item"> <a class="nav-link" href="branchDetails.jsp">View Branch</a></li>
                </ul>
            </div>
        </li>
        
    </ul>
</nav>
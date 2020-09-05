<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head> <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>B.P.M.S.</title>
	<link rel="shortcut icon" href="img/logo1.png">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="css/fontastic.css">
    <!-- Google fonts - Poppins -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/table.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <body>
    <div class="page">
      <!-- Main Navbar-->
      <header class="header">
        <nav class="navbar">
          <div class="container-fluid">
            <div class="navbar-holder d-flex align-items-center justify-content-between">
              <!-- Navbar Header-->
              <div class="navbar-header">
                <!-- Navbar Brand --><a href="index.html" class="navbar-brand d-none d-sm-inline-block">
                  <div class="brand-text d-none d-lg-inline-block"><strong>B.P.M.S</strong></div>
                  <div class="brand-text d-none d-sm-inline-block d-lg-none"><strong>B.P.M.S.</strong></div></a>
				 <!-- Toggle Button--><a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a></div>
			  <!-- Navbar Menu -->
              <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
              </ul>
            </div>
          </div>
        </nav>
      </header>
	  <div class="page-content d-flex align-items-stretch"> 
        <!--Side Navbar -->
        <nav class="side-navbar">
		<div class="sidebar-header d-flex align-items-center">
			<a href="#"><img class="img-fluid" src="img/logo1.png" height= "50px" width= "100px" alt="site logo"></a>
		</div>
		<!-- Sidebar Navidation Menus<span class="heading"></span>-->
          <ul class="list-unstyled">
            <li><a href="index.html"> <i class="icon-home"></i>Home </a></li>
            <li><a href="usertable.jsp"> <i class="fa fa-history"></i>View Booked Passes </a></li>            
            <li><a href="userchoice.jsp"> <i class="fa fa-book"></i>Book Your Pass </a></li>
			<!-- <li><a href="#"> <i class="fa fa-question-circle"></i>FAQ </a></li> -->
      <div class="page-content d-flex align-items-stretch">   
        </nav>
        <div class="content-inner">
          <header class="page-header">
            <div class="container-fluid">
              <h2 class="no-margin-bottom no-margin-top">APPLICATION FORM</h2>
            </div>
          </header>
          <!-- Breadcrumb-->
          <div class="breadcrumb-holder container-fluid">
            <ul class="breadcrumb">
              <li class="breadcrumb-item"><a href="index.html">Home</a></li>
              <li class="breadcrumb-item active">Book Bus Pass</li>
            </ul>
          </div>
          <!-- Forms Section-->
          <section class="forms"> 
            <div class="container-fluid">
              <div class="row">
                <!-- Form Elements -->
                <div class="col-lg-12">
                  <div class="card">
                    <div class="card-close">
                      <div class="dropdown">
                      </div>
                    </div>
                    <div class="card-header d-flex align-items-center">
                      <h3 class="h4">Fill Your Details Here</h3>					  
                    </div>		
					<div class="freebirdFormviewerViewHeaderRequiredLegend" aria-hidden="true" dir="auto">* Required</div>
                    <div class="card-body">
                      <form class="form-validate" id="myForm" action="UserBuspassApplicationFormServlet" method="post" name="myForm">
                        <div class="form-group row">
                          <label class="col-sm-3 form-control-label">Name of Applicant</label>
                          <div class="col-sm-9">
						  <input id="name of applicant" name="name of applicant" type="text" class="form-control" required data-msg="Please enter your name" class="input-material">
							 <label for="name of applicant" class="label-material"><span class="freebirdFormviewerComponentsQuestionBaseRequiredAsterisk" id="nameError" aria-label="Required question"></span></label><br>
                          
                             </div>
                             <!-- <div><span class="freebirdFormviewerComponentsQuestionBaseRequiredAsterisk" id="nameError" aria-label="Required question"></span></div> -->
                        	</div>
		
                        <div class="line"></div>
                        <div class="form-group row">
                          <label class="col-sm-3 form-control-label">Gender</label>
						    <select name="gender" id="gender">
						      <option>Select</option>
                              <option>Male</option>
                              <option>Female</option>
							  </select>
							   <label class="col-sm-3 form-control-label"><span class="freebirdFormviewerComponentsQuestionBaseRequiredAsterisk" id="genderError" aria-label="Required question"></span></label>
                          <div class="col-sm-9">
                          						  
						  </div>
                        </div>
                        <div class="line"></div>
                        <div class="form-group row">
                          <label class="col-sm-3 form-control-label">Phone Number</label>
                          <div class="col-sm-9">
                           <input id="phone number" name="phone" type="number" class="form-control" required data-msg="Please enter your phone number" class="input-material">
							 <label for="phone number" class="label-material"><span class="freebirdFormviewerComponentsQuestionBaseRequiredAsterisk" id="phoneError" aria-label="Required question"></span></label><br>
                          </div>
                        </div>
                        <div class="line"></div>
                        <div class="form-group row">
                          <label class="col-sm-3 form-control-label">E-mail ID</label>
                          <div class="col-sm-9">
                            <input id="email-id" name="email" type="text" class="form-control" required data-msg="Please enter your e-mail id" class="input-material">
							 <label for="email-id" class="label-material"><span class="freebirdFormviewerComponentsQuestionBaseRequiredAsterisk" id="emailError" aria-label="Required question"></span></label><br>
                          </div>
                        </div>
						<div class="line"></div>
                        <div class="form-group row">
                          <label class="col-sm-3 form-control-label">ID Proof Type</label>
						  <select name="id proof type" id="idpt">
						      <option>Select</option>
                              <option>Aadhar Card</option>
                              <option>Driving Licence</option>
							  <option>Voter ID</option>
							  <option>Student ID Card</option>							  
							  </select>
							  <label class="col-sm-3 form-control-label"><span class="freebirdFormviewerComponentsQuestionBaseRequiredAsterisk" id="idptError" aria-label="Required question"></span></label>
						</div>						                       
                        <div class="form-group row">
                          <label class="col-sm-3 form-control-label">ID Proof Number</label>
                          <div class="col-sm-9">
                            <input id="id proof number" name="id proof number" type="text" class="form-control" required data-msg="Please enter your id proof number" class="input-material">
							 <label for="id proof number" class="label-material"><span class="freebirdFormviewerComponentsQuestionBaseRequiredAsterisk" id="idpnError" aria-label="Required question"></span></label><br>
                          </div>
                        </div>
						<div class="line"></div>
                        <div class="form-group row">
                          <label class="col-sm-3 form-control-label">Occupation</label>
                          <div class="col-sm-9">
                            <input id="occupation" name="occupation" type="text" class="form-control" required data-msg="Please enter your occupation" class="input-material">
							 <label for="occupation" class="label-material"><span class="freebirdFormviewerComponentsQuestionBaseRequiredAsterisk" id="occupationError" aria-label="Required question"></span></label><br>
                          </div>
                        </div>
						<div class="line"></div>
                        <div class="form-group row">
                          <label class="col-sm-3 form-control-label">Bus Pass Type</label>
						  <div class="col-sm-9">
                            <input id="Bus Pass Type" name="bpt" class="form-control" required data-msg="Please enter your Bus Pass Type" class="input-material">
							 <label for="Bus Pass Type" class="label-material"><span class="freebirdFormviewerComponentsQuestionBaseRequiredAsterisk" id="bptError" aria-label="Required question"></span></label><br>
                          </div>
                          </div>
						  <div class="line"></div>
                        <div class="form-group row">
                          <label class="col-sm-3 form-control-label">Date of Travel</label>
                          <div class="col-sm-3">
                            <input type="date" name="select date" id="dateoftravel" class="form-control" required data-msg="Please enter your select date" class="input-material">
							 <label for="select date" class="label-material"><span class="freebirdFormviewerComponentsQuestionBaseRequiredAsterisk" id="dateoftravelErr" aria-label="Required question"></span></label><br>
                          </div>
                        </div>
                        <div class="line"></div>
                        <div class="form-group row">
                          <div class="col-sm-4 offset-sm-3">
                          	<a href="#"><input type="button" value="Book" class="btn btn-primary" onClick="addToCart(document.getElementById('Bus Pass Type').value,document.getElementById('dateoftravel').value);"></a>
                            <button type="cancel" class="btn btn-secondary">Cancel</button>                            
                          </div>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>
		  <!-- Page Footer-->
          <footer class="main-footer">
            <div class="container-fluid">
              <div class="row">
                
                <div class="col-sm-6 text-right">
                  <p>Design by <a href="#" class="external">Team Emerald</a>        Powered by <a href="http://www.neonicz.com/" class="external">Neonicz</a></p>
                  <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
                </div>
              </div>
            </div>
          </footer>
          </div>
      </div>
    </div>
    <!-- JavaScript files-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper.js/umd/popper.min.js"> </script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/jquery-validation/jquery.validate.min.js"></script>
    <!-- Main File-->
    <script src="js/front.js"></script>
<script>
var cart = {"userRequest":[]};
function addToCart(type, date)
{
       
       var name = document.getElementById("name of applicant");
       var gender = document.getElementById("gender").value;
       var phone = document.getElementById("phone number");
       var email = document.getElementById("email-id");
       var idpt = document.getElementById("idpt").value;
       var idpn = document.getElementById("id proof number");
       var occupation = document.getElementById("occupation");
       var bpt = document.getElementById("Bus Pass Type");
       var dateoftravel = document.getElementById("dateoftravel").value;
       if(!dateoftravel){
    	   document.getElementById("dateoftravelErr").innerHTML = "Please select a Date of Travel.";
       }if (!name.checkValidity()) {
         document.getElementById("nameError").innerHTML = name.validationMessage;
       }if (gender == "Select") {
           document.getElementById("genderError").innerHTML = "Please select a gender.";
       }if (!phone.checkValidity()) {
           document.getElementById("phoneError").innerHTML = phone.validationMessage;
       }if (!email.checkValidity()) {
           document.getElementById("emailError").innerHTML = email.validationMessage;
       }if (idpt == "Select") {
           document.getElementById("idptError").innerHTML = "Please select a ID Proof Type.";
       }if (!idpn.checkValidity()) {
             document.getElementById("idpnError").innerHTML = idpn.validationMessage;
       }if (!occupation.checkValidity()) {
           document.getElementById("occupationError").innerHTML = occupation.validationMessage;
       }if (!bpt.checkValidity()) {
           document.getElementById("bptError").innerHTML = bpt.validationMessage;
       }else{
    	   var myCookie = getCookie("userRequestCookie");
           if((myCookie !== null) && (myCookie !== ''))
        	{
        	cart = JSON.parse(myCookie);
      		}
    	   var p = {BusPassType: type, DateOfTravel: date, PassId: "temp"};
           cart.userRequest.push(p);
           document.cookie="userRequestCookie="+JSON.stringify(cart);
           document.getElementById("myForm").submit();
       }
}
function getCookie(userRequestCookie) 
{
	  var name = userRequestCookie + "=";
	  var decodedCookie = decodeURIComponent(document.cookie);
	  var ca = decodedCookie.split(';');
	  for(var i = 0; i <ca.length; i++)
		{
	    	var c = ca[i];
	   		 while (c.charAt(0) == ' ')
		   	 {
	     		 c = c.substring(1);
	   		 }
	   		 if (c.indexOf(name) == 0)
		   	 {
	      		return c.substring(name.length, c.length);
	   		 }
	 	}
	  return "";
}
</script>
</body>
</html>
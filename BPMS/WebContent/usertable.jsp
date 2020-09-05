<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.codingchallenge.bpms.list.admin.requesthistory.repository.AdminRequestHistoryRepository,com.codingchallenge.bpms.user.buspassapplicationform.repository.UserApplicationJDBC,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
   <meta charset="utf-8">
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
	<link href="css/jquery.dataTables.min.css" rel="stylesheet">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <body>
	<%
	Long str = (Long)request.getAttribute("key");
	%>
	<div class="page">
      <!-- Main Navbar-->
      <header class="header">
        <nav class="navbar">
          <div class="container-fluid">
            <div class="navbar-holder d-flex align-items-center justify-content-between">
              <!-- Navbar Header-->
              <div class="navbar-header">
                <!-- Navbar Brand --><a href="index.html" class="navbar-brand d-none d-sm-inline-block">
                  <div class="brand-text d-none d-lg-inline-block"><strong>B.P.M.S.</strong></div>
                  <div class="brand-text d-none d-sm-inline-block d-lg-none"><strong>B.P.M.S.</strong></div></a>
				  <!-- Toggle Button-->
				  <a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a></div>
				  <!-- Navbar Menu -->
              <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
              </ul>
              </div>
     </header>
      <div class="page-content d-flex align-items-stretch"> 
	  <!--Side Navbar -->
        <nav class="side-navbar">
          <!-- Sidebar Header-->
          <div class="sidebar-header d-flex align-items-center">
			<a href="#"><img class="img-fluid" src="img/logo1.png" height= "50px" width= "150px" alt="site logo"></a>
          </div>
		  <hr style="border:2px solid #212529;"/>
          <!-- Sidebar Navidation Menus--><!--<span class="heading">Main</span>-->
          <ul class="list-unstyled">
            <li><a href="index.html"> <i class="icon-home"></i>Home </a></li>
			<li><a href="userchoice.jsp"> <i class="fa fa-book"></i>Book Your Pass </a></li>
            <li><a href="usertable.jsp"> <i class="fa fa-history"></i>View Booked Passes </a></li>      
            <!--<li><a href="#"> <i class="fa fa-question-circle"></i>FAQ </a></li>-->
        </nav>
        <div class="content-inner">
          <!-- Page Header-->
          <header class="page-header">
            <div class="container-fluid">
              <h2 class="no-margin-bottom">BOOKED PASS HISTORY</h2>
            </div>
          </header>
          <!-- Breadcrumb-->
          <div class="breadcrumb-holder container-fluid">
            <ul class="breadcrumb">
              <li class="breadcrumb-item"><a href="index.html">Home</a></li>
              <li class="breadcrumb-item active">View Booked Passes</li>
            </ul>
          </div>
          <section class="tables">   
            <div class="container-fluid">
              <div class="row">
                <div class="col-lg-12">
                  <div class="card">
                    <div class="card-close">
                    </div>
                    <div class="card-header d-flex align-items-center">
                      <h3 class="h4">BOOKED PASS HISTORY</h3>
                    </div>
                    <div class="card-body">
                      <div class="table table-bordered">
                        <table class="table" id="myTable">
                          <thead>
                            <tr>
                              <th>S.no.</th>
							  <th>Pass ID</th>
                              <th>Type of Pass</th>
                              <th>Date</th>
                              <th>Status</th>
							  <th>Action</th>
                            </tr>
                          </thead>
                          <tbody id="requestContainer">
                            
                          </tbody>
                        </table>
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
	<!--<script src="js/jquery.js"></script> -->
          <script src="js/jquery.dataTables.min.js"></script> 
           <script src="js/front.js"></script>
    <script>
     $(document).ready(function(){
	
	  <%--  alert("<%=str%>"); --%>
		var myCookie = getCookie("userRequestCookie");
		/* alert(myCookie); */
		//document.getElementById('userRequest').value = myCookie;
   	if((myCookie != null) && (myCookie != ''))
   	{
   		var jsonObject = JSON.parse(myCookie);
   		console.log('jsonObject',jsonObject);
     		var res = []; 
      		for(var i in jsonObject) 
          		{
				var userRequest = jsonObject[i]; 
				console.log("userRequest",userRequest);
				for(var item in userRequest) 
          		{
	           				var sn = Number(item) + 1; 
	           			 	var passId = userRequest[item].PassId;
	                     	if(userRequest[item].PassId === "temp" && userRequest[item].BusPassType !== null && userRequest[item].DateOfTravel !== null){
	                         	passId = 'AZ- '+<%=str%> ;
	                         }
	           				console.log(item);
							var row =  '<tr>'+
                           '<th scope="row">'+sn+'</th>'+
                           '<td>'+passId+'</td>'+
                           '<td>'+userRequest[item].BusPassType+'</td>'+							  
							  '<td>'+userRequest[item].DateOfTravel+'</td>'+
                           '<td>Active</td>'+
                           '<td>'+'<button class="btn">'/* +'<i class="fa fa-download"></i>' */+
							  '<button class="btn" onClick="deletePass(\''+passId+'\')">' +'<i class="fa fa-trash"></i>'+
							  '</button>'+
                         '</tr>';
                   
                    	addToCart(userRequest[item].BusPassType, userRequest[item].DateOfTravel, passId);
                    	$("#requestContainer").prepend(row);
          		}	
			}		

 		}
     $("#myTable").dataTable();  
	 });
   
     var cart = {"userRequest":[]};
     function addToCart(type, date, pass)
     {
     	   var p = {BusPassType: type, DateOfTravel: date, PassId:pass};
            cart.userRequest.push(p);
            document.cookie="userRequestCookie="+JSON.stringify(cart);
     }

     
     function deletePass(passId){
		cart = {"userRequest":[]};
		var myCookie = getCookie("userRequestCookie");		
   	if((myCookie != null) && (myCookie != ''))
   	{
   		var jsonObject = JSON.parse(myCookie);
   		console.log('jsonObject',jsonObject);
   		document.cookie="userRequestCookie="+JSON.stringify(cart);
     		var res = []; 
      		for(var i in jsonObject) 
          		{
				var userRequest = jsonObject[i]; 
				console.log("userRequest",userRequest);
				for(var item in userRequest) 
          		{
	          			console.log(passId);
	          			console.log(userRequest[item].PassId);
	           			if(passId !== userRequest[item].PassId){
	           				addToCart(userRequest[item].BusPassType, userRequest[item].DateOfTravel, userRequest[item].PassId);
	           				console.log("entered");
		           			}                   	                   
                    	
          		}	
			}		

 		}
		window.location.reload();
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
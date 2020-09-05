<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
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
    <!-- Favicon-->
    <!--<link rel="shortcut icon" href="img/favicon.ico">-->
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <body>
  <%
        Boolean autherized = (Boolean) session.getAttribute("isauthorized");
        autherized = autherized != null? autherized:false;
 		if(!autherized){
 		%>
 		<%@include file="accessdenied.jsp" %>
 		<%	
 		}else{
 		%>
  
  <%@page import="com.codingchallenge.bpms.list.admin.requesthistory.repository.AdminRequestHistoryRepository,com.codingchallenge.bpms.user.buspassapplicationform.repository.UserApplicationJDBC,java.util.*" %>
  <% 
AdminRequestHistoryRepository adfp=new AdminRequestHistoryRepository();
List<UserApplicationJDBC> list=adfp.selectAllUsers();
request.setAttribute("list",list);
%>
  
  
    <div class="page">
      <!-- Main Navbar-->
      <header class="header">
        <nav class="navbar">
          <!-- Search Box-->
          <div class="search-box">
            <button class="dismiss"><i class="icon-close"></i></button>
            <form id="searchForm" action="#" role="search">
              <input type="search" placeholder="What are you looking for..." class="form-control">
            </form>
          </div>
          <div class="container-fluid">
            <div class="navbar-holder d-flex align-items-center justify-content-between">
              <!-- Navbar Header-->
              <div class="navbar-header">
                <!-- Navbar Brand --><a href="mainPage.html" class="navbar-brand d-none d-sm-inline-block">
                  <div class="brand-text d-none d-lg-inline-block"><strong>B.P.M.S.</strong></div>
                  <div class="brand-text d-none d-sm-inline-block d-lg-none"><strong>B.P.M.S.</strong></div></a>
				  <!-- Toggle Button-->
				  <a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a></div>
				  <!-- Navbar Menu -->
              <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
				<!-- Logout    -->
                <li class="nav-item"><a href="LogoutServlet" class="nav-link logout"> <span class="d-none d-sm-inline">Logout</span><i class="fa fa-sign-out"></i></a></li>
              </ul>
             </div>
      </header>
      <div class="page-content d-flex align-items-stretch"> 
	  <!--Side Navbar -->
        <nav class="side-navbar">
		<div class="sidebar-header d-flex align-items-center">
			<a href="#"><img class="img-fluid" src="img/logo1.png" height= "50px" width= "150px" alt="site logo"></a>
		</div>
		<hr style="border:2px solid #212529;"/>
		<!-- Sidebar Navidation Menus <span class="heading">Main</span>-->
          <ul class="list-unstyled">
            <li><a href="createBusPass.jsp"> <i class="icon-home"></i>Home </a></li>
            <li><a href="admintable.jsp"> <i class="fa fa-history"></i>Request History </a></li>
            <li><a href="addBusPass.jsp"> <i class="fa fa-bus"></i>Add Bus Pass </a></li>
            <li><a href="editBusPass.jsp"> <i class="fa fa-pencil-square-o"></i>Edit Bus Pass </a></li>
      <div class="page-content d-flex align-items-stretch">   
        </nav>
        
        <div class="content-inner">
          <!-- Page Header-->
          <header class="page-header">
            <div class="container-fluid">
              <h2 class="no-margin-bottom">BUS PASS REQUESTS</h2>
            </div>
          </header>
          <!-- Breadcrumb-->
          <div class="breadcrumb-holder container-fluid">
            <ul class="breadcrumb">
              <li class="breadcrumb-item"><a href="createBusPass.html">Home</a></li>
              <li class="breadcrumb-item active">Request History</li>
            </ul>
          </div>
          <section class="tables">   
            <div class="container-fluid">
              <div class="row">
                <div class="col-lg-12
                  <div class="card">
                    <div class="card-close">
                    </div>
                    <div class="card-header d-flex align-items-center">
                      <h3 class="h4">REQUEST HISTORY</h3>
                    </div>
                    <div class="card-body">
                      <div class="table table-bordered">
                        <table class="table" id="myTable">
                          <thead>
                            <tr>
                              <th>#</th>
                              <th>Name of Passenger</th>
                              <th>Bus Pass Type</th>
							  <th>Bus Pass ID</th>
							  <th>Date</th>
                              <th>Approval Status</th>
                            </tr>
                          </thead>
                          <tbody>
                          <c:forEach items="${list}" var="u" varStatus="loop">
                            <tr>
                              <th scope="row">${loop.index+1 }</th>
                              <td>${u.getName()}</td>
                              <td>${u.getBusPassType() }</td>
							  <td>AZ- ${loop.index+1 }</td>
							  <td> ${u.getDateOfTravel() }</td>
                              <td>Approved</td>
                            </tr>
                            </c:forEach>
							
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
    <script>
     $(document).ready(function(){
	   $("#myTable").dataTable();
	 });
   
   </script>
    <!-- Main File-->
    <script src="js/front.js"></script>
    <%}%>
  </body>
</html>

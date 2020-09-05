<%@page import="com.codingchallenge.bpms.buspass.add.repository.AddBusPassJDBC"%>
<%@page import="com.codingchallenge.bpms.buspass.add.repository.AddBuspassFormRepository"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page import="com.codingchallenge.bpms.buspass.edit.repository.EditBuspassFormRepository,com.codingchallenge.bpms.buspass.edit.repository.EditBuspassJDBC, java.util.*" %>
<!doctype html>
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
    <!--<link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">-->
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="css/fontastic.css">
    <!-- Google fonts - Poppins -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/table.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
	<!--link rel="stylesheet" href="css/userchoice.css">-->
	
    <!-- Favicon-->
    <!--<link rel="shortcut icon" href="img/favicon.ico">-->
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
	
	</head>
	<body>
	<%
	EditBuspassFormRepository adfp=new EditBuspassFormRepository();
	List<EditBuspassJDBC> list=adfp.selectAllUsers();

	  AddBuspassFormRepository edfp=new AddBuspassFormRepository();
	  List<AddBusPassJDBC> list1=edfp.selectAllUsers();
	  request.setAttribute("list",list);
	  request.setAttribute("list1",list1);
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
                <!-- Navbar Brand --><a href="index.html" class="navbar-brand d-none d-sm-inline-block">
                  <div class="brand-text d-none d-lg-inline-block"><strong>B.P.M.S.</strong></div>
                  <div class="brand-text d-none d-sm-inline-block d-lg-none"><strong>B.P.M.S.</strong></div></a>
                <!-- Toggle Button--><a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
              </div>
            </div>
          </div>
        </nav>
	  </header>
	  <div class="page-content d-flex align-items-stretch"> 
        <!-- Side Navbar -->
        <nav class="side-navbar">
          <!-- Sidebar Header-->
          <div class="sidebar-header d-flex align-items-center">
            <!--<div class="avatar"><img src="img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle"></div>-->
            <!--<div class="title">
              <h1 class="h4">Mark Stephen</h1>
              <p>Web Designer</p>
            </div>-->
			<a href="#"><img class="img-fluid" src="img/logo1.png" height= "50px" width= "150px" alt="site logo"></a>
		  </div>
		  <hr style="border:2px solid #212529;"/>
          <!-- Sidebar Navidation Menus--><!--<span class="heading">Main</span>-->
          <ul class="list-unstyled">
            <li><a href="index.html"> <i class="icon-home"></i>Home </a></li>
			<li><a href="userchoice.jsp"> <i class="fa fa-book"></i>Book Your Pass </a></li>
            <li><a href="usertable.jsp"> <i class="fa fa-history"></i>View Booked Passes </a></li>            
            
        </nav>
        <div class="content-inner">
          <!-- Page Header-->
          <header class="page-header">
            <div class="container-fluid">
              <h2 class="no-margin-bottom">Book Your Pass</h2>
            </div>
          </header>
          <!-- Breadcrumb-->
          <div class="breadcrumb-holder container-fluid">
            <ul class="breadcrumb">
              <li class="breadcrumb-item"><a href="index.html">Home</a></li>
              <li class="breadcrumb-item active">Book Your Pass</li>
            </ul>
          </div>
       </header>
      </header>
	  <h2 class="h1 mt-4 ml-4">Bus Pass Choices</h2>
      <div class="page-content d-flex align-items-stretch">
     	<div class="container">
     		<c:forEach items="${list1}" var="u" varStatus="loop">
			<div class="box">
				<div class="imgBx">
					<img src="img/yearly-uc.png" height="200px" width="280px">
					<div class="content">
						<h1> ${u.getName() } Bus Pass</h1>
					</div>
				</div>
				<div class="content">
					<h2> ${u.getName() } Bus Pass</h2>
					<p>Price: Rs.${u.getPrice() }</p>
					<p>Validity:- ${u.getValidity() } day(s)</p>
					<p>Eligibilty:- ${u.getDescription() }</p>
					<a href="userapplicationform.jsp">Book Now</a>
				</div>
			</div>
			</c:forEach>
		</div>
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
	<!-- JavaScript files-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper.js/umd/popper.min.js"> </script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/jquery-validation/jquery.validate.min.js"></script>
    <script src="js/charts-home.js"></script>
    <!-- Main File-->
    <script src="js/front.js"></script>
	</body>
</html>
    
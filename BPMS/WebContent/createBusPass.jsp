<%@page import="com.codingchallenge.bpms.buspass.add.repository.AddBusPassJDBC"%>
<%@page import="com.codingchallenge.bpms.buspass.add.repository.AddBuspassFormRepository"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page import="com.codingchallenge.bpms.buspass.edit.repository.EditBuspassFormRepository,com.codingchallenge.bpms.buspass.edit.repository.EditBuspassJDBC, java.util.*" %>

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
    <link rel="stylesheet" href="css/createBusPass.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
   <!-- <link rel="shortcut icon" href="img/favicon.ico">-->
    <link rel="stylesheet" href="css/abhinavbutton.css">
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
          <div class="container-fluid">
            <div class="navbar-holder d-flex align-items-center justify-content-between">
              <!-- Navbar Header-->
              <div class="navbar-header">
                <!-- Navbar Brand --><a href="mainPage.html" class="navbar-brand d-none d-sm-inline-block">
                  <div class="brand-text d-none d-lg-inline-block"><span></span><strong>B.P.M.S.</strong></div>
                  <div class="brand-text d-none d-sm-inline-block d-lg-none"><strong>B.P.M.S.</strong></div></a>
                <!-- Toggle Button--><a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
              </div>
              <!-- Navbar Menu -->
              <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
                <!-- Logout    -->
                <li class="nav-item"><a href="LogoutServlet" class="nav-link logout"> <span class="d-none d-sm-inline">Logout</span><i class="fa fa-sign-out"></i></a></li>
              </ul>
            </div>
          </div>
        </nav>
      </header>
      <div class="page-content d-flex align-items-stretch"> 
        <!-- Side Navbar -->
        <nav class="side-navbar">
          <!-- Sidebar Header-->
          <div class="sidebar-header d-flex align-items-center">
		  <a href="#"><img class="img-fluid float-center" src="img/logo1.png" height= "50px" width= "150px" alt="site logo"></a>
		  
            <!--<div class="avatar"><img src="img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle"></div>-->
            <!--<div class="title">
              <h1 class="h4">Mark Stephen</h1>
              <p>Web Designer</p>
            </div>-->
          </div>
		  <hr style="border:2px solid #212529;"/>
          <!-- Sidebar Navidation Menus--><!--<span class="heading">Main</span>-->
          <ul class="list-unstyled">
            <li><a href="createBusPass.jsp"> <i class="icon-home"></i>Home </a></li>
            <li><a href="admintable.jsp"> <i class="fa fa-history"></i>Request History </a></li>
            <!--<li><a href="createBusPass.html"> <i class="fa fa-user-plus"></i>Existing Bus Pass </a></li>-->
            <li><a href="addBusPass.jsp"> <i class="fa fa-bus"></i>Add Bus Pass </a></li>
            <li><a href="editBusPass.jsp"> <i class="fa fa-pencil-square-o"></i>Edit Bus Pass </a></li>
        </nav>
        <div class="content-inner">
          <!-- Page Header-->
          <header class="page-header">
            <div class="container-fluid">
              <h2 class="no-margin-bottom">BUS PASSES</h2>
            </div>
          </header>
          <!-- Breadcrumb-->
          <div class="breadcrumb-holder container-fluid">
            <ul class="breadcrumb">
              <li class="breadcrumb-item"><a href="createBusPass.jsp">Home</a></li>
              <!--<li class="breadcrumb-item active">Bus Passes</li>-->
            </ul>
          </div>
          <!-- Forms Section-->
          <h3 class="h1 mt-4 ml-4">EXISTING BUS PASSES </h3> 
          <section class="forms"> 
            <div class="container-fluid">
              <div class="row">
                <!-- Basic Form-->
                <c:forEach items="${list1}" var="u" varStatus="loop">
                
                <div class="col-lg-3">
                  <div class="card">
                    <div class="card-close">
                      <!-- <div class="dropdown">
                        <button type="button" id="closeCard1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                        <div aria-labelledby="closeCard1" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                      </div> -->
                    </div>
                     
                    <div class="card-header d-flex align-items-center">
                      <h3> ${u.getName() } Bus Pass </h3>     
                      <img src="img/daily.png" height="50px" width="50px">
                      
                    </div>
                    
                
                
                
                	
                    <div class="card-body">
                    
                      <a href="editBusPass.jsp?id=${u.getbuspassId() } "><button class="btn btn-primary"> Edit </button></a>
                      <a href="deleteBusPass.jsp?id=${u.getbuspassId() } "><button class="btn btn-danger"> Delete </button></a>
                  
                    </div>
                    </div>
                    </div>
                    
                  
                
                
                </c:forEach>
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
    <%}%>
  </body>
</html>
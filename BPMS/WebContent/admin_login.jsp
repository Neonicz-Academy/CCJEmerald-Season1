<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>B.P.M.S.</title>
<link rel="shortcut icon" href="img/logo1.png">
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="robots" content="all,follow">
<!-- Bootstrap CSS-->
<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome CSS-->
<link rel="stylesheet"
	href="vendor/font-awesome/css/font-awesome.min.css">
<!-- Fontastic Custom icon font-->
<link rel="stylesheet" href="css/fontastic.css">
<!-- Google fonts - Poppins -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
<!-- theme stylesheet-->
<link rel="stylesheet" href="css/style.default.css"
	id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet" href="css/custom.css">
<!-- Favicon-->
<!--<link rel="shortcut icon" href="img/favicon.ico">-->
<!-- Tweaks for older IEs-->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body>
	<div class="page login-page">
		<div class="container d-flex align-items-center">
			<div class="form-holder has-shadow">
				<div class="row">
					<!-- Logo & Information Panel-->
					<div class="col-lg-6">
						<div class="info d-flex align-items-center">
							<div class="content">
								<div class="logo">
									<h1>Admin Login</h1>
								</div>
								<p>The Admin can Login to the B.P.M.S. through this portal.</p>
							</div>
						</div>
					</div>
					<!-- Form Panel    -->
					<div class="col-lg-6 bg-white">
						<div class="form d-flex align-items-center">
							<div class="content">
								<%-- <%
									if (null != request.getAttribute("errorMessage")) {
										out.println(request.getAttribute("errorMessage"));
									}
								%> --%>
								<%
							   	Boolean failed = (Boolean)request.getAttribute("failed");
								if(failed!=null && failed){
								%>
								<div class="alert alert-danger"> Invalid Username or Password.</div>
								<% 
								}
								%>
								<form method="post" class="form-validate" action="LoginServlet">
									<div class="form-group">
										<input id="login-username" type="text" name="username"
											required data-msg="Please enter your username"
											class="input-material"> <label for="login-username"
											class="label-material">Username</label>
									</div>
									<div class="form-group">
										<input id="login-password" type="password"
											name="password" required
											data-msg="Please enter your password" class="input-material">
										<label for="login-password" class="label-material">Password</label>
									</div>
									<!--  <a id="login" href="index.html" type="submit"
										class="btn btn-primary">Login</a>-->
									<input id="submit" type="Submit" value="Login" class="btn btn-primary"/>
										
									<!-- This should be submit button but I replaced it with <a> for demo purposes-->
								</form>
								<a href="#" class="forgot-pass"></a><br> <small>Do
									not have an account? </small><a href="register.jsp" class="signup">Signup</a><br>
								<br> <a href="index.html" class="signup">Back To Homepage</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="copyrights text-center">
			<p>
				Design by <a href="https://bootstrapious.com/p/admin-template"
					class="external">Team Emerald</a>Powered by <a
					href="http://www.neonicz.com/" class="external">Neonicz</a>
				<!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
			</p>
		</div>
	</div>
	<!-- JavaScript files-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/popper.js/umd/popper.min.js">
		
	</script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/jquery.cookie/jquery.cookie.js">
		
	</script>
	<script src="vendor/chart.js/Chart.min.js"></script>
	<script src="vendor/jquery-validation/jquery.validate.min.js"></script>
	<!-- Main File-->
	<script src="js/front.js"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
	<title>Blockchain</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">
	<link href="https://fonts.googleapis.com/css?family=Encode+Sans+Expanded:400,600,700" rel="stylesheet">
	<link href="plugin-frameworks/bootstrap.css" rel="stylesheet">
	<link href="fonts/ionicons.css" rel="stylesheet">
	<link href="common/styles.css" rel="stylesheet">
</head>
<body>
	<%
	if(request.getParameter("succ")!=null)
	{
	out.println("<script>alert('Congratulations....Login Successfull...!')</script>");	
	}
   %>
	<header>		
		<div class="container">
			<a class="logo" href="#"><jsp:include page="titlepage.jsp"></jsp:include></a>
			<a class="menu-nav-icon" data-menu="#main-menu" href="#"><i class="ion-navicon"></i></a>
			<ul class="main-menu" id="main-menu">
				<jsp:include page="adminmenu.jsp"></jsp:include>
			</ul>
			<div class="clearfix"></div>
		</div>
	</header>

	<section class="ptb-0">
	<div class="mb-30 brdr-ash-1 opacty-5"></div>
		<div class="container"><br><br><br>
		 <div class="row">
		  <div class="col-sm-12 col-md-8">
			<div class="row">
			<table align="center">
				<tr>
					<td><img src="img/admin.jpg" width="30" height="250">
				</tr>
				<tr>
					<td><span style="font-size:22px; color: red">Manufacturer Home Page</span></td>
				</tr>
				<tr>
					<!--  <td align="center">Home Page </td> -->
				</tr>
            </table>			
				</div>
				</div>
				
				<!-- <div class="col-sm-12 col-md-4">
					<img src="images/M2.jpg" alt="">
				</div> -->
			</div>
		</div>
	</section><br><br><br><br><br><br>
	
	<!--  <footer class="bg-191 color-ccc">
			<div class="brdr-ash-1 opacty-2"></div>
			<div class="oflow-hidden color-ash font-9 text-sm-center ptb-sm-5"><br>
			<p class="color-ash">
				Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved 
			</p><br>
			</div>
	</footer> -->
	<style type= "text/css">
	.foot{
	position: fixed;
	text-align: center;
	bottom: 0px;
	width: 100%;
	padding-top: 10px;
	height: 8%;
	color: white;
	background-color: black;
	}
	</style>
	<div class="foot"> &copy Copyright 2023 All rights reserved </div>
	<script src="plugin-frameworks/jquery-3.2.1.min.js"></script>	
	<script src="plugin-frameworks/tether.min.js"></script>	
	<script src="plugin-frameworks/bootstrap.js"></script>	
	<script src="common/scripts.js"></script>	
</body>
</html>
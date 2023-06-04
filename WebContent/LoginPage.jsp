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
	if(request.getParameter("logout")!=null)
	{
		session.invalidate();
		Thread.sleep(2000);
		out.println("<script>alert('Logout Successfully')</script>");
	}
	if(request.getParameter("Done")!=null)
	{
	out.println("<script>alert('Congratulations....Profle Added Successfully ...!')</script>");	
	}
	else if(request.getParameter("invalid")!=null)
	{
	out.println("<script>alert('Invalid Login Credential ...!')</script>");	
	}
	else if(request.getParameter("succ")!=null)
	{
	out.println("<script>alert('Congratulations....Register Successfuly...!')</script>");	
	}
   %>
	<header>		
		<div class="container">
			<a class="logo" href="#"><jsp:include page="titlepage.jsp"></jsp:include></a>
			<a class="menu-nav-icon" data-menu="#main-menu" href="#"><i class="ion-navicon"></i></a>
			<ul class="main-menu" id="main-menu"><li><a href="RegisterPage.jsp">REGISTER PAGE</a></li>
				<li><a href="LoginPage.jsp" class="current">LOGIN PAGE</a></li>
				
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
						<td><img src="img/admin.jpg" width="10" height="240">
					</tr>
					<tr>
						<!--  <td colspan="2"><b>Login</b></td> -->
					</tr>
            	</table>			
		
						<form class="post_section" action="AddLogin" method="post">
							<table align="center" border="0"  cellpadding="5" cellspacing="5">
								<tr>
									<td colspan="2"><div class="cleaner" style="height: 20%">&nbsp;&nbsp;&nbsp;&nbsp;</div></td>
								</tr>
								<tr>
									<td><b>Select Roll:</b></td>
									<td><select style="width: 100%; height: 30px"
										id="username" name="roll" required="required">
											<option selected="selected">Select Roll</option>
											<option value="Admin">Manufacturer</option>
											<option value="Distribute">Distributor</option>
											<option value="User">User</option>
											</select></td>
								</tr>
								<tr>
									<td><b>Email_ID:</b></td>
									<td><input type="text" name="email" placeholder="mymail@mail.com" required /></td>
								</tr>
								<tr>
									<td><b>Password</b></td>
									<td><input type="password" name="password" placeholder="eg. X8df!90EO" required /></td>
								</tr>
								<tr>
							     	<td colspan="1" align="center"><input class="input-rounded-button" type="submit" value="Login" style="height: 30px;width: 80px;"/></td>
							    	
				    			</tr>
							</table>
						</form>	
					</div>
				</div>
				
				<!-- <div class="col-sm-12 col-md-4">
					<img src="images/M3.jpg" alt="">
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
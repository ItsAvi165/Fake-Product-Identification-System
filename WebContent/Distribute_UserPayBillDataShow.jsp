<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> 
<%@ page import="java.sql.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.user.*"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
	<title>BlockChain</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">
	<link href="https://fonts.googleapis.com/css?family=Encode+Sans+Expanded:400,600,700" rel="stylesheet">
	<link href="plugin-frameworks/bootstrap.css" rel="stylesheet">
	<link href="fonts/ionicons.css" rel="stylesheet">
	<link href="common/styles.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="demo.css" />
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
    	$('#examples').DataTable( {
        "pagingType": "full_numbers"
	    } );
	} );
</script>
</head>
<body>
	<%
	if(request.getParameter("Update")!=null)
	{
	out.println("<script>alert('Status Update Successfully...!')</script>");	
	}
	else if(request.getParameter("stock")!=null)
	{
	out.println("<script>alert('Required Quantity not available')</script>");	
	}
   %>
	<header>		
		<div class="container">
			<a class="logo" href="#"><jsp:include page="titlepage.jsp"></jsp:include></a>
			<a class="menu-nav-icon" data-menu="#main-menu" href="#"><i class="ion-navicon"></i></a>
			<ul class="main-menu" id="main-menu">
				<jsp:include page="distmenu.jsp"></jsp:include>
			</ul>
			<div class="clearfix"></div>
		</div>
	</header>

	<section class="ptb-0">
	<div class="mb-30 brdr-ash-1 opacty-5"></div>
		<div class="container" >
		<h3 align="center"><b>View Information:</b></h3>
		 <div >
		  <div  >
			<div >
			
				<div  ><br>
				
				<table align="center" style="width: 100%;" class="displays" border="1" cellpadding="10" cellspacing="10"> 	
			<tr>
			
		
			<td><b>User_Email_ID</b></td>
			<td><b>ProductName:</b></td>
			<td><b>CompanyName</b></td>
			<td><b>Quantity</b></td>
			<td><b>Price</b></td>
			<td><b>Pay Amount</b></td>
			<td><b>User_Mobile_No</b></td>
			
			</tr>
			<%
					  try{
						  int i=1;
						  String query="select * from user_product_info_bill";
						  Connection conn=DBconn.conn();
						  Statement stmt=conn.createStatement();
						  ResultSet rs=stmt.executeQuery(query);
					    	while(rs.next()){
					    	{
			%>
			
				
				
						
				<tr>
					
				
					<td><%=rs.getString(11) %></td> 
					<td><%=rs.getString(2) %></td>
					<td><%=rs.getString(3) %></td>
					<td><%=rs.getString(8) %></td>
					<td><%=rs.getString(6) %></td>
					<td><%=rs.getString(10) %></td>
<td><%=rs.getString(12) %></td>					
				
					</tr>	   
				<%}
					i++;	
				} %>
				<% 
					}
					catch (Exception e) {
					 e.printStackTrace();
				}%>	           
    			</table>
				</div>
			</div>
		</div>
			</div>
				</div>
	</section><br><br><br><br><br><br>
	
	<!-- <footer class="bg-191 color-ccc">
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
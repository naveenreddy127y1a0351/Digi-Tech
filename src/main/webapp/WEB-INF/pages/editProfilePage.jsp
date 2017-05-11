<%@ page language="java" contentType="text/html; charset=ISO-8859-1"   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="links.jsp" %>
</head>
<body>
<%@ include file="usernavbar.jsp" %>
<br><br><br><br>

<div class="container" style="background-color:blue; opacity:0.4; color:yellow">
 
	<form:form  class="form-horizontal" commandName="userObject" method="POST" action="reqEditPrfileToDb">

<form:hidden path="userid"/>  


	<div class="form-group"> <label for="password">User Name : </label>	<form:input path="username" style="background-color:transparent;font-weight:bold"/> </div>

	
	<div class="form-group"> <label for="password">Enter password  : </label> <form:input path="password" style="background-color:transparent;font-weight:bold"/> </div>

	
	<div class="form-group"> <label for="mobileno">Enter  Mobile no.   : </label>	<form:input path="mobileno" style="background-color:transparent;font-weight:bold"/> </div>

	
	<div class="form-group"> <label for="emailid">Enter  Email Id.   : </label>	 <form:input path="emailid" style="background-color:transparent;font-weight:bold"/> </div>

	
	<div class="form-group"><label for="address">Enter Address  : </label>	 <form:input path="address" style="background-color:transparent;font-weight:bold"/> </div>

		
	<div class="form-group"> <label for="city">Enter City  : </label> <form:input path="city" style="background-color:transparent;font-weight:bold"/> </div>

	
	<div class="form-group"><label for="state">Enter State  : </label>	 <form:input path="state" style="background-color:transparent;font-weight:bold"/> </div>

	
<br> <form:button class="btn btn-primary active">Edit profile</form:button>

</form:form>


  
</div>
</body>
</html>
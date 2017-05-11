<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="links.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container">
   
    <ul class="nav navbar-nav">
      <li><a href="home">Home</a></li>  
      <li><a href="#">About Us</a></li>
      <li><a href="#">Contact Us</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li class="active"><a href="reqForSignupPage"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="reqForLoginPage"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
Signup page

<div class="container-wrapper" style="background-color:blue; opacity:0.4; color:white">
  <div class="container">
	<form:form  class="form-horizontal" commandName="userObject" method="POST" action="retSendSignupData">



    <div class="form-group" >
      <label class="control-label col-sm-2" for="username">User Name </label>
      <div class="col-sm-6">
        <form:input path="username" class="form-control" placeholder="Enter User Name"/>
      </div>
    </div>

<%-- 	<label for="username">Enter user name : </label>	
	<div class="form-group"> <form:input path="username"/> </div>
 --%>

	<label for="password">Enter password  : </label>	
	<div class="form-group"> <form:input path="password" style="background-color:transparent"/> </div>

	<label for="mobileno">Enter  Mobile no.   : </label>	
	<div class="form-group"> <form:input path="mobileno"/> </div>

	<label for="emailid">Enter  Email Id.   : </label>	
	<div class="form-group"> <form:input path="emailid"/> </div>

	<label for="address">Enter Address  : </label>	
	<div class="form-group"> <form:input path="address"/> </div>

	<label for="city">Enter City  : </label>	
	<div class="form-group"> <form:input path="city"/> </div>

	<label for="state">Enter State  : </label>	
	<div class="form-group"> <form:input path="state"/> </div>

	
<br> <form:button class="btn btn-primary active">SignUp</form:button>

</form:form>


  </div>
</div>

</body>
</html>











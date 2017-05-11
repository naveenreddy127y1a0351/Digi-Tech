<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ include file="links.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>

body { 
    background-size: contain;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
    background-size: 100% 100%;    
}

</style>
</head>
<body background="resources/images/backgrounds/background${imagenum}.jpg">

<%@ include file="adminnavbar.jsp" %>
<!-- <nav class="navbar navbar-inverse">
  <div class="container">
   
    <ul class="nav navbar-nav">

      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Welcome Admin..<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="#">Edit Profile</a></li>
          <li><a href="#">Change Password</a></li>
          <li><a href="home">Logout</a></li>
        </ul>
      </li>  
     
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Products<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="reqDisplayProdcutsAdmin">Display All products</a></li>
          <li><a href="reqProductForm">Add Product</a></li>          
        </ul>
      </li>  
     
     <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Suppliers<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="#">Display All suppliers</a></li>
          <li><a href="reqAddSupplierForm">Add Supplier</a></li>          
        </ul>
      </li>  
     
          <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">ProductSupplier<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="#">Display All ProductSuppliers</a></li>
          <li><a href="#">Add ProductSupplier</a></li>          
        </ul>
      </li>  
     
     
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="reqForSignupPage">About Us</a></li>
      <li><a href="reqForLoginPage">  Contact Us</a></li>
    </ul>
  </div>
</nav>
 -->
 <br><br><br><br><br>
<form:form action="reqAddSupplierToDb" commandName="supplierObject">

Supplier name : <form:input path="suppliername"/>
<br>
Supplier Description : <form:input path="supplierdesc" />
<br>
Supplier available 
True <form:radiobutton path="issupplieravailable" value="true"/>
False <form:radiobutton path="issupplieravailable" value="false"/>

<br>

<form:button>Add Supplier</form:button>



</form:form>

</body>
</html>
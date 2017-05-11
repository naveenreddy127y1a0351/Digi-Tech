<html>
<head>
<%@ include file="links.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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
          <li><a href="#">Add Supplier</a></li>          
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
</nav> -->
<!-- 
<br><br><br><br><br> -->
<div class="container" style="margin-top:10">
Add product
<form:form action="addProductToDB" commandName="productObject" enctype="multipart/form-data" method="POST">

<br>Product Name : <form:input path="productname"/>

<br>Product Desc : <form:input path="productdesc"/>

<br>
Is Available  :   
True <form:radiobutton path="isproductavailable" value="true" />         
False<form:radiobutton path="isproductavailable" value="false" />

<br>
Select Image : <form:input type="file" path="imagefile"/>
<br>
<form:button>Add Product</form:button>


</form:form>
</div>
</body>
</html>
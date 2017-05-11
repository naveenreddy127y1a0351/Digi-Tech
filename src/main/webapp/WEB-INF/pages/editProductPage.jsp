<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> 
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
<br><br><br><br><br>
Edit product
<form:form action="reqEditProductToDb" commandName="productObj" enctype="multipart/form-data" method="POST">

<br>Product ID : <form:hidden path="productid"/>

<br>Product Name : <form:input path="productname"/>

<br>Product Desc : <form:input path="productdesc"/>

<br>
Is Available  :   
True <form:radiobutton path="isproductavailable" value="true" />         
False<form:radiobutton path="isproductavailable" value="false" />

<br>
Select Image : <form:input type="file" path="imagefile"/>
<br>
<form:button>Edit Product</form:button>


</form:form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="links.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>


body { 
    background-size: contain;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
    background-size: 100% 100%;  
   
   
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="resources/images/backgrounds/background${imagenum}.jpg">
<%@ include file="adminnavbar.jsp" %>
<br><br><br><br>
<form:form commandName="prodsuppObject" action="reqAddProdSuppDataToDb">

Products 
<form:select path="productid">
<c:forEach var="prd" items="${products}">
<option value="${prd.productid}"> ${prd.productname}</option>
</c:forEach>
</form:select>

Supplier 
<form:select path="supplierid">
<c:forEach var="sup" items="${suppliers}">
<option value="${sup.supplierid}"> ${sup.suppliername}</option>
</c:forEach>
</form:select>
<br>
Price <form:input path="productsupplierprice"/>
Stock <form:input path="productsupplierstock"/>

IsAvailable   True <form:radiobutton path="isproductsupplieravailable" value="true"/>
True <form:radiobutton path="isproductsupplieravailable" value="false"/>
<br>
<form:button>
Add Record</form:button>
</form:form>

</body>
</html>
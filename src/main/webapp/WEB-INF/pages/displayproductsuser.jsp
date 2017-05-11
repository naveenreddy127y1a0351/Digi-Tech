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


<%@ include file="style1.jsp" %>
</style>
</head>
<c:url value="/resources/images/backgrounds/background${imagenum}.jpg" var="img"></c:url>
<body background="${img}">
<%@ include file="usernavbar.jsp" %>
<br><br><br>
<%-- ${psdata} --%>


   <c:if test="${cartmessage!=null}">
    <div class="container">
    <br><br>
    <div col-sm-3></div>
    <div col-sm-6>
     <div class="alert alert-danger alert-dismissable fade in">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
    ${cartmessage}
    </div>
  </div>
  </div>
  </c:if>




<div class="container-fluid">
<div class="row">

<c:forEach var="ps" items="${psdata}">
<div class="col-sm-2 zoom-effect-container" style="background-color:transparent; border-style:none; left-padding:5px;bottom-padding:20px">
		<div  class="thumbnail image-card" style="height: 370px;background-color:transparent;border:3px solid green;  padding:5px; border-style: none; text-align:center; font-size:20px; font-style:bold">
		<c:url value="/resources/images/products/${ps.productid}.jpg" var="img"></c:url> 
		 <img id="boxshadow" src="${img}" style="width:220px; height:200px;border-radius:15px;" class="img-rounded"/>
		 <b><br>Name : ${ps.productname} 
		 <br>Supplier : ${ps.suppliername}
		 <br>Price : Rs. ${ps.productsupplierprice}/-
		 </b>
		  <c:if test="${ps.productsupplierstock >= 8}">
		 		<b><br>Stock : ${ps.productsupplierstock}</b>
		  </c:if>  
		   <c:if test="${ps.productsupplierstock < 8}">
		 		<b style="color:red"><br>Out of stock</b>
		  </c:if>  
		   <br> 
		  <c:url value="/reqAllSuppProducts?pid=${ps.productid}" var="abcd"></c:url>
		 <a href="${abcd}">All Suppliers</a>
		   <c:if test="${ps.productsupplierstock >= 8}">
		   
		<c:url value="/reqAddItemToCart/${ps.psid}" var="url"></c:url>
		 <form action="${url}">
		  <select name="qty" id="qty"  style="color:red">
      	<option value="1" style="color:red">1</option>
      	<option value="2" style="color:red">2</option>
      	<option value="3" style="color:red">3</option>
      	<option value="4" style="color:red">4</option>
      	<option value="5" style="color:red">5</option>
      		
      	</select>
		<button type="submit" class="btn btn-warning btn-large" ng-click="addItemToCart()"> 
         <span class="glyphicon glyphicon-shopping-cart"></span>Add to cart
         </button>  
		  </form>
		  
		 </c:if>
		 	
		</div>
		
		</div>
		
</c:forEach>

</div> <!--  row closing -->

</div> <!--  container closing -->
</body>
</html>
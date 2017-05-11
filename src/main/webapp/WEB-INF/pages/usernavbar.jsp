
<nav class="container navbar navbar-inverse  navbar-fixed-top" style="opacity:0.7">
  <div class="container">
   
    <ul class="nav navbar-nav">

      <li class="dropdown">
     
      <a class="dropdown-toggle" data-toggle="dropdown" href="#">
      <c:url value="/resources/images/users/${loginuserid}.jpg" var="img"></c:url> 
       <img src="${img}" height="50" width="60" class="img-circle"/> Welcome ${loginusername}<span class="caret"></span></a>
	     <ul class="dropdown-menu">
	     <c:url value="/reqEditProfilePage?uid=${loginuserid}" var="url"></c:url>
          <li><a href="${url}">Edit Profile</a></li>
          <li><a href="#">Change Password</a></li>
          <c:url value="/j_spring_security_logout" var="url"></c:url>
          <li><a href="${url}">Logout</a></li>
          
        </ul>
      </li>  
     
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Products<span class="caret"></span></a>
	     <ul class="dropdown-menu">
	      <c:url value="/reqDisplayProductsUser" var="url"></c:url>
          <li><a href="${url}">Display All products</a></li>
          <li><a href="#">Display wishlist</a></li>          
        </ul>
      </li>  
     
     
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Orders<span class="caret"></span></a>
	     <ul class="dropdown-menu">
	     <c:url value="/reqDisplayOrderHistory?uid=${loginuserid}" var="url"></c:url>
          <li><a href="${url}">Order History</a></li>
          </ul>
          </li>
     
       
    	 <c:url value="/reqDisplayCart" var="url"></c:url>
        <li><a href="${url}"> <span class="glyphicon glyphicon-shopping-cart"></span>${cartsize}</a></li>
     
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#">About Us</a></li>
      <li><a href="#">Contact Us</a></li>
    </ul>
  </div>
</nav>

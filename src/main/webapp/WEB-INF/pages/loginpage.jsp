<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="links.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="links.jsp" %>
<title>Insert title here</title>
 <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      margin: auto;
      height: 700px;
  }
 .carousel-control.left, .carousel-control.right {
  background-image: none; opacity:0.2;
}
.carouser{
	margin:10;
}
.navbar {
    margin-bottom: 10;
    
}

  </style>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" >
  <div class="container">
   
    <ul class="nav navbar-nav">
      <li><a href="home">Home</a></li>  
      <li><a href="#">About Us</a></li>
      <li><a href="#">Contact Us</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="reqForSignupPage"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li class="active"><a href="reqForLoginPage"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>

<br>

<div class="container-fluid">
	<div class="row">
		<div class="col-sm-8" style="background: rgba(76, 175, 80, 0.8)">

<!--   coraousel starts -->



<!-- <div class="container"> -->
  
  <div id="myCarousel" class="carousel slide" data-ride="carousel" style="top-padding:5">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="resources/images/products/carousel/img1.jpg" alt="Chania">
        <div class="carousel-caption">
          <h3>Chania</h3>
          <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
        </div>
      </div>

      <div class="item">
        <img src="resources/images/products/carousel/img2.jpg" alt="Chania" width="460" height="340">
        <div class="carousel-caption">
          <h3>Chania</h3>
          <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
        </div>
      </div>
    
      <div class="item">
        <img src="resources/images/products/carousel/img3.jpg" alt="Flower" width="460" height="340">
        <div class="carousel-caption">
          <h3>Flowers</h3>
          <p>Beatiful flowers in Kolymbari, Crete.</p>
        </div>
      </div>

      <div class="item">
        <img src="resources/images/products/carousel/img4.jpg" alt="Flower" width="460" height="340">
        <div class="carousel-caption">
          <h3>Flowers</h3>
          <p>Beatiful flowers in Kolymbari, Crete.</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  </div>
  <!--   coraousel endss -->
  
  <!--   logins starts -->
  
  <div class="col-sm-4" style="background: rgba(76, 175, 80, 0.8); height=700px">
  

Login page
<br>
${message}
<br>
<form:form commandName="userObject" action="reqLoginCheck">
Enter User ID <form:input path="userid"/>
<br>
Enter password <form:password path="password"/>
<br>
<form:button>Login</form:button>

</form:form>



 </div>
 
  <!--   login ends -->
 
</div> <!--   row endss -->
</div> <!--   container endss -->









</body>
</html>
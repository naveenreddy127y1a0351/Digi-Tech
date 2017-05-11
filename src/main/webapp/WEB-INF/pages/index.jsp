<html>
<head>
 <link rel="stylesheet" href="http://getbootstrap.com.vn/examples/equal-height-columns/equal-height-columns.css" />
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@ include file="links.jsp" %>

 <style>
body { 
    background-size: contain;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
    background-size: 100% 100%;  
    background-opacity:0.5;
   
}
video#bgvid { 
    position: fixed;
    top: 50%;
    left: 50%;
    min-width: 100%;
    min-height: 100%;
    width: auto;
    height: auto;
    z-index: -100;
    -ms-transform: translateX(-50%) translateY(-50%);
    -moz-transform: translateX(-50%) translateY(-50%);
    -webkit-transform: translateX(-50%) translateY(-50%);
    transform: translateX(-50%) translateY(-50%);
    background: url(clothing.jpg) no-repeat;
    background-size: cover; 
    opacity:1.0;
}
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      margin: 0;
      height: 700px;
  }
 .carousel-control.left, .carousel-control.right {
  background-image: none; opacity:0.2;
}
.carousel{
	margin-top:0;
}
.navbar {
    margin-bottom: 20;
    
}

  </style>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top" style="opacity:0.7;bottom-padding:25">
  <div class="container">
   
   <button class="navbar-toggle" data-toggle="collapse" data-target=".navHeaderCollapse">
   
   abcd
   </button>
   <div class="collapse navbar-collapse .navHeaderCollapse">
    <ul class="nav navbar-nav" style="opacity:1;font-weight:bold">
      <li class="active"><a style="color:yellow;" href="home">Home</a></li>  
      <li><a href="#" style="color:yellow;" >About Us</a></li>
      <li><a href="#" style="color:yellow;">Contact Us</a></li>
       <!-- <li><a href="reqspringloginpage" style="color:yellow;">Spring Login</a></li> -->
    </ul>
    <ul class="nav navbar-nav navbar-right">
     <!--  <li><a href="reqForSignupPage"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li> -->
      
        <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModalSignUp" style="color:yellow;background-color:transparent;border:0px;">
        <span class="glyphicon glyphicon-user"></span>   SignUp</button>
        
    <!--   <li><a href="reqForLoginPage"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> -->
        <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModalLogin" style="color:yellow;background-color:transparent;border:0px;margin-right:10">
        <span class="glyphicon glyphicon-log-in"></span>   Login     </button>
        
        
        
       

        
        
        
        
        
        
        
        
      
    </ul>
    </div>
  </div>
</nav>
<br><br>

  <!-- Modal starts - Normal Login -->
<%--   <div class="modal fade" id="myModalLogin" role="dialog" >
  <br><br><br>
    <div class="modal-dialog">
    

    
      <!-- Modal content-->
      <div class="modal-content" style="background:rgba(90,90,30,0.2)">
      
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style="color:yellow">Login Form</h4>
        </div>
        <div class="modal-body" style="align:center;background:rgba(90,90,30,0.6)">  
          
         	
			<br>
			<form:form commandName="userObject" action="reqLoginCheck">
			
			      <div class="col-sm-3" style="background-color:transparent;color:yellow; vertical-align:baseline">User ID </div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="userid" class="form-control" placeholder="Enter User Id" style="background-color:transparent;color:yellow"/>
				  </div>
			
			      <div class="col-sm-3" style="background-color:transparent;color:yellow">Password </div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:password path="password" class="form-control" placeholder="Enter Password" style="background-color:transparent;color:yellow"/>
				  </div>			
			
			<br>
			<form:button>Login</form:button>
          </form:form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
    --%>
 <!-- Modal ends - NormalLogin -->
 
 
 
 <!-- Modal starts - Spring security Login -->
  <div class="modal fade" id="myModalLogin" role="dialog" >
  <br><br><br>
    <div class="modal-dialog">
    

    
      <!-- Modal content-->
      <div class="modal-content" style="background:rgba(90,90,30,0.2)">
      
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style="color:yellow">Login Form</h4>
        </div>
        <div class="modal-body" style="align:center;background:rgba(90,90,30,0.6)">  
          
         	
			<br>
			<form  name="loginForm" action="<c:url value="/j_spring_security_check"></c:url>" method="POST">
			
			      <div class="col-sm-3" style="background-color:transparent;color:yellow; vertical-align:baseline">User ID </div>
			      <div class="col-sm-8" style="background-color:transparent">
			      <input type="text" name ="j_username" class="form-control" placeholder="Enter User Id" style="background-color:transparent;color:yellow"/>
				       <%-- <form:input path="userid" class="form-control" placeholder="Enter User Id" style="background-color:transparent;color:yellow"/> --%>
				  </div>
			
			      <div class="col-sm-3" style="background-color:transparent;color:yellow">Password </div>
			      <div class="col-sm-8" style="background-color:transparent">
			       <input type="password" name ="j_password" class="form-control" placeholder="Enter User Id" style="background-color:transparent;color:yellow"/>
				      <%--  <form:password path="password" class="form-control" placeholder="Enter Password" style="background-color:transparent;color:yellow"/> --%>
				  </div>			
			
			<br>
			<input type="submit" value="Login" />
         </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
   
 <!-- Modal ends - Spring securityLogin -->
 
 
  <!-- Modal starts - SignUp -->
  <div class="modal fade" id="myModalSignUp" role="dialog" >
  <br><br><br>
    <div class="modal-dialog">
        
      <!-- Modal content-->
      <div class="modal-content" style="background:rgba(90,90,30,0.2)">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" style="color:yellow">&times;</button>
          <h4 class="modal-title" style="color:yellow">SignUp Form</h4>
        </div>
        <div class="modal-body" style="align:center;background:rgba(90,90,30,0.6)">  
        
        	<form:form  class="form-horizontal" commandName="customerObject" method="POST" action="reqSendSignupDataToDB" encType="multipart/form-data">

			   
			      <div class="col-sm-3" style="background-color:transparent;color:yellow; vertical-align:baseline">Customer Name </div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="custname" class="form-control" placeholder="Enter Customer Name" style="background-color:transparent;color:yellow"/>
				  </div>
			
			      <div class="col-sm-3" style="background-color:transparent;color:yellow">Email ID </div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="custemailid" class="form-control" placeholder="Enter Email ID" style="background-color:transparent;color:yellow"/>
				  </div>		
				
			      <div class="col-sm-3" style="background-color:transparent;color:yellow">Mobile No. </div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="custmobileno" class="form-control" placeholder="Enter Mobile No." style="background-color:transparent;color:yellow"/>
				  </div>		
				
			      			
					<br> Authentication details <br>
			      <div class="col-sm-3" style="background-color:transparent;color:yellow">Password</div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:password path="userDetails1.password" class="form-control" placeholder="Enter Password" style="background-color:transparent;color:yellow"/>
				  </div>	
				  	
				  	 <div class="col-sm-3" style="background-color:transparent;color:yellow">Image</div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input type="file" path="userDetails1.imagefile" class="form-control" style="background-color:transparent;color:yellow"/>
				  </div>		
				  			
				  			
				  			
						<br> Address <br>
			      <div class="col-sm-3" style="background-color:transparent;color:yellow">Hose No.</div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="shippingAddress.houseno" class="form-control" placeholder="Enter House No." style="background-color:transparent;color:yellow"/>
				  </div>				
			
			  		 <div class="col-sm-3" style="background-color:transparent;color:yellow">Street</div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="shippingAddress.street" class="form-control" placeholder="Enter Street" style="background-color:transparent;color:yellow"/>
				  </div>	
				  
			      <div class="col-sm-3" style="background-color:transparent;color:yellow">Area</div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="shippingAddress.area" class="form-control" placeholder="Enter Area" style="background-color:transparent;color:yellow"/>
				  </div>				
		
		     	<div class="col-sm-3" style="background-color:transparent;color:yellow">City</div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="shippingAddress.city" class="form-control" placeholder="Enter City" style="background-color:transparent;color:yellow"/>
				  </div>
				  
		     	<div class="col-sm-3" style="background-color:transparent;color:yellow">State</div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="shippingAddress.state" class="form-control" placeholder="Enter State" style="background-color:transparent;color:yellow"/>
				  </div>
				  
	     		<div class="col-sm-3" style="background-color:transparent;color:yellow">Country</div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="shippingAddress.country" class="form-control" placeholder="Enter Country" style="background-color:transparent;color:yellow"/>
				  </div>		
			
	     		<div class="col-sm-3" style="background-color:transparent;color:yellow">Pincode</div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="shippingAddress.pincode" class="form-control" placeholder="Enter Pincode" style="background-color:transparent;color:yellow"/>
				  </div>
				  
		
				<br> 
				<form:button class="btn btn-primary active">SignUp</form:button>
	
			</form:form>        
     
          </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal" style="color:blue">Close</button>
        </div>
      </div>
      
    </div>
  </div>
   
 <!-- Modal ends - SignUp -->
         
    <c:if test="${message==1}">
    <div class="container">
    <br><br>
    <div col-sm-3></div>
    <div col-sm-6>
     <div class="alert alert-danger alert-dismissable fade in">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
    ${message1}
    </div>
  </div>
  </div>
  </c:if>     
 
  
    <c:if test="${message==0}">
    <div class="container">
    <br><br>
    <div col-sm-3></div>
    <div col-sm-6>
     <div class="alert alert-danger alert-dismissable fade in">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
    <strong>Error!</strong>       Login failed...Try again..
    </div>
  </div>
  </div>
  </c:if>
  
  
  <video autoplay loop muted poster="resources/videos/default.jpg" id="bgvid">
    <source src="resources/videos/background2.webm" type="video/webm">
    </video>
  
<!-- <div class="container">  carousel
	<div class="row">
		<div class="col-sm-12" style="background: rgba(76, 175, 80, 0.8)">
		<div class="col-sm-12" >
  coraousel starts



<div class="container">
  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    Indicators
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    Wrapper for slides
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="resources/images/products/carousel/img1.jpg" alt="Chania">
        <div class="carousel-caption">
          <h3>Chania</h3>
          <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
        </div>
      </div>

      <div class="item">
        <img src="resources/images/products/carousel/img2.jpg" alt="Chania">
        <div class="carousel-caption">
          <h3>Chania</h3>
          <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
        </div>
      </div>
    
      <div class="item">
        <img src="resources/images/products/carousel/img3.jpg" alt="Flower">
        <div class="carousel-caption">
          <h3>Flowers</h3>
          <p>Beatiful flowers in Kolymbari, Crete.</p>
        </div>
      </div>

      <div class="item">
        <img src="resources/images/products/carousel/img4.jpg" alt="Flower">
        <div class="carousel-caption">
          <h3>Flowers</h3>
          <p>Beatiful flowers in Kolymbari, Crete.</p>
        </div>
      </div>
  
    </div>

    Left and right controls
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true" ></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  </div>
  
  
</div>

  coraousel endss

</div>   row endss
</div>   container endss

 -->





<!--  thumbnails  started -->
<!-- 



<div class="container-fluid">
<div class="row" >

	<div class="col-sm-2" style="background-color:transparent; border-style:none; left-padding:5px;">
		<div class="thumbnail" style="border:3px solid green; border-radius:8px; padding:5px; border-style: double;"> 
		 <img src="resources/images/products/thumbnail/PRD00001.jpg" style="width:220px; height:200px;"/>
		 <br>
		 Teddy bear
		
		</div>
		</div>
	
	<div class="col-sm-2" style="background-color:white; border-style:none; left-padding:5px">
		<div class="thumbnail" style="border:3px solid green; border-radius:8px; padding:5px; border-style: double">
		 <img src="resources/images/products/thumbnail/PRD00002.jpg" style="width:220px; height:200px;"/>
		 <br>
		 Snake and lader
		
		</div>
		</div>
	
	<div class="col-sm-2" style="background-color:white; border-style:none; left-padding:5px">
		<div class="thumbnail" style="border:3px solid green; border-radius:8px; padding:5px; border-style: double">
		 <img src="resources/images/products/thumbnail/PRD00003.jpg" style="width:220px; height:200px;"/>
		
		</div>
		</div>
		
		
	<div class="col-sm-2" style="background-color:white; border-style:none; left-padding:5px">
		<div class="thumbnail" style="border:3px solid green; border-radius:8px; padding:5px; border-style: double">
		 <img src="resources/images/products/thumbnail/PRD00004.jpg" style="width:220px; height:200px;"/>
		
		</div>
		</div>
		
	<div class="col-sm-2" style="background-color:white; border-style:none; left-padding:5px">
		<div class="thumbnail" style="border:3px solid green; border-radius:8px; padding:5px; border-style: double">
		 <img src="resources/images/products/thumbnail/PRD00005.jpg" style="width:220px; height:200px;"/>
		
		</div>
		</div>
		
		
	<div class="col-sm-2" style="background-color:white; border-style:none; left-padding:5px">
		<div class="thumbnail" style="border:3px solid green; border-radius:8px; padding:5px; border-style: double">
		 <img src="resources/images/products/thumbnail/PRD00006.jpg" style="width:220px; height:200px;"/>
		
		</div>
			
	
	
	</div>




</div> 
</div>


 -->
<!--  thumbnails  ended -->
<nav class="container navbar navbar-inverse navbar-fixed-top" style="opacity:0.7;bottom-padding:25">
  <div class="container">
   
    <ul class="nav navbar-nav" style="opacity:1;font-weight:bold">
      <li class="active"><a style="color:yellow;" href="home">Home</a></li>  
      <li><a href="#" style="color:yellow;" >About Us</a></li>
      <li><a href="#" style="color:yellow;">Contact Us</a></li>
       <li><a href="reqspringloginpage" style="color:yellow;">Spring Login</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
     <!--  <li><a href="reqForSignupPage"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li> -->
      
        <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModalSignUp" style="color:yellow;background-color:transparent;border:0px;">
        <span class="glyphicon glyphicon-user"></span>   SignUp</button>
        
    <!--   <li><a href="reqForLoginPage"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> -->
        <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModalLogin" style="color:yellow;background-color:transparent;border:0px;margin-right:10">
        <span class="glyphicon glyphicon-log-in"></span>   Login     </button>
        
        
        
       

        
        
        
        
        
        
        
        
      
    </ul>
  </div>
</nav>
<br><br>

  <!-- Modal starts - Login -->
  <div class="modal fade" id="myModalLogin" role="dialog" >
  <br><br><br>
    <div class="modal-dialog">
    

    
      <!-- Modal content-->
      <div class="modal-content" style="background:rgba(90,90,30,0.2)">
      
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style="color:yellow">Login Form</h4>
        </div>
        <div class="modal-body" style="align:center;background:rgba(90,90,30,0.6)">  
          
         	
			<br>
			<form:form commandName="userObject" action="reqLoginCheck">
			
			      <div class="col-sm-3" style="background-color:transparent;color:yellow; vertical-align:baseline">User ID </div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="userid" class="form-control" placeholder="Enter User Id" style="background-color:transparent;color:yellow"/>
				  </div>
			
			      <div class="col-sm-3" style="background-color:transparent;color:yellow">Password </div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:password path="password" class="form-control" placeholder="Enter Password" style="background-color:transparent;color:yellow"/>
				  </div>			
			
			<br>
			<form:button>Login</form:button>
          </form:form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
   
 <!-- Modal ends - Login -->
 
 
  <!-- Modal starts - SignUp -->
  <div class="modal fade" id="myModalSignUp" role="dialog" >
  <br><br><br>
    <div class="modal-dialog">
        
      <!-- Modal content-->
      <div class="modal-content" style="background:rgba(90,90,30,0.2)">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" style="color:yellow">&times;</button>
          <h4 class="modal-title" style="color:yellow">SignUp Form</h4>
        </div>
        <div class="modal-body" style="align:center;background:rgba(90,90,30,0.6)">  
        
        	<form:form  class="form-horizontal" commandName="customerObject" method="POST" action="reqSendSignupDataToDB" encType="multipart/form-data">

			   
			      <div class="col-sm-3" style="background-color:transparent;color:yellow; vertical-align:baseline">Customer Name </div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="custname" class="form-control" placeholder="Enter Customer Name" style="background-color:transparent;color:yellow"/>
				  </div>
			
			      <div class="col-sm-3" style="background-color:transparent;color:yellow">Email ID </div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="custemailid" class="form-control" placeholder="Enter Email ID" style="background-color:transparent;color:yellow"/>
				  </div>		
				
			      <div class="col-sm-3" style="background-color:transparent;color:yellow">Mobile No. </div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="custmobileno" class="form-control" placeholder="Enter Mobile No." style="background-color:transparent;color:yellow"/>
				  </div>		
				
			      			
					<br> Authentication details <br>
			      <div class="col-sm-3" style="background-color:transparent;color:yellow">Password</div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:password path="userDetails1.password" class="form-control" placeholder="Enter Password" style="background-color:transparent;color:yellow"/>
				  </div>	
				  	
				  	 <div class="col-sm-3" style="background-color:transparent;color:yellow">Image</div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input type="file" path="userDetails1.imagefile" class="form-control" style="background-color:transparent;color:yellow"/>
				  </div>		
				  			
				  			
				  			
						<br> Address <br>
			      <div class="col-sm-3" style="background-color:transparent;color:yellow">Hose No.</div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="shippingAddress.houseno" class="form-control" placeholder="Enter House No." style="background-color:transparent;color:yellow"/>
				  </div>				
			
			  		 <div class="col-sm-3" style="background-color:transparent;color:yellow">Street</div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="shippingAddress.street" class="form-control" placeholder="Enter Street" style="background-color:transparent;color:yellow"/>
				  </div>	
				  
			      <div class="col-sm-3" style="background-color:transparent;color:yellow">Area</div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="shippingAddress.area" class="form-control" placeholder="Enter Area" style="background-color:transparent;color:yellow"/>
				  </div>				
		
		     	<div class="col-sm-3" style="background-color:transparent;color:yellow">City</div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="shippingAddress.city" class="form-control" placeholder="Enter City" style="background-color:transparent;color:yellow"/>
				  </div>
				  
		     	<div class="col-sm-3" style="background-color:transparent;color:yellow">State</div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="shippingAddress.state" class="form-control" placeholder="Enter State" style="background-color:transparent;color:yellow"/>
				  </div>
				  
	     		<div class="col-sm-3" style="background-color:transparent;color:yellow">Country</div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="shippingAddress.country" class="form-control" placeholder="Enter Country" style="background-color:transparent;color:yellow"/>
				  </div>		
			
	     		<div class="col-sm-3" style="background-color:transparent;color:yellow">Pincode</div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="shippingAddress.pincode" class="form-control" placeholder="Enter Pincode" style="background-color:transparent;color:yellow"/>
				  </div>
				  
		
				<br> 
				<form:button class="btn btn-primary active">SignUp</form:button>
	
			</form:form>        
     
          </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal" style="color:blue">Close</button>
        </div>
      </div>
      
    </div>
  </div>
   
 <!-- Modal ends - SignUp -->
         
    <c:if test="${message==1}">
    <div class="container">
    <br><br>
    <div col-sm-3></div>
    <div col-sm-6>
     <div class="alert alert-danger alert-dismissable fade in">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
    ${message1}
    </div>
  </div>
  </div>
  </c:if>     
 
  
    <c:if test="${message==0}">
    <div class="container">
    <br><br>
    <div col-sm-3></div>
    <div col-sm-6>
     <div class="alert alert-danger alert-dismissable fade in">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
    <strong>Error!</strong>       Login failed...Try again..
    </div>
  </div>
  </div>
  </c:if>
  
  
  <video autoplay loop muted poster="resources/videos/default.jpg" id="bgvid">
    <source src="resources/videos/background2.webm" type="video/webm">
    </video>
  
<!-- <div class="container">  carousel
	<div class="row">
		<div class="col-sm-12" style="background: rgba(76, 175, 80, 0.8)">
		<div class="col-sm-12" >
  coraousel starts



<div class="container">
  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    Indicators
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    Wrapper for slides
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="resources/images/products/carousel/img1.jpg" alt="Chania">
        <div class="carousel-caption">
          <h3>Chania</h3>
          <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
        </div>
      </div>

      <div class="item">
        <img src="resources/images/products/carousel/img2.jpg" alt="Chania">
        <div class="carousel-caption">
          <h3>Chania</h3>
          <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
        </div>
      </div>
    
      <div class="item">
        <img src="resources/images/products/carousel/img3.jpg" alt="Flower">
        <div class="carousel-caption">
          <h3>Flowers</h3>
          <p>Beatiful flowers in Kolymbari, Crete.</p>
        </div>
      </div>

      <div class="item">
        <img src="resources/images/products/carousel/img4.jpg" alt="Flower">
        <div class="carousel-caption">
          <h3>Flowers</h3>
          <p>Beatiful flowers in Kolymbari, Crete.</p>
        </div>
      </div>
  
    </div>

    Left and right controls
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true" ></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  </div>
  
  
</div>

  coraousel endss

</div>   row endss
</div>   container endss

 -->





<!--  thumbnails  started -->
<!-- 



<div class="container-fluid">
<div class="row" >

	<div class="col-sm-2" style="background-color:transparent; border-style:none; left-padding:5px;">
		<div class="thumbnail" style="border:3px solid green; border-radius:8px; padding:5px; border-style: double;"> 
		 <img src="resources/images/products/thumbnail/PRD00001.jpg" style="width:220px; height:200px;"/>
		 <br>
		 Teddy bear
		
		</div>
		</div>
	
	<div class="col-sm-2" style="background-color:white; border-style:none; left-padding:5px">
		<div class="thumbnail" style="border:3px solid green; border-radius:8px; padding:5px; border-style: double">
		 <img src="resources/images/products/thumbnail/PRD00002.jpg" style="width:220px; height:200px;"/>
		 <br>
		 Snake and lader
		
		</div>
		</div>
	
	<div class="col-sm-2" style="background-color:white; border-style:none; left-padding:5px">
		<div class="thumbnail" style="border:3px solid green; border-radius:8px; padding:5px; border-style: double">
		 <img src="resources/images/products/thumbnail/PRD00003.jpg" style="width:220px; height:200px;"/>
		
		</div>
		</div>
		
		
	<div class="col-sm-2" style="background-color:white; border-style:none; left-padding:5px">
		<div class="thumbnail" style="border:3px solid green; border-radius:8px; padding:5px; border-style: double">
		 <img src="resources/images/products/thumbnail/PRD00004.jpg" style="width:220px; height:200px;"/>
		
		</div>
		</div>
		
	<div class="col-sm-2" style="background-color:white; border-style:none; left-padding:5px">
		<div class="thumbnail" style="border:3px solid green; border-radius:8px; padding:5px; border-style: double">
		 <img src="resources/images/products/thumbnail/PRD00005.jpg" style="width:220px; height:200px;"/>
		
		</div>
		</div>
		
		
	<div class="col-sm-2" style="background-color:white; border-style:none; left-padding:5px">
		<div class="thumbnail" style="border:3px solid green; border-radius:8px; padding:5px; border-style: double">
		 <img src="resources/images/products/thumbnail/PRD00006.jpg" style="width:220px; height:200px;"/>
		
		</div>
			
	
	
	</div>




</div> 
</div>


 -->
<!--  thumbnails  ended -->
<div class="container">
	<div class="row">
		<div class="col-sm-12" style="background: rgba(0,0, 80, 0.4)">

<!--   coraousel starts -->

<!-- <div class="container"> -->
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
       <li data-target="#myCarousel" data-slide-to="4"></li>
      <li data-target="#myCarousel" data-slide-to="5"></li>
       <li data-target="#myCarousel" data-slide-to="6"></li>
      
    </ol>

<!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
            <img src="resources/images/products/carousel/0005.jpg" alt="bike" width="460" height="340">
        <div class="carousel-caption">
          <h3>BIKES</h3>
          <p>BIKES GIVES US CONFIDENCE</p>
        </div>
      </div>
      
       

<div class="item">
   <img src="resources/images/products/carousel/0001.jpg" alt="bike">
        <div class="carousel-caption">
          <h3>BIKES</h3>
          <p>BIKES GIVES US CONFIDENCE</p>
        </div>
      </div>
      <div class="item">
        <img src="resources/images/products/carousel/0009.jpg" alt="bike" width="460" height="340">
        <div class="carousel-caption">
          <h3>BIKES</h3>
          <p>BIKES GIVES US CONFIDENCE</p>
        </div>
      </div>
      
       <div class="item">
        <img src="resources/images/products/carousel/0010.jpg" alt="bike" width="460" height="340">
        <div class="carousel-caption">
          <h3>BIKES</h3>
          <p>BIKES GIVES US CONFIDENCE</p>
        </div>
      </div>
       <div class="item">
        <img src="resources/images/products/carousel/0011.jpg" alt="bike" width="460" height="340">
        <div class="carousel-caption">
          <h3>BIKES</h3>
          <p>BIKES GIVES US CONFIDENCE</p>
        </div>
      </div>
       <div class="item">
        <img src="resources/images/products/carousel/0012.jpg" alt="bike" width="460" height="340">
        <div class="carousel-caption">
          <h3>BIKES</h3>
          <p>BIKES GIVES US CONFIDENCE</p>
        </div>
      </div>
       <div class="item">
        <img src="resources/images/products/carousel/d1.jpg" alt="bike" width="460" height="340">
        <div class="carousel-caption">
          <h3>BIKES</h3>
          <p>BIKES GIVES US CONFIDENCE</p>
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
  </div>
  <!-- </div> -->

<!--   coraousel endss -->

</div> <!--   row endss -->
</div> <!--   container endss -->
<!-- ------------------------------------------------------------------------------------------------- -->
<div class="container">
<div class="row" >

	<div class="col-sm-2" style="background-color:transparent; border-style:none; left-padding:5px;">
		<div class="thumbnail" style="border:3px navy;background-color:transparent; border-radius:8px; padding:5px; border-style: double;"> 
		 <img src="resources/images/products/carousel/12.jpg" style="width:220px; height:200px;"/>
	  </div>
		</div>
	
	<div class="col-sm-2" style="background-color:transparent; border-style:none; left-padding:5px">
		<div class="thumbnail" style="border:3px solid green; border-radius:8px; padding:5px; border-style: double;">
		 <img src="resources/images/products/carousel/24.jpg" style="width:220px; height:200px;"/>
		</div>
		</div>
	
	<div class="col-sm-2" style="background-color:transparent; border-style:none; left-padding:5px">
		<div class="thumbnail" style="border:3px solid green; border-radius:8px; padding:5px; border-style: double">
		 <img src="resources/images/products/carousel/16.jpg" style="width:220px; height:200px;"/>
		
		</div>
		</div>
		
		
	<div class="col-sm-2" style="background-color:transparent; border-style:none; left-padding:5px">
		<div class="thumbnail" style="border:3px solid green; border-radius:8px; padding:5px; border-style: double">
		 <img src="resources/images/products/carousel/17.jpg" style="width:220px; height:200px;"/>
		
		</div>
		</div>
		
	<div class="col-sm-2" style="background-color:transparent; border-style:none; left-padding:5px">
		<div class="thumbnail" style="border:3px solid green; border-radius:8px; padding:5px; border-style: double">
		 <img src="resources/images/products/carousel/19.JPG" style="width:220px; height:200px;"/>
		
		</div>
		</div>
		
		
	<div class="col-sm-2" style="background-color:transparent; border-style:none; left-padding:5px">
		<div class="thumbnail" style="border:3px solid green; border-radius:8px; padding:5px; border-style: double">
		 <img src="resources/images/products/carousel/21.jpg" style="width:220px; height:200px;"/>
		</div>
		</div> 
</div>


</body>
</html>
















<!-- <h2>Hello World!</h2>
through controller
<br>
<a href="reqForLoginPage">Login here</a>
<br>
<a href="reqForSignupPage">SignUp here</a>
 -->
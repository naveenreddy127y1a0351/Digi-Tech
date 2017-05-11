<nav class="container navbar navbar-inverse  navbar-fixed-top" style="opacity:0.7;margin-bottom:0;">
  <div class="container">
    <div style="style="vertical-align: middle">
    <ul class="nav navbar-nav" >

      <li class="dropdown" ><a class="dropdown-toggle" data-toggle="dropdown" href="#"> <img src="resources/images/users/${loginuserid}.jpg" height="50" width="60" class="img-circle"/> Welcome ${loginusername}<span class="caret"></span></a>
	     <ul class="dropdown-menu" style="vertical-align: middle">
          <li><a href="#">Edit Profile</a></li>
          <li><a href="#">Change Password</a></li>
          <li><a href="reqLogout">Logout</a></li>
        </ul>
      </li>  
  
      <li class="dropdown" ><a class="dropdown-toggle" data-toggle="dropdown" href="#" >Products<span class="caret" style="vertical-align: middle"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="reqDisplayProdcutsAdmin"><span class="glyphicon glyphicon-list"></span>  Display All products</a></li>
          <li><a href="reqProductForm">Add Product</a></li>    
          
 <!--  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModelAddProduct" style="color:black;background-color:transparent;border:0px;font-size:15px">
        <span class="glyphicon glyphicon-plus"></span>   Add Product</button>       -->    
                 
        </ul>
      </li> 
      
     
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Suppliers<span class="caret"></span></a>
	    <ul class="dropdown-menu">
          <li><a href="reqDisplaySuppliers">Display All suppliers</a></li>
          <li><a href="reqAddSupplierForm">Add Supplier</a></li>          
        </ul>
      </li>  
     
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">ProductSupplier<span class="caret"></span></a>
	    <ul class="dropdown-menu">
            <li><a href="reqDisplayXps">Display All ProductSuppliers</a></li>
            <li><a href="reqAddProdSuppForm">Add ProductSupplier</a></li>          
        </ul>
      </li>  
      
     <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Users<span class="caret"></span></a>
	    <ul class="dropdown-menu">
            <li><a href="reqDisplayUsers">Display Users</a></li>                      
        </ul>
      </li>   
     
     </ul>
    
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#">About Us</a></li>
      <li><a href="#">  Contact Us</a></li>
    </ul>
    </div>
  </div>
</nav>
<br><br>

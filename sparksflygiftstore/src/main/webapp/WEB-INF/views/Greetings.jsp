<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="model.Product,java.util.*,org.springframework.web.servlet.ModelAndView" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

<link href="maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"> 
<link href="https://cdn.datatables.net/1.10.11/css/dataTables.bootstrap.min.css" rel="stylesheet"> 
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet"> 
  
<link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"/> 
<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>

<!-- ========== Header is started ========== -->
<!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
             	<a class="navbar-brand" href="LandingPage"><strong>SparksFly</strong></a></h3>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="about.html">Sign Up</a>
                    </li>
                    <li>
                        <a href="Register">Register</a>
                    </li>
                    <li>
                        <a href="contact.html">Contact</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Categories<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="portfolio-1-col.html">Men</a>
                            </li>
                            <li>
                                <a href="portfolio-2-col.html">Women</a>
                            </li>
                            
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Blog <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="blog-home-1.html">Events</a>
                            </li>
                            <li>
                                <a href="blog-home-2.html">New Launches</a>
                            </li>
                           
                        </ul>
                    </li>
                   
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
<script type="text/javascript" src="js/bootstrap/bootstrap-dropdown.js"></script>
<script>
     $(document).ready(function(){
        $('.dropdown-toggle').dropdown()
    });
</script>
<!-- ========== Header is over ========== -->
<br><br><br><br>
<h3>Get the perfect gifts to gift </h3>

        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>Sparks Fly</strong>&nbsp;&nbsp;<i style="color:red">Make moments</i><img style="display:inline" width="80"  height ="80" controls  src="resources/images/f_img1.jpg" /></h1>
                            <div class="description">
                            	<p>
	                            	Speak your heart and gift your special one.
	                            	<p>You can create your free registration at our site to  experience shopping cool stuffs.</p>
	                            	<p>Know more about the <a href="http://azmind.com"><strong>Terms and Conditions</strong></a>, for shopping here and shop as you like!</p>
                            	</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                    	<div class="col-sm-6 book">
                    	<br></br></br>
    					<br><br>                	
                    	<br>
                    	<img width="350"  height ="350" controls  src="resources/images/flower1.jpg" /><br><br>
                    	
                    	</div>
                    	<br></br></br><br></br></br>
                        <div class="col-sm-5 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Get the perfect gifts to gift </h3>
                            		 <p>Flower for your loved ones:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<div class="container-fluid">
   
	<table width="60%" class="table table-striped table-bordered"  id="example"  cellspacing="0" >
 	<thead>  
          <tr>  
            <th>ID</th>  
            <th>Name</th>  
            <th>Description</th>  
            <th>Price</th> 
            <th>Category</th>  
            <th>Status</th> 
            <th>View Details</th>  
          </tr>  
  	</thead>  
    <tbody>
        <c:if test="${!empty listProduct}">
 		  	<c:forEach items="${listProduct}" var="item"> 
            
            <tr>
				
                <td>${item.id}</td>

                <td>${item.productname}</td>

                <td>${item.productdescription}</td>

                <td>${item.productprice}</td>

                <td>${item.category}</td>

                <td>${item.status}</td>
				
				<td><a href='<c:url value="/ProductDetails/${item.id}" />' >Details</a></td>
				</tr>
				</c:forEach>
         </c:if>	 
         
     </tbody>
    </table>   </div>
   
</div>
</div>
<br><br><br><br>
					<div class="form-bottom">
								  <img style="position: relative; right:15px" class="img-responsive" src="resources/images/flower4.jpg" alt="">	                 
			 		</div>
                        </div>
                    </div>
                </div>
            </div>
              
            
        </div>
		<br><br><br><br><br><br><br>
 	
   
<script>
$(document).ready(function(){
	
	
    $('#example').DataTable({"oSearch": {"sSearch": "{$param.name}"}});
});
</script>
</body>
</html>

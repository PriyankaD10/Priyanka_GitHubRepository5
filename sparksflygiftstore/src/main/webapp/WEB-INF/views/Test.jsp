<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

<link href="maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"> 
<link href="https://cdn.datatables.net/1.10.11/css/dataTables.bootstrap.min.css" rel="stylesheet"> 
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet"> 
  
<link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"/> 
<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css"/>

<script src="http://code.angularjs.org/1.4.8/angular.js"></script>
<script src="http://code.angularjs.org/1.4.8/angular-resource.js"></script>
<script src="http://angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.11.0.js"></script>
<script>

var app=angular.module('MyForm',['ui.bootstrap','ngResource']);
app.controller('myCtrl',function($scope){
	
	$scope.predicate='name';
	$scope.reverse=true;
	$scope.currentPage=1;
	$scope.order=function(predicate){
		$scope.reverse=($scope.predicate===predicate)?!$scope.reverse:false;
		$scope.predicate=predicate;
	};
	$scope.products=${listProduct};
	
		$scope.totalItems = $scope.products.length;  
	       $scope.numPerPage = 5;  
	       $scope.paginate = function (value) {  
	         var begin, end, index;  
	         begin = ($scope.currentPage - 1) * $scope.numPerPage;  
	         end = begin + $scope.numPerPage;  
	         index = $scope.products.indexOf(value);  
	         return (begin <= index && index < end);  
		
	};
	
});
</script>

</head>
<body ng-app="MyForm">

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


<h3>Get the perfect gifts to gift </h3>

        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>Sparks Fly</strong>&nbsp;&nbsp;<i style="color:red">Make moments</i><img style="display:inline" width="80"  height ="80" controls  src="resources/images/f_img1.jpg" /></h1>
                            <div class="description">
                            		<p>Speak your heart and gift your special one.</p>
	                            	<p>You can create your free registration at our site to  experience shopping cool stuffs.</p>
	                            	<p>Know more about the <a href="http://azmind.com"><strong>Terms and Conditions</strong></a>, for shopping here and shop as you like!</p>
                            	
                            </div>
                        </div>
                    </div>
                    <div class="row">
                    	<div class="col-sm-4 book">
                    	<br><br><br><br><br><br>
    					<img width="350"  height ="350" src="resources/images/flower1.jpg" /><br><br>
                    	
                    	</div>
                    	<br><br><br><br><br><br>
                        <div class="col-sm-5 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Get the perfect gifts to gift </h3>
                            		 <p>Flower for your loved ones:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<div class="container">
										<div ng-controller="myCtrl">
										<h4>Products</h4>  
	     								<div>  
	       								<pre>Choose any product , View Details link to know more</pre><hr />  
										<table width="80%" class="table table-striped table-bordered" id="example">
										<thead>
										<tr>
												
												<th><a href="#" ng-click="order('id')" >Product ID</a></th>
												<th><a href="#" ng-click="order('productname')" >Product Name</a></th>
												<th><a href="#" ng-click="order('productdescription')">Product Description</a></th>
												<th><a href="#" ng-click="order('productprice')">Product Price</a></th>
												<th><a href="#" ng-click="order('category')">Category</a></th>
												<th><a href="#" ng-click="order('status')">Status</a></th>
												<th>Edit</th>
										</tr>		
										</thead>
										<tbody>
												
												<tr ng-repeat="product in products | orderBy:predicate:reverse | filter:paginate" ng-class-odd="'odd'">  
													
													
													<td>{{ product.id}}</td>  
													<td>{{ product.productname}}</td> 
													<td>{{ product.productdescription}}</td>  
										            <td>{{ product.productprice}}</td>
										            <td>{{ product.category}}</td>
										            <td>{{ product.status}}</td>

													<div ng-init="myVar = 'ProductDetails/'">
													
										            <td><a ng-href="{{myVar}}{{product.id}}">View Details</a></a></td>
												</tr>
										</tbody>
										</table>
		<!-- <pagination total-items="totalItems" ng-model="currentPage"  
             max-size="5" boundary-links="true"  
             items-per-page="numPerPage" class="pagination-sm">  
       </pagination>  --> 
</div>
</div>
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
    $('#example').DataTable({"oSearch": {"sSearch": "${param.name}"}});
});
</script>
</body>
</html>

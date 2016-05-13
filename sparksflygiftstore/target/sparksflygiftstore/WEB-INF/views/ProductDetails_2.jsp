<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link href="maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"> 
<link href="https://cdn.datatables.net/1.10.11/css/dataTables.bootstrap.min.css" rel="stylesheet"> 
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
<link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"/> 
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>
<h3>Product #1. Get the perfect gifts to gift </h3>

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

                <th>Product ID</th>

                <th>Product Name</th>

                <th>Product Description</th>

                <th>Price</th>

                <th>Category</th>

                <th>Status</th>
				<th> View Details </th>
            </tr>

        </thead>

        <tfoot>

            <tr>

                <th>Product ID</th>

                <th>Product Name</th>

                <th>Product Description</th>

                <th>Price</th>

                <th>Category</th>

                <th>Status</th>
				<th> View Details </th>
            </tr>

        </tfoot>

        <tbody>
        
         <tr>
        
<%-- 		<!--  	<c:forEach items="${ProductData}" var="item"> -->
            
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
             --%>
             
             <!-- ========    Checking  whethe table is coming  with search and filter =========== -->
              <tr>
				
                <td>1</td>

                <td>Books</td>

                <td>This is the best book</td>

                <td>100</td>

                <td>Story</td>

                <td>In Stock</td>
				
				<td><a href='#'/>Details</a></td>
				
            </tr>
            <tr>
				
                <td>1</td>

                <td>Books</td>

                <td>This is the best book</td>

                <td>100</td>

                <td>Story</td>

                <td>In Stock</td>
				
				<td><a href='#'/>Details</a></td>
				
            </tr>
            <tr>
				
                <td>1</td>

                <td>Books</td>

                <td>This is the best book</td>

                <td>100</td>

                <td>Story</td>

                <td>In Stock</td>
				
				<td><a href='#'/>Details</a></td>
				
            </tr>
             
             </tbody>

    </table>
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
    $('#example').DataTable();
});
</script>
</body>
</html>
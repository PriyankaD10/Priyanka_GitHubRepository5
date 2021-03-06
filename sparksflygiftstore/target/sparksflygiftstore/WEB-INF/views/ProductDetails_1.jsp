<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import="model.Product,java.util.*,org.springframework.web.servlet.ModelAndView" %>
  
  <!-- for jstl tags and EL -->
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
 <!--  for spring form  -->

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sparks Fly Gift Shop</title>

<link href="maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"> 
<link href="https://cdn.datatables.net/1.10.11/css/dataTables.bootstrap.min.css" rel="stylesheet"> 
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
<link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"/> 
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>


<!-- spring style  -->
<style type="text/css">
        .tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
        .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
        .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
        .tg .tg-4eph{background-color:#f9f9f9}
    </style>


</head>
<body>
  <!--Header -->
    <jsp:include page="Header.jsp"></jsp:include>
    <br><br><br><br><br><br><br><br>
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>Sparks Fly</strong>&nbsp;&nbsp;<i style="color:red">Make moments</i>&nbsp;&nbsp;<img style="display:inline" width="80"  height ="80" controls  src="resources/images/f_img1.jpg" /></h1>
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
                    	<img width="350"  height ="350"  src="resources/images/greetings1.jpg" /><br><br>
                    	</div>
                    	
                    	<br></br></br><br></br></br>
                        <div class="col-sm-5 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Product #1. Get the perfect gifts to gift </h3>
                            		 <p>Flower for your loved ones:</p>
                        		</div>
                        		<div class="form-top-left">
                        			 <h3>Add New Product </h3>
                            		 <p>Fill up the form below:</p>
                            		 <i class="fa fa-pencil"></i>
                            		  <form:form method="POST" action="/addProduct" modelAttribute="product">

   											<table>
   											 <td><form:input path="id" readonly="true" size="8"  disabled="true" />
   											 <form:hidden path="id" /></td> 
   											
    										<tr>
        										<td><form:label path="productname">Product Name</form:label></td>
        										<td><form:input path="productname" /></td>
    										</tr>
    										<tr>
        										<td><form:label path="description">Product Description</form:label></td>
        									<td><form:input path="description" /></td>
    										</tr>
    										<tr>
        									<td><form:label path="price">Price</form:label></td>
        									<td><form:input path="price" /></td>
    										</tr>
    										
    										<tr>
        									<td><form:label path="category">Category</form:label></td>
        									<td><form:input path="category" /></td>
    										</tr>
    										    
    										<tr>
        									<td><form:label path="status">Status</form:label></td>
        									<td><form:input path="status" /></td>
    										</tr>
    																				
    										<tr>
        										<td colspan="2">
            									<input type="submit" value="Submit"/>
        										</td>
    										</tr>
									</table>  
									</form:form> 
                            		 
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

            </tr>

        </tfoot>

        <tbody>
        
         <tr>
        
			<%-- <c:forEach items="${ProductData}" var="item">
            
            <tr>

                <td>${item.id}</td>

                <td>${item.productname}</td>

                <td>${item.productdescription}</td>

                <td>${item.productprice}</td>

                <td>${item.category}</td>

                <td>${item.status}</td>

            </tr>
</c:forEach>
             --%>
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

   <!-- Footer -->
  <jsp:include page="Footer.jsp"></jsp:include>




</body>
</html>
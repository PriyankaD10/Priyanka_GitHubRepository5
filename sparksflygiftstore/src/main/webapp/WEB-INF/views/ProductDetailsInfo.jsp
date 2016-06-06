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
	                            	<p>Know more about the <a href="TermsAndCondition"><strong>Terms and Conditions</strong></a>, for shopping here and shop as you like!</p>
                            	</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                    	<div class="col-sm-6 book">
                    	<br></br></br>
    					<br><br>                	
                    	<br>
                    	<img width="350"  height ="350"  src="resources/images/img1.jpg" /><br><br>
                    	</div>
                    </div>
                    	<br></br></br><br></br></br>
                        <div class="col-sm-5 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3> Get the perfect gifts to gift </h3>
                            		 <p>Get any present for your loved ones:</p>
                        		</div>
                        		<div class="form-top-left">
                        			 <h3>Product Details </h3>
                            		 <p>Click Buy now to add the product to your shopping cart</p>
                            		 
                            	</div>
                            	</div>
                            	</div>
                        		<div class="form-top-right">
                        			<div class="container-fluid">
     <div>           			
   	<img width="350"  height ="350"  src="resources/images/img1.jpg" />
   	</div>
   <br><br><br>
	<table width="80%" height="80%" class="table table-striped table-bordered"  id="example"  cellspacing="0" >

        <thead>

            <tr>

                <th>Product ID</th>

                <th>Product Name</th>

                <th>Product Description</th>

                <th>Price</th>

                <th>Category</th>

                <th>Status</th>
                 
                <th>Purchase</th>

            </tr>

        </thead>

     
        <tbody>
        
         <tr>
        <%-- <c:if test="${! empty selectedproduct}">
			
            <tr>

                <td>${selectedproduct.id}</td>

                <td>${selectedproduct.productname}</td>

                <td>${selectedproduct.productdescription}</td>

                <td>${selectedproduct.productprice}</td>

                <td>${selectedproduct.category}</td>

                <td>${selectedproduct.status}</td>
                
                <td><button type="button" class="btn btn-sm"   style="background-color:lightgreen; color:white" >Buy Now</button></td>

            </tr>

			</c:if> --%>
			
			
									
			
        <td><%= request.getParameter("id") %></td>
 			<td><%= request.getParameter("productname") %></td>
 			<td><%= request.getParameter("productdescription") %></td>
 			<td><%= request.getParameter("productprice") %></td>
 			<td><%= request.getParameter("productcategory") %></td>
 			<td><%= request.getParameter("productsatus") %></td>
 			<td><button type="button" class="btn btn-sm"   style="background-color:lightgreen; color:white" >Buy Now</button></td>
 			</tr>  
            </tbody>

    </table>
   </div>
    
   <!-- Model control -->
   <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#myModal">Share with Friend</button>
     
     <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Share With A Friend</h4>
        </div>
       <div class="modal-body">
                
                <form role="form" action="ShareProduct" method="POST">
               
                  <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                      <input type="email" class="form-control" id="exampleInputEmail1" name="exampleInputEmail1" placeholder="Enter email"/>
                  </div>
                   <div class="form-group">
                      <label for="exampleInputSubject1">Subject</label>
                      <input type="text" class="form-control" id="exampleInputSubject1" name="exampleInputSubject1" placeholder="Enter Subject"/>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputMessage1">Message</label>
                      <textarea class="form-control" id="exampleInputMessage1" name="exampleInputMessage1" placeholder="Message">
                       Check Out at Sparks Fly.
                       Product : ${selectedproduct.productname} 
                       ${selectedproduct.productdescription}
                       at Rs ${selectedproduct.productprice}0 only
                       </textarea>
                  </div>
                  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                  <button type="submit" class="btn btn-default">Send</button>
                </form>
                
                
            </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div> 
   
</div>
 
 </div>

<br><br><br><br>
							<div class="form-bottom">
								  <img style="position: relative; right:15px" class="img-responsive" src="resources/images/flower4.jpg" alt="">	                 
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
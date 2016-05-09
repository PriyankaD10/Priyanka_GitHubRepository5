<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 TRANSACTIONAL//EN" "HTTP://www.e3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Product Page</title>
    
    <link href="maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">  
 <link href="https://cdn.datatables.net/1.10.11/css/dataTables.bootstrap.min.css" rel="stylesheet">  
 <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">    
 <link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"/>  
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script> 
 <script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>  
 <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> 
    
    
    <link href="maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"> 
	<!-- <link href="https://cdn.datatables.net/1.10.11/css/dataTables.bootstrap.min.css" rel="stylesheet">  -->
	<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
	<link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"/> 
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script> 
	<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
   <!--  <style type="text/css">
        .tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
        .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
        .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
        .tg .tg-4eph{background-color:#f9f9f9}
    </style> -->
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
    <br><br><br><br><br><br><br><br>
             <div class="col-sm-5 col-sm-offset-2 text">
				<h1><strong>Sparks Fly</strong>&nbsp;&nbsp;<i style="color:red">Make moments</i><img style="display:inline" width="80"  height ="80" controls  src="resources/images/f_img1.jpg" /></h1>
                <div class="description">
                     <p>
	                    Speak your heart and gift your special one.
	                     <p>You can create products from here to the site to help customers experience shopping cool stuffs.</p>
	                     <p>Know more about the <a href="http://azmind.com"><strong>Terms and Conditions</strong></a>, for shopping here and shop as you like!</p>
                        
                 </div>
              </div> 

                    	<div class="form-top-right">
                    		<img width="150"  height ="150" controls  src="resources/images/flower1.jpg"/>
                    	</div>
                        		<h3>Add Product</h3>
								<div>
                        			 
                            		 <p>Fill the form to add new product:</p>
                        		</div>
                        	
                  
								<c:url var="addAction" value="/Product/add" ></c:url>
												<form:form action="${addAction}" modelAttribute="product">
												<table  width="40%" cellpadding="5" cellspacing="3">
    											<c:if test="${!empty product.productname}">
    											<tr>
        										<td>
            									<form:label path="id">
                								<spring:message text="ID"/>
            									</form:label>
        										</td>
       											 <td>
            										<form:input path="id" readonly="true" size="8"  disabled="true" />
          											<!--    <form:hidden path="id" /> -->
        										</td> 
    											</tr>
    											</c:if>
    											<tr>
        										<td>
            									<form:label path="productname">
                									<spring:message text="Name"/>
            									</form:label>
        										</td>
        										<td>
            										<form:input path="productname" />
        										</td> 
   												</tr>
       											<tr>
        											<td>
            											<form:label path="productdescription">
                											<spring:message text="Description"/>
            											</form:label>
        											</td>
        											<td>
            										<form:input path="productdescription" />
        											</td> 
    												</tr>
       												<tr>
        												<td>
											            <form:label path="productprice">
											                <spring:message text="Price"/>
											            </form:label>
											        	</td>
												        <td>
												            <form:input path="productprice" />
												        </td> 
											    	</tr>
												    <tr>
												        <td>
												            <form:label path="category">
												                <spring:message text="Category"/>
												            </form:label>
												        </td>
												        <td>
												            <form:input path="category" />
												        </td>
												    </tr>
												    
											        <tr>
											        <td>
											            <form:label path="status">
											                <spring:message text="Status"/>
											            </form:label>
											        </td>
											        <td>
											            <form:input path="status" />
											        </td>
											    </tr>
											    <tr>
											        <td colspan="2">
											          <c:if test="${empty product.productname}">
											                <input type="submit" value="<spring:message text="Add Product"/>" />
											            </c:if>
											            <c:if test="${!empty product.productname}">
											                <input type="submit" value="<spring:message text="Edit Product"/>" />
														</c:if>
</td>
</tr>
</table>
</form:form>


<h3>Product List</h3>
<!-- <div style="height:500px; width:500px">
<table width="60%" class="table table-striped table-bordered"  id="example"  cellspacing="3" cellpadding="5"> -->

<div class="table-responsive">
<table id="myTable" class="display table" width="100%" >											
<thead>

            <tr>
                <th>Product ID</th>
                <th>Product Name</th>
                <th>Product Description</th>
                <th>Price</th>
                <th>Category</th>
                <th>Status</th>
				<th>Update</th>
				<th>Remove</th>
				
             </tr>
    </thead>
    <tbody>        
     
		<c:if test="${!empty listProduct}">
			<c:forEach items="${listProduct}" var="product">
														<tr>
											            <td>${product.id}</td>
											            <td>${product.productname}</td>
											            <td>${product.productdescription}</td>
											            <td>${product.productprice}</td>
											            <td>${product.category}</td>
											            <td>${product.status}</td>
											            
											            <td><a href="<c:url value='/edit/${product.id}'/>" >Edit</a></td>
											            <td><a href="<c:url value='/remove/${product.id}'/>" >Delete</a></td>
											        	</tr>
			</c:forEach>
			
			
		</c:if>
		
		</tbody>
	</table>
 
</div>

<jsp:include page="Footer.jsp"></jsp:include>
</body>
 <script>
$(document).ready(function(){
    $('#myTable').dataTable();
});
</script>
</html>

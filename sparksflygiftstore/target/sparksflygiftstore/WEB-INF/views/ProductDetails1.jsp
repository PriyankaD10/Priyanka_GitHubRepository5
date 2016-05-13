
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Table</title>
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"></style>
<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

</head>
<body>
      
<table id="product" class="table table-striped" >

        <thead>  
          <tr>  
            <th>ID</th>  
            <th>Name</th>  
            <th>Price</th>  
            <th>Category</th>  
          </tr>  
        </thead>  
        <tbody>  
          <c:forEach items="${listProduct}" var="prod">
     <tr>
       <td>${prod.id}</td>
       <td>${prod.productname}</td>
       <td>${prod.productdescription}</td>
       <td>${prod.productprice}</td>
       <td>${prod.category}</td>
       <td>${prod.status}</td>
       <td><a href ="#">Details</a>
       
     </tr>
    </c:forEach> 
          
        </tbody>  
      </table>  
      
      <script>
$(document).ready(function(){
    $('#product').dataTable({"oSearch": {"sSearch": "${param.name}"}});
});
</script>
  <nav class="navbar navbar-inverse navbar-fixed-bottom">

<h5><b><font color = "White">About</font> </b><span class="label label-default">Spreading cheesyness for decades</span></h5>
<div class = "container">


</div>
</div>

</nav>
</body>
</html>

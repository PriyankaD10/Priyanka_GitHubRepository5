<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sparks Fly Gift Shop</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
 <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
      
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</head>
<body>

    
		 <!--Header -->
    <jsp:include page="Header.jsp"></jsp:include>
    <br><br><br><br><br><br><br><br>
        <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>Sparks Fly</strong> Registration Form</h1>
                            <div class="description">
                            	<p>
	                            	You can create your free registration at our site to  experience shopping cool stuffs. 
	                            	Know more about the <a href="http://azmind.com"><strong>Terms and Conditions</strong></a>, for shopping here and shop as you like!
                            	</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                    	<div class="col-sm-6 book">
                    	<br></br></br><br></br></br>
                    	
           
                    	</div>
                    	<br></br></br><br></br></br>
                        <div class="col-sm-5 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Get the perfect gifts to gift </h3>
                            		<p>Upload Product Image</a></p>
                        		</div>
                            </div>
                            <div class="form-bottom-right" >
			                  

						<form method="POST" action="uploadFile" enctype="multipart/form-data">
        					File to upload: <input type="file" name="file"><br /> 
        					Name: <input type="text" name="name"><br /> <br /> 
        					<input type="submit" value="Upload"> Press here to upload the file!
    				</form>
						


			                   
		                    </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
		<br><br><br><br><br><br><br>
 		<jsp:include page="Footer.jsp"></jsp:include>
        <!-- Javascript -->
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/retina-1.1.0.min.js"></script>
        <script src="assets/js/scripts.js"></script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->
</body>
</html>
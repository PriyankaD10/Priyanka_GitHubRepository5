<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SparksFly Gift Shop</title>

<link href="maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"> 
<link href="https://cdn.datatables.net/1.10.11/css/dataTables.bootstrap.min.css" rel="stylesheet"> 
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
<link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"/> 
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script
src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY0kkJiTPVd2U7aTOAwhc9ySH6oHxOIYM&sensor=false">
</script>

<script>
function initialize()
{
var mapProp = {
  center:new google.maps.LatLng(22.5626300,88.3630400),
  zoom:10,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };
var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);

}

google.maps.event.addDomListener(window, 'load', initialize);
</script>
</head>
<body>
<h3> Contact Us </h3>

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
	                            	<p>Know more about the <a href="TermsAndCondition"><strong>Terms and Conditions</strong></a>, for shopping here and shop as you like!</p>
                            	</p>
                            </div>
                            
                        </div>
                    </div>
                    </div>
                    
                    <div class="row">
                    	<div class="col-sm-6 book">
                    	<br></br></br>
 						<div>
 						<table class="table">
 						<tr>
 							<th>Contact Details:</th>
						<tr>
 							<tr><td>SparksFly Technologies Pvt Ltd..</td></tr>
 								
 								<tr><td>7, Azimgunj House</td></tr>

							

							<tr><td>Camac Street , Kolkata - 700012,</td></tr>

							<tr><td>West Bengal, India</td></tr>

							<tr><td>Phone Numbers:</td></tr>
							
							<tr><td>Corporate Office : +91 (030) 26153001</td></tr>

							<tr><td>Email:
							customercare@sparksfly.com</td></tr>
 							</table>
 						</div>
                   	<div id="googleMap" style="width:600px;height:400px;"></div>
                   	
                   	
					<div class="form-bottom">
								  <img style="position: relative; right:15px" class="img-responsive" src="resources/images/flower4.jpg" alt="">	                 
			 		</div>
                      </div>
                    </div>
                
		<br><br><br><br><br><br><br>
 	
   

</body>
</html>
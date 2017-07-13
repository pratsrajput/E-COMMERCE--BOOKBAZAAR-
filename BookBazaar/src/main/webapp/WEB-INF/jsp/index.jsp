<!DOCTYPE html>
<html lang="en">
<head>
  <title>Book Bazar</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <c:url value="/resources/pics" var="z"/>
   <c:url value="/resources/css" var="y"/>
  <style>

.carousel-inner > .item > img,
.carousel-inner > .item > a > img 
{ width: 70%;margin: auto;
  }

  
    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
    .navbar {
      margin-bottom: 0px;
      border-radius: 0;
    }
    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;
    }
   
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    
    .full {
    width: 100%;	
}
.gap {
	height: 30px;
	width: 100%;
	clear: both;
	display: block;
}
.footer {
	background: #EDEFF1;
	height: auto;
	padding-bottom: 30px;
	position: relative;
	width: 100%;
	border-bottom: 1px solid #CCCCCC;
	border-top: 1px solid #DDDDDD;
}
.footer p {
	margin: 0;
}
.footer img {
	max-width: 100%;
}
.footer h3 {
	border-bottom: 1px solid #BAC1C8;
	color: #54697E;
	font-size: 18px;
	font-weight: 600;
	line-height: 27px;
	padding: 40px 0 10px;
	text-transform: uppercase;
}
.footer ul {
	font-size: 13px;
	list-style-type: none;
	margin-left: 0;
	padding-left: 0;
	margin-top: 15px;
	color: #7F8C8D;
}
.footer ul li a {
	padding: 0 0 5px 0;
	display: block;
}
.footer a {
	color: #78828D
}
.supportLi h4 {
	font-size: 20px;
	font-weight: lighter;
	line-height: normal;
	margin-bottom: 0 !important;
	padding-bottom: 0;
}
.newsletter-box input#appendedInputButton {
	background: #FFFFFF;
	display: inline-block;
	float: left;
	height: 30px;
	clear: both;
	width: 100%;
}
.newsletter-box .btn {
	border: medium none;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	-o-border-radius: 3px;
	-ms-border-radius: 3px;
	border-radius: 3px;
	display: inline-block;
	height: 40px;
	padding: 0;
	width: 100%;
	color: #fff;
}
.newsletter-box {
	overflow: hidden;
}
.bg-gray {
	background-image: -moz-linear-gradient(center bottom, #BBBBBB 0%, #F0F0F0 100%);
	box-shadow: 0 1px 0 #B4B3B3;
}
.social li {
	background: none repeat scroll 0 0 #B5B5B5;
	border: 2px solid #B5B5B5;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	-o-border-radius: 50%;
	-ms-border-radius: 50%;
	border-radius: 50%;
	float: left;
	height: 36px;
	line-height: 36px;
	margin: 0 8px 0 0;
	padding: 0;
	text-align: center;
	width: 36px;
	transition: all 0.5s ease 0s;
	-moz-transition: all 0.5s ease 0s;
	-webkit-transition: all 0.5s ease 0s;
	-ms-transition: all 0.5s ease 0s;
	-o-transition: all 0.5s ease 0s;
}
.social li:hover {
	transform: scale(1.15) rotate(360deg);
	-webkit-transform: scale(1.1) rotate(360deg);
	-moz-transform: scale(1.1) rotate(360deg);
	-ms-transform: scale(1.1) rotate(360deg);
	-o-transform: scale(1.1) rotate(360deg);
}
.social li a {
	color: #EDEFF1;
}
.social li:hover {
	border: 2px solid #2c3e50;
	background: #2c3e50;
}
.social li a i {
	font-size: 16px;
	margin: 0 0 0 5px;
	color: #EDEFF1 !important;
}
.footer-bottom {
	background: #E3E3E3;
	border-top: 1px solid #DDDDDD;
	padding-top: 10px;
	padding-bottom: 10px;
}
.footer-bottom p.pull-left {
	padding-top: 6px;
}
.payments {
	font-size: 1.5em;	
}
  </style>
</head>
<body>
<!---------------------------------  first div i.e top of the page ---------------------->

<div class="container text-center" style=background-color: black; >
 
  
    <h1>BOOK BAZAR</h1>      
    <p>Mission, Vission & Values</p>
  </div>
  <!----------------------  End of div First i.e top of the page --------------------->


<!--------------------  CSS File for carousel -------------------------------------------->


 <!------------------ End Of CSS File for carousel -------------------------------------->
 
 <!-------------------- Starting Of Navigation Bar ------------------------------------>
 <div style="padding-top: 0px;">
  <nav class="navbar navbar-inverse">
  <div class="container-fluid" >
  <div class="navbar-header">
  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
  <span class="icon-bar"></span>
  <span class="icon-bar"></span>
  <span class="icon-bar"></span>                        
  </button>
  <a class="navbar-brand" href="Home"><img src="E:\DT-PROJECT-1\Shopnow\src\main\webapp\Untitled.jpg" height="60" width="60"></a>
  </div>
    
    
    <div class="collapse navbar-collapse" id="myNavbar">
    <ul class="nav navbar-nav">
    <li class="active"><a href="#">Home</a></li>
        
    <li><a href="product">Books</a></li>
    <li><a href="Deals.jsp">Deals</a></li>
    <li><a href="Stores.jsp">Stores</a></li>
    <li><a href="Contact.jsp">Contact</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <li><a href="Registration"> Register</a></li>
    <li><a href="adminhome">ADMIN</a></li>
    <li><a href="login"><span class="glyphicon glyphicon-user"></span> Login</a></li>
    <li><a href="Cart"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
        
    </ul>
    </div>
    </div>
</nav>
</div>

<!----------------------------- div for Carousel --------------------------------------->

  <div class="container-fluid" style="padding-top:0px" >
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

    <div class="item active">
        <img src="${z}/carousel image 1.jpg" style="height:400px;width:100%">
      </div>

      <div class="item">
        <img src="${z}/carousel image 2.jpg" style="height:400px;width:100%">
      </div>
    
      <div class="item">
        <img src="${z}/carousel image 3.jpg" style="height:400px;width:100%">
      </div>

      <div class="item">
        <img src="${z}/carousel image 4.jpg" style="height:400px;width:100%">
      </div>
  
    </div>

<!-------------------------------- Left and right controls ------------------------------->
    
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>

  


<!----------------------------- div third --------------------------------------->
<div class="container" style="padding-top: 50px;">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-body"><img src="${z}/c1.jpg" class="img-responsive"  style="height:300px;width:100%" alt="Image"></div>
        <div class="panel-footer">Harry Potter And The Sorcers Of Stone</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-danger">
        <div class="panel-body"><img src="${z}/c2.jpg" class="img-responsive" style="height:300px;width:100%" alt="Image"></div>
        <div class="panel-footer">Albert Einstein (A BIOGRAPHY)</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-success">
        <div class="panel-body"><img src="${z}/c3.jpg" class="img-responsive" style="height:300px;width:100%" alt="Image"></div>
        <div class="panel-footer">Captain America (Living Legend)</div>
      </div>
    </div>
  </div>
</div><br>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-body"><img src="${z}/c4.jpg" class="img-responsive" style="height:300px;width:100%" alt="Image"></div>
        <div class="panel-footer">To Kill A Mocking Bird</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-body"><img src="${z}/c5.jpg" class="img-responsive" style="height:300px;width:100%" alt="Image"></div>
        <div class="panel-footer">Sapeins</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-body"><img src="${z}/c6.jpg" class="img-responsive" style="height:300px;width:100%" alt="Image"></div>
        <div class="panel-footer">Radical Acceptance</div>
      </div>
    </div>
  </div>
</div><br><br>

<footer class="container-fluid text-center">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<footer>
    <div class="footer" id="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> Get to Know Us </h3>
                    <ul>
                        <li> <a href="#"> Contact Us </a> </li>
                        <li> <a href="#"> About Us </a> </li>
                    </ul>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> Contact Us </h3>
                    <ul>
                        <li><a href="#"><span class="glyphicon glyphicon-iphone"></span>+91-8860236013</a></li>
                        <li> <a href="#"><span class="glyphicon glyphicon-envelope"></span>support@bookbazar.com </a> </li>
                    </ul>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> Our Policies </h3>
                    <ul>
                        <li> <a href="#"> Refund/Return Policy </a> </li>
                        <li> <a href="#"> Terms and Condition </a> </li>
                        <li> <a href="#"> Shipping Policy </a> </li>
                        <li> <a href="#"> Privacy Policy </a> </li>
                    </ul>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> Address </h3>
                    <ul>
                        <li> <a href="#"> Book Bazar </a> </li>
                        <li> <a href="#">Ardee City, Sector 52,</a> </li>
                        <li> <a href="#"> Gurgaon, </a> </li>
                        <li> <a href="#">Haryana - 122011</a> </li>
                        <li> <a href="#">India</a> </li>
                    </ul>
                </div>
                <div class="col-lg-3  col-md-3 col-sm-6 col-xs-12 ">
                    <h3>  </h3>
                    <ul>
                        <li>
                            <div class="input-append newsletter-box text-center">
                                <input type="text" class="full text-center" placeholder="Email ">
                            </div>
                        </li>
                    </ul>
                    <ul class="social">
                        <li> <a href="https://www.facebook.com/login/"> <i class=" fa fa-facebook">   </i> </a> </li>
                        <li> <a href="https://twitter.com/login"> <i class="fa fa-twitter">   </i> </a> </li>
                        <li> <a href="https://plus.google.com/"> <i class="fa fa-google-plus">   </i> </a> </li>
                        <li> <a href="https://in.pinterest.com/"> <i class="fa fa-pinterest">   </i> </a> </li>
                        <li> <a href="https://www.youtube.com/"> <i class="fa fa-youtube">   </i> </a> </li>
                    </ul>
                </div>
            </div>
            <!--/.row--> 
        </div>
        <!--/.container--> 
    </div>
    <!--/.footer-->
    
    <div class="footer-bottom">
        <div class="container">
            <p class="pull-left"> Copyright © Book Bazar 2017. All right reserved. </p>
            <div class="pull-right">
                <ul class="nav nav-pills payments">
                	<li><i class="fa fa-cc-visa"></i></li>
                    <li><i class="fa fa-cc-mastercard"></i></li>
                    <li><i class="fa fa-cc-amex"></i></li>
                    <li><i class="fa fa-cc-paypal"></i></li>
                </ul> 
            </div>
        </div>
    </div>
    <!--/.footer-bottom--> 
</footer>
  

</body>
</html>

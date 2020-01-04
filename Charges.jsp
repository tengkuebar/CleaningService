<!DOCTYPE html>
<%@include file="dbconnection.jsp"%>
<html lang="en">

    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
 
     <!-- Site Metas -->
    <title>Charges</title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="style.css">
    <!-- Colors CSS -->
    <link rel="stylesheet" href="css/colors.css">
    <!-- ALL VERSION CSS -->
    <link rel="stylesheet" href="css/versions.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">

    <!-- Modernizer for Portfolio -->
    <script src="js/modernizer.js"></script>

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body class="host_version"> 

	<!-- Modal -->
	<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document">
		<div class="modal-content">


		</div>
	  </div>
	</div>

    <!-- LOADER -->
	<div id="preloader">
		<div class="loading">
			<div class="finger finger-1">
				<div class="finger-item">
				<span></span><i></i>
				</div>
			</div>
  			<div class="finger finger-2">
				<div class="finger-item">
				<span></span><i></i>
				</div>
			</div>
  			<div class="finger finger-3">
				<div class="finger-item">
				  <span></span><i></i>
				</div>
			</div>
  			<div class="finger finger-4">
				<div class="finger-item">
				<span></span><i></i>
				</div>
			</div>
  			<div class="last-finger">
				<div class="last-finger-item"><i></i></div>
			</div>
		</div>
	</div>
	<!-- END LOADER -->

    <header class="header header_style_01">
        <nav class="megamenu navbar navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html"><img src="images/logos/cleaningicon1.png" alt="image"></a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a  href="userhome.jsp">Home / Book</a></li>
                        <li><a class="active" href="Charges.jsp">Time Slot & Service Charges</a></li>
                        <li><a href="history.jsp">Booking History</a></li>
                        <li><a href="index.jsp">Logout</a></li>
                    </ul>

                </div>
            </div>
        </nav>
    </header>
	
	<div class="all-title-box">
		<div class="container text-center">
			<h1>Service Charges<span class="m_1">Cleaning Services Charges are based on Time Slot and for Selected Rooms.</span></h1>
		</div>
	</div>
	
	<div id="pricing" class="section lb">
        <div class="container">
            <div class="section-title text-center">
                <h3>Get to Know Your Charges </h3>
              
            </div><!-- end title -->


            <hr class="invis">

            <div class="row">
                <div class="col-md-12">
                    <div class="tab-content">
                        <div class="tab-pane active fade in" id="tab1">
                            <div class="row text-center">
                                <div class="col-md-4">
                                    <div class="pricing-table pricing-table-highlighted">
                                        <div class="pricing-table-header grd1">
                                            <h2>Morning Fresh Start</h2>
                                            <h3>9AM - 12PM</h3>
                                        </div>
                                        <div class="pricing-table-space"></div>
                                        <div class="pricing-table-features">
                                            <p><i class="fa fa-link"></i> <strong>20$</strong> Bedroom</p>
                                            <p><i class="fa fa-link"></i> <strong>40$</strong> Bathroom</p>
                                            <p><i class="fa fa-link"></i> <strong>25$</strong> Dining Room</p>
                                            <p><i class="fa fa-link"></i> <strong>15$</strong> Living Room</p>
                                        </div>
                                        <div class="pricing-table-sign-up">
                                            <a href="userhome.jsp" data-scroll class="btn btn-light btn-radius btn-brd grd1 effect-1">Order Now</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="pricing-table pricing-table-highlighted">
                                        <div class="pricing-table-header grd1">
                                            <h2>Lunch Time</h2>
                                            <h3>12PM - 3PM</h3>
                                        </div>
                                        <div class="pricing-table-space"></div>

                                        <div class="pricing-table-features">
                                            <p><i class="fa fa-life-ring"></i> <strong>20$</strong> Bedroom</p>
                                            <p><i class="fa fa-life-ring"></i> <strong>40$</strong> Bathroom</p>
                                            <p><i class="fa fa-life-ring"></i> <strong>25$</strong> Dining Room</p>
                                            <p><i class="fa fa-life-ring"></i> <strong>15$</strong> Living Room</p>
                                        </div>
                                        <div class="pricing-table-sign-up">
                                            <a href="userhome.jsp" data-scroll class="btn btn-light btn-radius btn-brd grd1 effect-1">Order Now</a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="pricing-table pricing-table-highlighted">
                                        <div class="pricing-table-header grd1">
                                            <h2>Evening Settlement</h2>
                                            <h3>3PM - 5PM</h3>
                                        </div>
                                        <div class="pricing-table-space"></div>
                                        <div class="pricing-table-features">
                                           <p><i class="fa fa-rocket"></i> <strong>20$</strong> Bedroom</p>
                                            <p><i class="fa fa-rocket"></i> <strong>40$</strong> Bathroom</p>
                                            <p><i class="fa fa-rocket"></i> <strong>25$</strong> Dining Room</p>
                                            <p><i class="fa fa-rocket"></i> <strong>15$</strong> Living Room</p>
                                        </div>
                                        <div class="pricing-table-sign-up">
                                            <a href="userhome.jsp" data-scroll class="btn btn-light btn-radius btn-brd grd1 effect-1">Order Now</a>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- end row -->
                        </div><!-- end pane -->
                    </div><!-- end content -->
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->
	
    
    
       
    </footer><!-- end footer -->

   <div class="copyrights">
        <div class="container">
            <div class="footer-distributed">
                <div class="footer-left">                   
                    <p class="footer-company-name">All Rights Reserved. &copy; 2019-2020 <a href="#">Cleaning Service</a> Design By : <a href="#">Raisa Zesira</a></p>
                </div>


            </div>
        </div><!-- end container -->
    </div><!-- end copyrights -->

    <a href="#" id="scroll-to-top" class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>

    <!-- ALL JS FILES -->
    <script src="js/all.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/custom.js"></script>

</body>
</html>
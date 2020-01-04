<!DOCTYPE html>
<html lang="en">

    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
 
     <!-- Site Metas -->
    <title>Cleaning System</title>  
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
                <div class="modal-header tit-up">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Customer Login</h4>
                </div>
                <div class="modal-body customer-box row">
                        <div class="col-md-12">
                                <!-- Nav tabs -->
                                <ul class="nav nav-tabs">
                                        <li class="active"><a href="#Login" data-toggle="tab">Login</a></li>
                                        <li><a href="#Registration" data-toggle="tab">Registration</a></li>
                                </ul>
                                <!-- Tab panes -->
                                <div class="tab-content">
        <div class="tab-pane active" id="Login" >
                <form role="form" class="form-horizontal" action="logincheck.jsp" method="post" >
                <div class="form-group">
                        <div class="col-sm-12">
                                <input class="form-control" name="email" placeholder="Email" type="text">
                        </div>
                </div>
                <div class="form-group">
                        <div class="col-sm-12">
                                <input class="form-control" id="password" name="password"  placeholder="Password" type="password">
                        </div>
                </div>
                <div class="row">
                        <div class="col-sm-10">
                                <button type="submit" class="btn btn-light btn-radius btn-brd grd1">
                                        Submit
                                </button>
                              
                        </div>
                </div>
                </form>
        </div>
        <div class="tab-pane" id="Registration">
                <form role="form" class="form-horizontal" action="dregister" method="post" >
                <div class="form-group">
                        <div class="col-sm-12">
                                <input class="form-control"  name="user" placeholder="Username" type="text">
                        </div>
                </div>
                <div class="form-group">
                        <div class="col-sm-12">
                                <input class="form-control" id="email" name="email" placeholder="Email" type="email">
                        </div>
                </div>
                <div class="form-group">
                        <div class="col-sm-12">
                                <input class="form-control" id="password" name="password"  placeholder="Password" type="password">
                        </div>
                </div>
                <div class="row">							
                        <div class="col-sm-10">
                                <button type="submit" class="btn btn-light btn-radius btn-brd grd1">
                                        Save &amp; Continue
                                </button>
                                <button type="button" class="btn btn-light btn-radius btn-brd grd1">
                                        Cancel</button>
                        </div>
                </div>
                                                </form>
                                        </div>
                                </div>
                        </div>
                </div>
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
                        <!--<li><a class="active" href="index.html">Home</a></li>-->
                        <!--<li><a href="features.html">Features </a></li>-->
<!--                        <li><a href="domain.html">Domain</a></li>
                        <li><a href="hosting.html">Hosting</a></li>
                        <li><a href="pricing.html">Pricing</a></li>
                        <li><a href="testimonials.html">Testimonials</a></li>-->
                        <!--<li><a href="contact.html">Contact</a></li>-->
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a class="btn-light btn-radius btn-brd log" href="#" data-toggle="modal" data-target="#login"><i class="flaticon-padlock"></i> Customer Login</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
	
	<div id="bootstrap-touch-slider" class="carousel bs-slider fade  control-round indicators-line" data-ride="carousel" data-pause="hover" data-interval="false" >
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#bootstrap-touch-slider" data-slide-to="0" class="active"></li>
			<li data-target="#bootstrap-touch-slider" data-slide-to="1"></li>
			<li data-target="#bootstrap-touch-slider" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<div id="home" class="first-section" style="background-image:url('uploads/Slide11.jpg');">
					<div class="container">
						<div class="row">
							<div class="col-md-12 col-sm-12 text-center">
								<div class="big-tagline">
									<!--<img src="images/logos/logo-hosting.png" alt="image">-->
									<h2 data-animation="animated zoomInRight">Best <strong>Cleaning Services</strong> Company</h2>
									<p class="lead" data-animation="animated fadeInLeft">Professional green house cleaning and eco-maid service. </p>
                                                                </div>
							</div>
						</div><!-- end row -->            
					</div><!-- end container -->
				</div><!-- end section -->
			</div>
			<div class="item">
				<div id="home" class="first-section" style="background-image:url('uploads/Slide12.jpg');">
					<div class="container">
						<div class="row">
							<div class="col-md-12 col-sm-12 text-center">
								<div class="big-tagline">
									<!--<img src="images/logos/logo-hosting.png" alt="image">-->
									<h2 data-animation="animated zoomInRight">Find the right <strong> Neat, Sweet And Discreet </strong> Cleaning Service</h2>
									<p class="lead" data-animation="animated fadeInLeft">Professional quality cleaning with a personal touch. </p>
								</div>
							</div>
						</div><!-- end row -->            
					</div><!-- end container -->
				</div><!-- end section -->
			</div>
			<div class="item">
				<div id="home" class="first-section" style="background-image:url('uploads/Slide13.jpg');">
					<div class="container">
						<div class="row">
							<div class="col-md-12 col-sm-12 text-center">
								<div class="big-tagline">
									<!--<img src="images/logos/logo-hosting.png" alt="image">-->
									<h2 data-animation="animated zoomInRight">Clean <strong>'N' </strong>  Care </h2>
									<p class="lead" data-animation="animated fadeInLeft">"Care" isn't a word that's usually part of a cleaning service's name, so it stands out while saying that our company cares about your property.</p>
                                                                </div>
							</div>
						</div><!-- end row -->            
					</div><!-- end container -->
				</div><!-- end section -->
			</div>
			<!-- Left Control -->
			<a class="left carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="prev">
				<span class="fa fa-angle-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>

			<!-- Right Control -->
			<a class="right carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="next">
				<span class="fa fa-angle-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	
  

            </div><!-- end row -->
        </div><!-- end container -->
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
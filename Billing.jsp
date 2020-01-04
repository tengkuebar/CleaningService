<%@page import="java.util.Vector"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<%@include file="dbconnection.jsp"%>
<html lang="en">

    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
 
     <!-- Site Metas -->
    <title>User Home</title>  
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
                        <li><a class="active" href="userhome.jsp">Home / Book</a></li>
                        <li><a href="Charges.jsp">Time Slot & Service Charges</a></li>
                        <li><a href="history.jsp">Booking History</a></li>
                        <li><a href="index.jsp">Logout</a></li>
                    </ul>

                </div>
            </div>
        </nav>
    </header>
	
	<div class="all-title-box">
		<div class="container text-center">
			<h1>Billing Page<span class="m_1">Check your Cleaning Services Bill amount, Time Slot and Selected Rooms.</span></h1>
		</div>
	</div>
	   <%
String username, email, date, slot="";
int bedroom, bathroom, living,dining=0;
int total=0;
int cnt=0;
int cnt1=0;
Vector teams=new Vector(); 
Vector teamsavailable=new Vector(); 
Vector teamsselected=new Vector(); 
String slot1="";
String team=""; String teamn="";
        try{
          
        email = request.getParameter("email");
        username = request.getParameter("username");
        date = request.getParameter("date");
        slot = request.getParameter("slot");
        bedroom = Integer.parseInt(request.getParameter("bedroom"));
        bathroom = Integer.parseInt(request.getParameter("bathroom"));
        living = Integer.parseInt(request.getParameter("living"));
        dining = Integer.parseInt(request.getParameter("dining"));
        
        if(slot.equals("1"))
        {
            slot1="9AM - 12PM";
        }else if(slot.equals("2"))
        {
            slot1="12PM - 3PM";
        }else {
            slot1="3PM - 5PM";
        }
        
        total=bedroom+bathroom+living+dining;
        
        

        
    
    String Query3="Select count(*) from billing where slot='"+slot+"' and dateb = '"+date+"' ";
    PreparedStatement ps3=con.prepareStatement(Query3);
   //.println(Query3+"<br>");
    ResultSet rs3=ps3.executeQuery();
    if(rs3.next())
    {
        cnt1=rs3.getInt(1);
        
     }
 

    if(cnt1<10) 
    {
        %>
        

    
    <div id="support" class="section wb">
        <div class="container">
            <div class="section-title text-center">
                <h3>Check your Billing Details</h3>
                <p class="lead">Let us give you booked details.</p>
            </div><!-- end title -->

            <div class="row">
                <div class="col-md-12">
                    <div class="contact_form">
                        <div id="message"></div>
                        <form id="contactform" class="row" action="Bookslot" name="contactform" method="post">
                            <fieldset class="row-fluid">
                                 <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                  Email id <input type="text" name="email" value ="<%=email%>" id="first_name" class="form-control" readonly>
                                </div> 
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                   Customer Name <input type="text" name="username" value ="<%=username%>" id="first_name" class="form-control" readonly>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                   Date <input type="text" name="date" id="last_name" value ="<%=date%>" class="form-control" readonly>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                   Slot <input type="text" name="slot1" value ="<%=slot1%>" id="first_name" class="form-control" readonly>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                   Slot No.<input type="hiddden" name="slot" value ="<%=slot%>" id="first_name" class="form-control" readonly>
                                   </div>
                                
                                 <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                   Team<input type="text" name="team" id="last_name" value ="Team<%=cnt1%>" class="form-control" readonly>
                                </div>
                                 <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                
                                   Bedroom amount <input type="text" name="bedroom" value ="<%=bedroom%> RM" id="first_name" class="form-control" readonly>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                   Bathroom amount <input type="text" name="bathroom" value ="<%=bathroom%> RM" id="first_name" class="form-control" readonly>
                                    
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                
                                  Living room amount  <input type="text" name="living" value ="<%=living%> RM" id="first_name" class="form-control" readonly>
                                 
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                
                                  Dining room amount  <input type="text" name="dining" value ="<%=dining%> RM" id="first_name" class="form-control" readonly>
                                
                                </div>
                              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">
                                  Total amount  <input type="text" name="total" value ="<%=total%> RM" id="first_name" class="form-control" readonly>
                                </div>  
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">
                                    <button type="submit" value="SEND" id="submit" class="btn btn-light btn-radius btn-brd grd1 btn-block">Book</button>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->

        
        <%
    }
    else
    {
         out.println("fail");
         %> 
      <script language="javascript" type="text/javascript">
          alert('Slot Not Available. Please book other slot');
window.location = "userhome.jsp";
</script>
<%
  
    }

                       
        
                     %>


   



   <%
               }catch(Exception e){out.println(e.getMessage());}
                    %>
       
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
<!DOCTYPE html>
<!--[if IE 8]>			<html class="ie ie8"> <![endif]-->
<!--[if IE 9]>			<html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->	
<%@page import="java.sql.ResultSet"%>
<%@page import="network.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="util.upload"%>    
<html> <!--<![endif]-->
    <head>

        <!-- Meta -->
        <meta charset="utf-8">
        <meta name="keywords" content="HTML5 Template" />
        <meta name="description" content="Multipress - Responsive Multipurpose HTML5 Template">
        <meta name="author" content="">

        <title>Preventing and Detecting the Data Discharge Analysis</title>

        <!-- Mobile Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Web Fonts  -->
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,100italic,100,300,300italic,400italic,500,700,700italic,900italic,900,500italic' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,700,600italic,800' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Arimo:400,700' rel='stylesheet' type='text/css'>

        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.css" rel="stylesheet">

        <!-- FontAwesome icons CSS -->
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">

        <!-- Theme Styles CSS-->
        <link href="css/styles.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/accordion.css">
        <link href="js/owl-carousel/owl.carousel.css" rel="stylesheet">
        <link href="js/owl-carousel/owl.theme.css" rel="stylesheet">
        <link href="js/rs-plugin/css/settings.css" rel="stylesheet" />
        <link href="js/flexslider/flexslider.css" rel="stylesheet">
        <link rel="Stylesheet" type="text/css" href="css/jquery_ui.css" /> 
        <link rel="Stylesheet" type="text/css" href="css/superTabs.css" />
        <link rel="stylesheet" type="text/css" href="css/isotope.css">
        <link class="jsbin" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
        <script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
        <script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.0/jquery-ui.min.js"></script>
        <meta charset=utf-8 />
    </head>
    <body>
        <script>
            function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blah')
                    .attr('src', e.target.result)
                    .width(350)
                    .height(300);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
            
        </script>
        <div class="body">

            <!-- Header -->
            <header>
                <div class="container">
                    <div class="col-md-12">
                        <!-- Logo -->
                        <div class="col-md-2">
                            <center><h1 class="logo"><a href="#">Preventing and Detecting the Data Discharge Analysis</a></h1></center>
                        </div>
                        <!-- Navmenu -->
                        <div class="col-md-10" style="margin-left: -200px">
                            <div id='topnav'>
                                <ul class="top-menu">
                                    <li class='has-sub'>
                                        <a href='uhome.jsp'><span>Home</span></a>
                                    </li>
<!--                                    <li class='has-sub'>
                                        <a href="userlogin.jsp"><span>User Login</span></a>
                                    </li>
                                    <li class="has-sub active">
                                        <a href='registration.jsp'><span>Registration</span></a>
                                    </li>-->
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- Header -->
            <div class="page-head">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6" style="width: 600px">
                            <h3 style="color: cornflowerblue;">File UnLock</h3>
                        </div>
                    </div>
                </div>
            </div>
            <!--<div style="background-image: url('images/reg3.jpg');height: 600px;margin-top: -20px">-->
            <div class="col-md-6">
                <center><h3>   </h3></center>
            </div>
            <div class="space0"></div>
            <!-- Contact wrap -->
            <center><div class="container" style="">
                <div class="row" style="width: 500px"><br><br><br>
                    <div class="col-md-8">
                        <form class="contact-form" action="unlockupdate.jsp" method="get" enctype="multipart/form-data">
                                <select id="keys" name="file" class="form-control" style="width: 220px; height: 30px;" > 
                                        <option value="-1" >-Select-</option>
                                        
                                        <%
                                        
                                        
                                         String  Name=(String)session.getAttribute("Name");
                                            String sql1 = "select * from upload where name= '" + Name + "' AND showfile='NO' ";
                                           
                                            PreparedStatement pst1 = null;
                                            Connection conn1 = null;
                                            try {
                                                conn1 = DbConnection.getConnection();
                                                pst1 = conn1.prepareStatement(sql1);
                                                ResultSet rs1 = pst1.executeQuery();
                                                while (rs1.next()) 
//                                            
        {%>
                                        <option value="<%=rs1.getString("sub")%>"><%=rs1.getString("sub")%></option>
                                        <%}
                                                session.setAttribute("sub", rs1.getString("sub"));
                                                System.out.println("get sub");
                                            } catch (Exception e) {
                                                e.printStackTrace();
                                            }%>
                                    </select>
                                    
                                    <br><div class="space10"></div>
                         <input type="submit" value="" style="background-image: url('images/button.png');width: 110px;height: 42px">
                            <br><br><br><br><br><br></form>
                    </div>
                    <!-- Sidebar -->
                </div>
                </div></center>
            </div>
    
            <!-- Contact wrap -->

            <div class="space80"></div>

            <!-- Footer-Copyright -->
            <div class="footer-bottom">
                <a class="back-top" href="#"><i class="fa fa-chevron-up"></i></a>
                <div class="container">
                    <div class="row-fluid">
                        <div class="col-md-6" hidden>
                            <p>Copyright 2015.All Rights Reserved</p>
                            <p  hidden class="_txt">Web Design: <a href="http://www.metamorphozis.com" class="_link">Free Website Templates</a></p>
                        </div>
                        <div class="col-md-6" hidden>
                            <ul class="top-contact">
                                <li><i class="fa fa-phone"></i> 1234-567-890-12</li>
                                <li><i class="fa fa-envelope"></i> contact@domain.com</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Footer-Copyright -->
        </div>
        <!-- JavaScript -->
        <script src="js/jquery-1.8.3.min.js"></script>
        <script src="js/rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
        <script src="js/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
        <script src="js/rs-plugin/rs.home.js"></script>
        <script src="js/superTabs.js"></script>
        <script type="text/javascript" src="http://www.google.com/jsapi"></script> 
        <script type="text/javascript">google.load("jqueryui", "1.7.2");</script> 
        <script src="js/bootstrap.js"></script>
        <script src="js/flexslider/jquery.flexslider.js"></script>
        <script src="js/owl-carousel/owl.carousel.js"></script>
        <script src="js/jquery.akordeon.js"></script>
        <script src="js/jflickrfeed.min.js"></script>
        <script src="js/tab.js"></script>
        <script src="js/jquery.isotope.min.js"></script>
        <script src="js/jquery.mobilemenu.js"></script>
        <script src="js/magnific-popup/jquery.magnific-popup.js"></script> 
        <script src="js/main.js"></script>
        <script src="js/jquery-ui.js"></script>

        <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
        <script type="text/javascript" src="js/jquery.gmap.js"></script>
        <script type="text/javascript" src="js/contact.js"></script>

    </body>
</html>

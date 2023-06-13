<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>MyLOGO | Contact</title>

        <!-- CSS -->

        <!-- google fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
		<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700' rel='stylesheet' type='text/css'>
		
        <!-- files -->
        <link href="resources/css/bootstrap.min.css" rel="stylesheet">
        <link href="resources/css/magnific-popup.css" rel="stylesheet">
        <link href="resources/css/owl.carousel.css" rel="stylesheet">
        <link href="resources/css/owl.carousel.theme.min.css" rel="stylesheet">
        <link href="resources/css/ionicons.css" rel="stylesheet">
        <link href="resources/css/main.css" rel="stylesheet">

    </head>
    <body>
    <%@include file="./include/header.jsp"%>

    <!-- Header -->

        <section id="header" class="main-header contact-header inner-header">
            <div class="container">
                <div class="row">
                    <nav class="navbar navbar-default">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#site-nav-bar" aria-expanded="false">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>

                        <div class="collapse navbar-collapse" id="site-nav-bar">
                            <ul class="nav navbar-nav">
                                <li><a href="./shop.jsp">shop</a></li>
                                <li><a href="./aiLogo.jsp">AI추천로고</a></li>
                                <li class="active"><a href="./buy.jsp">구매문의</a></li>
                                <li><a href="./contact.jsp">고객센터</a></li>
                            </ul>
                        </div><!-- /.navbar-collapse -->
                    </nav>
                </div>

                <div class="intro row">
                    <div class="overlay"></div>
                    <div class="col-sm-12">
                        <ol class="breadcrumb">
                            <li><a href="./index.jsp">Home</a></li>
                            <li class="active">Contact</li>
                        </ol>
                    </div>
                </div> <!-- /.intro.row -->
            </div> <!-- /.container -->
            <div class="nutral"></div>
        </section> <!-- /#header -->
    <!-- Contact -->
        <section class="contact">
            <div class="container page-bgc">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="title-box">
                            <p>Get in touch</p>
                            <h2 class="title mt0">With us</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="boxed">
                        <div class="col-sm-12">
                            <p class="inner-p">
                                Lorem ipsum dolor sit amet event landing template, consectetur adipisicing elit. Suscipit corrupti facilis event landing template, enim earum numquam minus veritatis nobis accusamus similique.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div id="map" class="col-sm-12">
                        <iframe class="map_canvas" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3106.278875347398!2d-77.05845558511638!3d38.87186095605503!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89b7b6df29ed2c27%3A0xaf83d0f8c013532f!2sThe+Pentagon!5e0!3m2!1sen!2sbd!4v1463572803138" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>
                </div>
                <div class="row">
                    <div class="boxed">
                        <div class="col-sm-8">
                            <h4>Message for us</h4>
                            <form action="contact.php" class="contact-form" id="contactForm" method="post">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="First Name*" id="fname" name="fname" required>
                                        </div> <!-- /.form-group -->
                                    </div> <!-- /.col-sm-6 -->
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Last Name" id="lname" name="lname">
                                        </div> <!-- /.form-group -->
                                    </div> <!-- /.col-sm-6 -->
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <input type="email" class="form-control" placeholder="Email*" id="email" name="email" required>
                                        </div> <!-- /.form-group -->
                                    </div> <!-- /.col-sm-6 -->
                                     <div class="col-sm-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Phone Number" id="phone" name="phone">
                                        </div> <!-- /.form-group -->
                                    </div> <!-- /.col-sm-6 -->
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <textarea class="form-control" rows="6" placeholder="Write something..." name="message"></textarea>
                                        </div> <!-- /.form-group -->
                                    </div> <!-- /.col-sm-12 -->
                                    <div class="text-center mt20 col-sm-12">
                                        <button type="submit" class="btn btn-MyLOGO pull-left" id="cfsubmit">Send Message</button>
                                    </div>
                                </div>
                            </form>
                            <div id="contactFormResponse"></div>
                        </div> <!-- /.col-sm-8 -->
                        <div class="col-sm-4">
                            <h4>Contact details</h4>
                            <div class="row">
                                <div class="col-xs-3">
                                    <img class="imgresponsive" src="resources/images/address.png" alt="con">
                                </div>
                                <div class="col-xs-9">
                                    <h5>Address</h5>
                                    <p class="contact-detail">
                                        44 new design street, melbourne 005<br>
                                        Australia 300
                                    </p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-3">
                                    <img class="imgresponsive" src="resources/images/phone.png" alt="con">
                                </div>
                                <div class="col-xs-9">
                                    <h5>Phone</h5>
                                    <p class="contact-detail">
                                        01 (800) 433 744<br>
                                        01 (800) 433 633
                                    </p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-3">
                                    <img class="imgresponsive" src="resources/images/support.png" alt="con">
                                </div>
                                <div class="col-xs-9">
                                    <h5>Support</h5>
                                    <p class="contact-detail">
                                        support@example.com
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    <!-- footer -->
    <%@include file="./include/footer.jsp"%>
    <!-- footer end -->

    <!-- Scripts -->
        <script src="resources/js/jquery-1.12.3.min.js"></script>
        <script src="resources/js/bootstrap.min.js"></script>
        <script src="resources/js/jquery.magnific-popup.min.js"></script>
        <script src="resources/js/owl.carousel.min.js"></script>
        <script src="resources/js/script.js"></script>

    </body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>MyLOGO</title>

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
        <section id="header" class="main-header">
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
                                <li class="active"><a href="index.jsp">Home</a></li>
                                <li><a href="shop.jsp">SHOP</a></li>
                                <li><a href="aiLogo.jsp">AI추천로고</a></li>
                                <li><a href="buy.jsp">구입문의</a></li>
                                <li><a href="customer.jsp">고객센터</a></li>
                            </ul>
                        </div><!-- /.navbar-collapse -->
                    </nav>
                </div>
                
                <div class="intro row">
                    <div class="overlay"></div>
                    <div class="col-sm-6 col-sm-offset-6">
                        <h2 class="header-quote">Save time and lower</h2>
                        <p>
                            Your sweeping costs with the
                        </p>
                        <h1 class="header-title">Robot<br><span class="thin">Factory</span></h1>
                    </div>
                </div> <!-- /.intro.row -->
            </div> <!-- /.container -->
            <div class="nutral"></div>
        </section> <!-- /#header -->

    <!-- Product -->

        <section id="product" class="product">
            <div class="container section-bg">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="title-box">
                            <h2 class="title">Welcom to our <span>MyLOGO Factory</span></h2>
                            <a href="#" class="btn btn-default btn-MyLOGO">view products</a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-4">
                        <div class="porduct-box">
                            <img class="img-responsive" src="resources/images/product-1.jpg" alt="product">
                            <h3 class="product-title">Space MyLOGO</h3>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="porduct-box">
                            <img class="img-responsive" src="resources/images/product-2.jpg" alt="product">
                            <h3 class="product-title">Sports MyLOGO</h3>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="porduct-box">
                            <img class="img-responsive" src="resources/images/product-3.jpg" alt="product">
                            <h3 class="product-title">Toy for kids</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="classic-title">
                            <div class="stiker">
                                <h3 class="inner-stiker">Why we are best</h3>
                            </div>
                            <h3 class="outer-stiker">We Received best factory award in the 1998</h3>
                            <div class="incline-div"></div>
                        </div>
                    </div>
                    <div class="boxed">
                        <div class="col-sm-4">
                            <p class="p-large">
                                Sed lobortis volutpat imperdiet. faci.Fusce nec arcu ac neque tincidunt rutru tristique feugiat purus, id semper nisl tin vitae.Roin lobortis porta mattis. Mauris tincidunurus nec viverra mattis. Nunc convallis massa at eleifend blandit. Donec interdum.
                            </p>
                        </div>
                        <div class="col-sm-4">
                            <p>
                                Ead lobortis volutpat imperdiet. Nulla faci.Fusce nec arcu ac neque tincidunt rutrum. Pro tristique feugiat purus, id semper nisl tincidunt vitae.Roin lobortis porta mattis. Mauris tincidunt purus nec viverra mattis. Nunc convallis massa at eleifend blandit. Donec interdum, sem lacinia dignissime varius, nulla eros consectetur mauris. 
                            </p>
                        </div>
                        <div class="col-sm-4">
                            <p>
                                Sed lobortis volutpat imperdiet. Nulla faci.Fusce nec arcu ac neque tincidunt rutrum. Pro tristique feugiat purus, id semper nisl tincidunt vitae.Roin lobortis porta mattis. Mauris tincidunt purus nec viverra mattis. Nunc convallis massa at eleifend blandit. Donec interdum, sem lacinia dignissime varius, nulla eros consectetur mauris. 
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    <!-- History -->
        <section id="history" class="history">
            <div class="container section-bg">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="title-box">
                            <p>Since 1990</p>
                            <h2 class="title mt0">Discover our history</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="boxed">
                        <div class="col-sm-10 col-sm-offset-1">
                            <p>
                                Lorem ipsum dolor sit amet consectetuer adipiscing elit sed diam nonummynibh euismod tincidunt ut laoree Dolore magna aliquam erat volutpat.Lorem ipsum dolor sit amet consectetuer adipiscing elit sed diam nonummynibh euismod tincidunt ut laoree Dolore magna aliquam erat .
                            </p>
                        </div>
                        <div class="col-sm-12">
                            <img class="img-responsive" src="resources/images/history.png" alt="history">
                        </div>
                    </div>
                </div>
            </div>
        </section>


    <!-- FAQ -->
        <section class="faq">
            <div class="container page-bgc">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="title-box">
                            <p>Frequently asked</p>
                            <h2 class="title mt0">Questions</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-8 col-sm-offset-2">
                        <p class="inner-p">
                            Lorem ipsum dolor sit amet event landing template, consectetur adipisicing elit. Suscipit corrupti facilis event landing template, enim earum numquam minus veritatis nobis accusamus similique, totam?
                        </p>
                        <div id="accordion" role="tablist" aria-multiselectable="true" class="panel-group">
                            <div class="panel panel-default">
                                <div id="headingOne" role="tab" class="panel-heading">
                                    <h4 class="panel-title">
                                        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne" class="collapsed">How do I become an author?</a>
                                    </h4>
                                </div>
                                <div id="collapseOne" role="tabpanel" aria-labelledby="headingOne" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                                    <div class="panel-body">
                                        <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div id="headingTwo" role="tab" class="panel-heading">
                                    <h4 class="panel-title">
                                        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo" class="">Helpful Resources for Authors &amp; for marketers</a>
                                    </h4>
                                </div>
                                <div id="collapseTwo" role="tabpanel" aria-labelledby="headingTwo" class="panel-collapse collapse in" aria-expanded="true">
                                    <div class="panel-body">
                                        <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div id="headingThree" role="tab" class="panel-heading">
                                    <h4 class="panel-title">
                                        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree" class="collapsed">How much money can I make?</a>
                                    </h4>
                                </div>
                                <div id="collapseThree" role="tabpanel" aria-labelledby="headingThree" class="panel-collapse collapse" aria-expanded="false">
                                    <div class="panel-body">
                                        <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div id="headingFour" role="tab" class="panel-heading">
                                    <h4 class="panel-title">
                                        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour" class="collapsed">Can I offer my items for free on a promotional basis?</a>
                                    </h4>
                                </div>
                                <div id="collapseFour" role="tabpanel" aria-labelledby="headingFour" class="panel-collapse collapse" aria-expanded="false">
                                    <div class="panel-body">
                                        <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
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
                                        <button type="submit" class="btn btn-robot pull-left" id="cfsubmit">Send Message</button>
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
    <!-- 푸터 영역 입니다. -->
    <%@include file="./include/footer.jsp"%>
    <!-- 푸터 영역 끝 -->

    <!-- Scripts -->
        <script src="resources/js/jquery-1.12.3.min.js"></script>
        <script src="resources/js/bootstrap.min.js"></script>
        <script src="resources/js/jquery.magnific-popup.min.js"></script>
        <script src="resources/js/owl.carousel.min.js"></script>
        <script src="resources/js/script.js"></script>

    </body>
</html>
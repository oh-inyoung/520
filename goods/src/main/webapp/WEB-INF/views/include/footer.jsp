<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 공통으로 선언해서 사용할 라이브러리가 있는 파일 -->
<!-- JSTL 사용을 위한 선언 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- 명령어 대체 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <!-- 국가별 설정 -->
<!-- context 경로 -->
<!-- path = xx -> set var="path" value= "xx" -->
<!-- path 변수를 선언해서 전달신호가 온 곳의 경로를 저장 -->
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- 스크립트 추가 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1"><!--반응형웹-->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>	
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

    <!-- Footer -->
        <section id="footer-widget" class="footer-widget">
            <div class="container header-bg">
                <div class="row">
                    <div class="col-sm-3">
                        <h3>Our Popular Services</h3>
                        <ul>
                            <li><a href="#">Space MyLOGO</a></li>
                            <li><a href="#">Lego MyLOGO</a></li>
                            <li><a href="#">Toy for MyLOGO</a></li>
                            <li><a href="#">Industry MyLOGO</a></li>
                            <li><a href="#">Sports MyLOGO</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-3">
                        <h3>Important Link</h3>
                        <ul>
                            <li><a href="#">Lorem</a></li>
                            <li><a href="#">Ipsum</a></li>
                            <li><a href="#">Dolar</a></li>
                            <li><a href="#">Set amet</a></li>
                            <li><a href="#">Iodiet lorem</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-3">
                        <h3>Our Latest Services</h3>
                        <ul>
                            <li><a href="#">Edu MyLOGO</a></li>
                            <li><a href="#">Low MyLOGO</a></li>
                            <li><a href="#">Mega MyLOGO</a></li>
                            <li><a href="#">Industry MyLOGO</a></li>
                            <li><a href="#">Sports MyLOGO</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-3">
                        <h3>Our Services</h3>
                        <div class="widget-img-box">
                            <a class="test-popup-link" href="resources/images/widget-big-1.png">
                                <img class="widget-img" src="resources/images/widget-1.png" alt="widget">
                            </a>
                            <a class="test-popup-link" href="resources/images/widget-big-2.png">
                                <img class="widget-img" src="resources/images/widget-2.png" alt="widget">
                            </a>
                            <a class="test-popup-link" href="resources/images/widget-big-3.png">
                                <img class="widget-img" src="resources/images/widget-3.png" alt="widget">
                            </a>
                            <a class="test-popup-link" href="resources/images/widget-big-4.png">
                                <img class="widget-img" src="resources/images/widget-4.png" alt="widget">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <footer class="footer text-center">
            <h3>&copy; Theme by <a href="https://themewagon.com/">Themewagon</a></h3>
        </footer>
<!-- 푸터 영역 끝 -->

</body>
</html>
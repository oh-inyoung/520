<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 공통으로 선언해서 사용할 라이브러리가 있는 파일 -->
<!-- JSTL 사용을 위한 선언 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 명령어 대체 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- 국가별 설정 -->
<!DOCTYPE html>
<html>
<!-- context 경로 -->
<!-- path = xx -> set var="path" value= "xx" -->
<!-- path 변수를 선언해서 전달신호가 온 곳의 경로를 저장 -->
<c:set var="path" value="${pageContext.request.contextPath}" />

<head>
<!-- 스크립트 추가 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--반응형웹-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
    <!-- Site Header -->
        <div class="site-header-bg">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <a href="index.html"><img src="assets/images/logo.png" alt="logo"></a>
                    </div>
                    <div class="col-sm-3 col-sm-offset-3 text-right">
					<a href="${path}/sign_up"class="navbar-brand">회원가입</a>
					<c:choose>
						<c:when test="${sessionScope.userid == null}">
							<!-- 섹션에 아이디가 없으면 로그인이 안된상태 -->
							<a href="${path}/login"class="navbar-brand" >로그인</a>
						</c:when>
						<c:otherwise>
							<!-- 로그인이 된 상태 -->
							${sessionScope.username}회원님이 로그인 중입니다. <a href="${path}/loginout" class="navbar-brand">로그아웃</a>
						</c:otherwise>
					</c:choose>
				</div>
                </div>
            </div>
        </div>
	
</body>
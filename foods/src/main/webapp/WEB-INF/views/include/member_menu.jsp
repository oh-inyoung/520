<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>


<div style="text-align: center"> <!-- 구역나누기, 그룹나누기, 부분적인 작업공간을 나눌때 -->
	<a href="${path}/customer/list">게시판</a>|
	<a href="${path}/member/list">회원관리</a>| <!-- localhost:8080/member/list로 접속 -->
	<a href="${path}/shop/list">상품관리</a>| <!-- localhost:8080/member/list로 접속 -->
	<a href="${path}/food/list">AI 식단분석</a>| <!-- localhost:8080/member/list로 접속 -->
	<a href="${path}/member/write">회원가입</a>| <!-- localhost:8080/member/list로 접속 -->
	<c:choose>
		<c:when test="${sessionScope.memberId == null}"> <!-- 섹션에 아이디가 없으면 로그인이 안된상태 -->
			<a href="${path}/login">로그인</a>			
		</c:when>
		<c:otherwise> <!-- 로그인이 된 상태 -->
			${sessionScope.memberName}회원님이 로그인 중입니다. <a href="${path}/loginout">로그아웃</a>			
		</c:otherwise>
	</c:choose>
</div>
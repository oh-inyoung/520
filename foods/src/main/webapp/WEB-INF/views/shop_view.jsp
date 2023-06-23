<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<meta charset="UTF-8">
<title>상품상세</title>
<!-- CSS에서 id(#), class(.) 사용 -->
<%@ include file="./include/member_header.jsp" %> <!-- 해당파일을 연결 -->
<!-- 스크립트(Javascript-DOM, ajax, json) -->


</head>
<body>

<%@ include file="./include/member_menu.jsp" %> <!-- 해당파일을 연결 -->
<h2>상품 상세</h2>
<form name="form1" method="post" action = "${path}/foods/update">
	<input type="hidden" name="foodsId" value="${dto.foodsId}">
	<table border="1" width="400px">
		<tr>
			<td>상품 이미지</td>
			<td><td> <img src="${dto.foodsImg}"/></td> <!-- 이미지 경로를 설정하고 출력 -->
		</tr>
		<tr>
			<!-- 중요한 내용으로 노출을 피할 때는 type=hidden -->
			<td>상품명</td><!-- 기본키 - 구분하는 키, 반드시 데이터베이스 설계 1개이상 존재 -->
			<td><input type="text" name="foodsName" value="${dto.foodsName}" readonly></td>			
		</tr>
		<tr>
			<td>상품 카테고리</td>
			<td><input type="text" name="cateCode" value="${dto.cateCode}"></td>			
		</tr>
		
		<tr>
			<td>상품 가격</td>
			<td><input type="text" name="foodsPrice" value="${dto.foodsPrice }"></td>			
		</tr>	
		<tr>
			<td>상품 소개</td>
			<td><input type="text" name="foodsDetail" value="${dto.foodsDetail}"></td>			
		</tr>
		
		<tr>
			<td>등록날짜</td>
			<td>
				<!-- 모양에 맞춰서 출력 -->
				<fmt:formatDate value="${dto.foodsRegDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
			</td>			
		</tr>		
		<!-- form1개로 여러작업을 동시에 구현할 때는 submit사용(X)->javascript, ajax, JSON -->
		<!-- javascript,ajax,JSON은 사용시 반드시 id를 선언 -->
		
	</table>
</form>
</body>
</html>
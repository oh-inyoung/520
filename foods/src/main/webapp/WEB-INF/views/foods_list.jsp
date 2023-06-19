<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
<%@ include file="./include/member_header.jsp" %> <!-- 해당파일을 연결 -->
</head>
<body>
<%@ include file="./include/member_menu.jsp" %> <!-- 해당파일을 연결 -->
<!-- 회원 테이블 목록 -->
<H2>상품 목록</H2>
<!-- 버튼을 클릭하면 member/write get으로 연결 -->
<input type="button" value="상품등록" onclick="location.href='${path}/foods/write'">
<div class="container mt-3">
<table border="1" width="700px" class="table"> <!-- 표만들기 -->
	<tr> <!-- 행 -->
		<th>상품명</th>
		<th>카테고리 이름</th>
		<th>상품 가격</th>
		<th>상품 설명</th>
	</tr>
<!-- var=개별자료변수 items=Controller에서 전달받은 목록 -->
<c:forEach var="row" items="${list }">
	<tr> <!-- 반복적으로 회원정보를 출력하는 부분 -->
		<td>${row.foodsName }</td>   <!-- memberId는 필드명, vo에서 선언한 변수명 -->
		<%-- <td><a href="${path}/admin/index?foodsName=${row.foodsName}">${row.memberName }</a></td> <!-- 이름을 클릭시 상세페이지로 이동, EL은 변수값을 출력 -->  --%>
		<td>${row.cateCode }</td> 
		<td>${row.foodsPrice }</td>
		<td>${row.foodsDetail }</td>
	</tr>
</c:forEach>
</table>
</div>


</body>
</html>
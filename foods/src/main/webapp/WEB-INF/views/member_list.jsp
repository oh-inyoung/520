<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원목록</title>
<%@ include file="./include/member_header.jsp" %> <!-- 해당파일을 연결 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%@ include file="./include/member_menu.jsp" %> <!-- 해당파일을 연결 -->
<div class="container mt-3">
  <h2 style="text-align:center">회원 정보</h2>
  <p>회원정보 수정 및 탈퇴:</p>            
  <table class="table table-striped">
    <thead>
      <tr>
        <th>NO</th>
		<th>아이디</th>
		<th>이름</th>
		<th>비밀번호</th>
		<th>이메일</th>
		<th>가입날짜</th>
		<th>관리자구분</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="row" items="${list }">
	<c:choose>
		<c:when test="${sessionScope.admin=='1'}">
			<tr> <!-- 반복적으로 회원정보를 출력하는 부분 -->
				<td>${row.memberNo }</td>
				<td>${row.memberId }</td>   <!-- memberId는 필드명, vo에서 선언한 변수명 -->
				<td><a href="${path}/member/view?memberId=${row.memberId}">${row.memberName }</a></td> <!-- 이름을 클릭시 상세페이지로 이동, EL은 변수값을 출력 -->
				<td>${row.memberPw }</td>
				<td>${row.memberEmail }</td> 
				<td>${row.regdate }</td> 
				<td>${row.admin }</td> 
			</tr>
		</c:when>
		<c:otherwise>
			<c:if test="${row.memberId==sessionScope.memberId }">	
				<tr> <!-- 반복적으로 회원정보를 출력하는 부분 -->
					<td>${row.memberNo }</td>
					<td>${row.memberId }</td>   <!-- memberId는 필드명, vo에서 선언한 변수명 -->
					<td><a href="${path}/member/view?memberId=${row.memberId}">${row.memberName }</a></td> <!-- 이름을 클릭시 상세페이지로 이동, EL은 변수값을 출력 -->
					<td>${row.memberPw }</td>
					<td>${row.memberEmail }</td> 
					<td>${row.regdate }</td> 
					<td>${row.admin }</td> 	
				</tr>
			</c:if>
		</c:otherwise>
	</c:choose>
</c:forEach>
    </tbody>
  </table>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록</title>
<%@include file="../include/header.jsp"%> <!-- 해당파일을 연결 -->
</head>
<body>

<div class="container mt-3">
<form name="form1" method="post" action="${path}/loginCheck"> <!-- member_list에서 member/write사용(get) -->
    <div class="mb-3 mt-3">
      <label for="memberId">아이디</label>
      <input type="text" id="memberId" name="memberId"></td>	
    </div>
	<div class="mb-3">
      <label for="memberPw">비밀번호</label>
      <input type="text" id="memberPw" name="memberPw"></td>	
    </div>		
	<button type="button" id="btnLogin" class="btn btn-primary">로그인</button>	
</form>
</div>
</body>
</html>
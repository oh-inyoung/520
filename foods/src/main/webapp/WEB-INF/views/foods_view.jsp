<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<meta charset="UTF-8">
<title>상품등록</title>
<!-- CSS에서 id(#), class(.) 사용 -->
<%@ include file="./include/member_header.jsp" %> <!-- 해당파일을 연결 -->
<!-- 스크립트(Javascript-DOM, ajax, json) -->
<script>
	//현재 문서의 정보를 수집
	$("document").ready(		
		function() { //메소드 생성
			//btnUpdate id를 가지고 있는 버튼을 클릭했을 때
			$("#btnUpdate").click(					
				function(){
					//제약조건(대화상자-예(참,true),아니오(거짓,false))
					if(confirm("수정하시겠습니까?")) {
						//메세지창 alert("aa") - if ~ else ~ 사용할 때 정확한 처리위치 확인
						//문서에 form1 id에 action을 지정
						document.form1.action = "${path}/foods/update";
						//form1 id를 submit 처리
						document.form1.submit();
					}
				}
			
			);
		}	
	);
	$("document").ready(		
			function() { //메소드 생성
				//btnUpdate id를 가지고 있는 버튼을 클릭했을 때
				$("#btnDelete").click(					
					function(){
						if(confirm("삭제하시겠습니까?")) {
							//메세지창 alert("aa") - if ~ else ~ 사용할 때 정확한 처리위치 확인
							//문서에 form1 id에 action을 지정
							document.form1.action = "${path}/foods/delete";
							//form1 id를 submit 처리
							document.form1.submit();
						}
					}
				
				);
			}	
		);	
</script>

</head>
<body>

<%@ include file="./include/member_menu.jsp" %> <!-- 해당파일을 연결 -->
<h2>상품 관리</h2>
<form name="form1" method="post" action = "${path}/foods/update">
	<input type="hidden" name="foodsId" value="${dto.foodsId}">
	<table border="1" width="400px">
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
			<td>가입날짜</td>
			<td>
				<!-- 모양에 맞춰서 출력 -->
				<fmt:formatDate value="${dto.foodsRegDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
			</td>			
		</tr>		
		<!-- form1개로 여러작업을 동시에 구현할 때는 submit사용(X)->javascript, ajax, JSON -->
		<!-- javascript,ajax,JSON은 사용시 반드시 id를 선언 -->
		<tr>
			<td colspan="2"><input type="button" id="btnUpdate" value="수정">
				<input type="button" id="btnDelete" value="삭제">
				<div style="color:red">
					${message}
				</div>
			</td>
			
		</tr>			
	</table>
</form>
</body>
</html>
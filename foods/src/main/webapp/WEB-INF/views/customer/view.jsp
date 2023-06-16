<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<Title>Insert customerTitle here</Title>
<!--공통적은 파일을 include 폴더에 넣어 두고 필요할 때마다 include로 연결해서 사용 -->
<%@ include file="../include/member_header.jsp" %> <!-- 해당파일을 연결 -->
<script>
	$("document").ready(
		function(){
			$("#btnDelete").click(
				function() {
					location.href="${path}/customer/delete?customerNo=${dto.customerNo}";
				}		
			);
		}
		
	);
	$("document").ready(
			function(){
				$("#btnUpdate").click(
					function() {
						var customerTitle = $("#customerTitle").val();
						var customerContent = $("#customerContent").val();
						//유효성 검사
						if(customerTitle=="") {
							alert("제목을 입력하세요.");
							document.form1.customerTitle.focus();
							return;
						}
						if(content==""){
							alert("내용을 입력하세요.");
							document.form1.customerContent.focus();
							return;
						}
						document.form1.submit(); //폼을 전송
					}		
				);
			}
			
		);	
</script>
</head>
<body>
<!-- 처음 실행되는 화면  -->
<!-- JSTL-if, foreach 등 자바명령어를 태그화 시켜놓은 형식 -->
<!-- EL-전달받은 변수(값)을 쉽게 처리하는 형식 $ 대괄호안에 변수명을 기재 %=변수 대신-->
<%@ include file="../include/member_menu.jsp" %> <!-- 해당파일을 연결 -->

<!-- TODO: 읽어온 데이터를 화면에 출력 value에 가져온 값을 출력-->
<!-- 컨트롤에서 보내는 변수를 확인 -->
<!-- TODO: 수정과 삭제버튼은 스크립트로 처리 -->
<h2>게시글 상세</h2> 
<form name="form1" method="post" action="${path}/customer/update">
	<div>		
		<input type="hidden" name="customerWriter" value="${dto.customerWriter}">
	</div>
	<div>		
		번호 <input name="customerNo" value="${dto.customerNo}" readonly>
	</div>
	<div>
		제목 <input name="customerTitle" id="customerTitle" value="${dto.customerTitle}"> <!-- customerVO를 참고해서 이름 지정 -->		 
	</div>
	<div>
	<!-- textarea은 value가 없음 textarea /textarea사이에 작성 -->
		내용 <textarea name="customerContent" id="customerContent" cols="80" rows="4">${dto.customerContent}</textarea>
	</div>
	<div>
		이름 ${dto.memberName}
	</div>
	<!-- 작성자가 상세페이지 클릭했을 때 수정,삭제버튼 화면에 나타내고, 작성자가 아니면 수정/삭제버튼은 화면에서 숨긴다. -->
	<c:if test="${dto.customerWriter==sessionScope.memberId}">
		<div>
			<button type="button" id="btnUpdate">수정</button>
			<button type="button" id="btnDelete">삭제</button>
		</div>
	</c:if>
</form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
<%@ include file="./include/member_header.jsp" %> <!-- 해당파일을 연결 -->
</head>
<script>
	/* $("document").ready(function() { //버튼을 눌렀는지 확인
		$("#btnWrite").click(function() {
			location.href = "${path}/foods/write"; //해당페이지로 이동
		}); //클릭했을 때
	}

	); */
	function list(page) {
		location.href = "${path}/foods/list.do?curPage=" + page
				+ "&searchOption-${map.searchOption}"
				+ "&keyword=${map.keyword}";
	}
</script>
<body>
<%@ include file="./include/member_menu.jsp" %> <!-- 해당파일을 연결 -->
<!-- 회원 테이블 목록 -->
<H2>상품 목록</H2>
<!-- 버튼을 클릭하면 member/write get으로 연결 -->
<input type="button" value="상품등록" onclick="location.href='${path}/foods/write'">


<form name="form1" method="post" action="${path}/foods/list"
					style="float: right;">
					<select name="searchOption" class="form-select form-select-sm">
						<!-- 검색조건을 검색처리후 결과화면에 보여주기위해  c:out 출력태그 사용, 삼항연산자 -->
						<option value="all"
							<c:out value="${map2.searchOption == 'all'?'selected':''}"/>>상품명+카테고리+내용</option>
						<option value="foodsName"
							<c:out value="${map2.searchOption == 'foodsName'?'selected':''}"/>>상품명</option>
						<option value="cateCode"
							<c:out value="${map2.searchOption == 'cateCode'?'selected':''}"/>>카테고리</option>
						<option value="foodsDetail"
							<c:out value="${map2.searchOption == 'foodsDetail'?'selected':''}"/>>내용</option>
					</select> <input name="keyword" value="${map2.keyword}"> <input
						type="submit" value="검색" class="btn btn-dark">
</form>
<div class="container mt-3">
<table border="1" width="700px" class="table"> <!-- 표만들기 -->
	<tr> <!-- 행 -->
		<th>No</th>
		<th>상품명</th>
		<th>카테고리 이름</th>
		<th>상품 가격</th>
		<th>상품 설명</th>
	</tr>
<!-- var=개별자료변수 items=Controller에서 전달받은 목록 -->
<c:forEach var="row" items="${list }">
	<tr> <!-- 반복적으로 회원정보를 출력하는 부분 -->
		<%-- <td>${row.foodsName}</td>  --%>  <!-- memberId는 필드명, vo에서 선언한 변수명 -->
		<td>${row.foodsId }</td>
		<td><a href="${path}/foods/view?foodsId=${row.foodsId}">${row.foodsName }</a></td> <!-- 이름을 클릭시 상세페이지로 이동, EL은 변수값을 출력 -->
		<td>${row.cateCode }</td> 
		<td>${row.foodsPrice }</td>
		<td>${row.foodsDetail }</td>
	</tr>
</c:forEach>
	<!-- TODO : 게시물 페이징 처리 -->
	<tr>
						<td colspan="5">
							<!-- 처음페이지로 이동 : 현재 페이지가 1보다 크면  [처음]하이퍼링크를 화면에 출력--> <c:if
								test="${map2.foodsPager.curBlock > 1}">
								<a href="javascript:list('1')">[처음]</a>
							</c:if> <!-- 이전페이지 블록으로 이동 : 현재 페이지 블럭이 1보다 크면 [이전]하이퍼링크를 화면에 출력 --> <c:if
								test="${map2.foodsPager.curBlock > 1}">
								<a href="javascript:list('${map2.foodsPager.prevPage}')">[이전]</a>
							</c:if> <!-- **하나의 블럭 시작페이지부터 끝페이지까지 반복문 실행 --> <c:forEach var="num"
								begin="${map2.foodsPager.blockBegin}"
								end="${map2.foodsPager.blockEnd}">
								<!-- 현재페이지이면 하이퍼링크 제거 -->
								<c:choose>
									<c:when test="${num == map2.foodsPager.curPage}">
										<span style="color: red">${num}</span>&nbsp;
                        </c:when>
									<c:otherwise>
										<a href="javascript:list('${num}')">${num}</a>&nbsp;
                        </c:otherwise>
								</c:choose>
							</c:forEach> <!-- 다음페이지 블록으로 이동 : 현재 페이지 블럭이 전체 페이지 블럭보다 작거나 같으면 [다음]하이퍼링크를 화면에 출력 -->
							<c:if
								test="${map2.foodsPager.curBlock <= map2.foodsPager.totBlock}">
								<a href="javascript:list('${map.foodsPager.nextPage}')">[다음]</a>
							</c:if> <!-- 끝페이지로 이동 : 현재 페이지가 전체 페이지보다 작거나 같으면 [끝]하이퍼링크를 화면에 출력 --> <c:if
								test="${map2.foodsPager.curPage <= map2.foodsPager.totPage}">
								<a href="javascript:list('${map2.foodsPager.totPage}')">[끝]</a>
							</c:if>
						</td>
			</tr>
		
	</table>
</div>


</body>
</html>
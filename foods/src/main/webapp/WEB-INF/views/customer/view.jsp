<%@ page language="java" CustomerContentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<Title>CustomerTitle</Title>
<!--공통적은 파일을 include 폴더에 넣어 두고 필요할 때마다 include로 연결해서 사용 -->
<%@ include file="../include/member_header.jsp"%>
<!-- 해당파일을 연결 -->
<script>
   //게시글(삭제,수정)
   $("document").ready(function() {
      $("#btnDelete").click(function() {
         location.href = "${path}/customer/delete?CustomerNo=${dto.CustomerNo}";
      });
   });
   
   $("document").ready(function() {
      $("#btnUpdate").click(function() {
         var CustomerTitle = $("#CustomerTitle").val();
         var CustomerContent = $("#CustomerContent").val();
         //유효성 검사
         if (CustomerTitle == "") {
            alert("제목을 입력하세요.");
            document.form1.CustomerTitle.focus();
            return;
         }
         if (CustomerContent == "") {
            alert("내용을 입력하세요.");
            document.form1.CustomerContent.focus();
            return;
         }
         document.form1.submit(); //폼을 전송
      });
   });

   $("document").ready(function() {
      $("#btnReplay").click(function() {
         var replyCustomerContents = $("#replytext").val();
         var refBoradNo = "${dto.CustomerNo}";
         var param = "replytext="+replytext+"&CustomerNo="+CustomerNo;
         $.ajax({
            type : "post",
            url : "${path}/reply/insert",
            data :param,
            complete : function() {
               alert("등록성공")
               listReply(); 
            },
            error : function() {
               alert("등록 실패")
            }
         });
      }
   });   
function listReply(){
   $.ajax({
      type: "get",
      url: "${path}/reply/list?CustomerNo=${dto.CustomerNo}",
      success: function(result){
      // responseText가 result에 저장됨.
      $("#listReply").html(result);
      }
   });
}
</script>
</head>
<body>
   <!-- 처음 실행되는 화면  -->
   <!-- JSTL-if, foreach 등 자바명령어를 태그화 시켜놓은 형식 -->
   <!-- EL-전달받은 변수(값)을 쉽게 처리하는 형식 $ 대괄호안에 변수명을 기재 %=변수 대신-->
   <%@ include file="../include/member_menu.jsp"%>
   <!-- 해당파일을 연결 -->

   <!-- TODO: 읽어온 데이터를 화면에 출력 value에 가져온 값을 출력-->
   <!-- 컨트롤에서 보내는 변수를 확인 -->
   <!-- TODO: 수정과 삭제버튼은 스크립트로 처리 -->
   <h2>게시글 상세</h2>
   <form name="form1" method="post" action="${path}/customer/update">
      <div>
         <input type="hidden" name="CustomerWriter" value="${dto.CustomerWriter}">
      </div>
      <div>
         번호 <input name="CustomerNo" value="${dto.CustomerNo}" readonly>
      </div>
      <div>
         제목 <input name="CustomerTitle" id="CustomerTitle" value="${dto.CustomerTitle}">
         <!-- customerVO를 참고해서 이름 지정 -->
      </div>
      <div>
         <!-- textarea은 value가 없음 textarea /textarea사이에 작성 -->
         내용
         <textarea name="CustomerContent" id="CustomerContent" cols="80" rows="10">${dto.CustomerContent}</textarea>
      </div>
      <div>이름 ${dto.memberName}</div>
      <!-- 작성자가 상세페이지 클릭했을 때 수정,삭제버튼 화면에 나타내고, 작성자가 아니면 수정/삭제버튼은 화면에서 숨긴다. -->
      <c:if test="${dto.CustomerWriter == sessionScope.memberId  }">
         <div>
            <button type="button" id="btnUpdate">수정</button>
            <button type="button" id="btnDelete">삭제</button>
         </div>
      </c:if>
   </form>

   <!-- 댓글입력창(로그인된 상태에서만 댓글 입력창을 표시) -->
   <div style="width: 650px text-aline:center">
      <br>
      <c:if test="${sessionScope.memberId !=null}">
         <textarea rows="5" cols="80" id="replytext" placeholder="댓글을 입력하세요"></textarea>
         <br>
         <button type="button" id="btnReplay">댓글작성</button>
      </c:if>
   </div>
   <!-- 댓글 출력 -->
   <div id=listReply></div>

</body>
</html> 
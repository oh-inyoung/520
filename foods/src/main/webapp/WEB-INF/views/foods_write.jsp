<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <div class="admin_content_wrap">
   <div class="admin content subject"><span>상품 등록</span></div>
   <div class="admin_content_main">
       <form action="/shop/admin/index" method="post" id="enrollForm">
       <form name="form1" method="post" action="${path}/foods/write"> 
          <div class="form_section">
             <div class="form_section_title">
                <label>상품명</label>
             </div>
             <div class="form_section_content">
                <input name="foodsName">
             </div>
          </div>
          <div class="form_section">
             <div class="form_section_title">
                <label>상품 카테고리</label>
             </div>
             <div class="form_section_content">
                <input name="cateCode">
             </div>
          </div>          
          <div class="form_section">
             <div class="form_section_title">
                <label>상품 가격</label>
             </div>
             <div class="form_section_content">
                <input name="foodsPrice" value="0">
             </div>
          </div>                                 
          <div class="form_section">
             <div class="form_section_title">
                <label>상품 소개</label>
             </div>
             <div class="form_section_content">
                <input name="foodsDetail">
             </div>
          </div>
          <div class="btn_section">
             <button id="reset" class="btn">취 소</button>
             <button id="submit" class="btn enroll_btn">등 록</button>
          </div> 
       </form>
   </div>  
   </div>
   <script>
      // 등록 버튼 클릭 시 폼 데이터를 서버로 전송하고 페이지를 변경하는 함수
      function handleEnroll() {
         var form = document.getElementById('enrollForm');
         form.submit(); // 폼 데이터 전송
         // 페이지 변경을 원하는 URL로 리다이렉션할 수도 있습니다.
         // window.location.href = '변경하고 싶은 페이지 URL';
      }

      // 취소 버튼 클릭 시 이전 페이지로 돌아가는 함수
      function handleCancel() {
         history.back(); // 이전 페이지로 이동
      }

      // 버튼 클릭 이벤트 핸들러 등록
      var enrollBtn = document.getElementById('enrollBtn');
      enrollBtn.addEventListener('click', handleEnroll);
   </script>
</body>
</html>

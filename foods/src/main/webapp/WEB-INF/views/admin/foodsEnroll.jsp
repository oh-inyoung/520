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
   <div class= "admin content subject"><span>상품 등록</span></div>
   <div class="admin_content_main">
                       <form action="/admin/foodsEnroll" method="post" id="enrollForm">
                       
                          <div class="form_section">
                             <div class="form_section_title">
                                <label>책 제목</label>
                             </div>
                             <div class="form_section_content">
                                <input name="foodsName">
                             </div>
                          </div>
                              
                          <div class="form_section">
                             <div class="form_section_title">
                                <label>책 카테고리</label>
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
                                <label>상품 재고</label>
                             </div>
                             <div class="form_section_content">
                                <input name="foodstock" value="0">
                             </div>
                          </div>          
                          <div class="form_section">
                             <div class="form_section_title">
                                <label>상품 할인율</label>
                             </div>
                             <div class="form_section_content">
                                <input name="foodsDiscount" value="0">
                             </div>
                          </div>                
                          <div class="form_section">
                             <div class="form_section_title">
                                <label>책 소개</label>
                             </div>
                             <div class="form_section_content">
                                <input name="bookIntro">
                             </div>
                          </div>              
                          <div class="form_section">
                             <div class="form_section_title">
                                <label>상품 설명</label>
                             </div>
                             <div class="form_section_content">
                                <input name="foodsDetail">
                             </div>
                          </div>
                         </form>
                            <div class="btn_section">
                               <button id="cancelBtn" class="btn">취 소</button>
                             <button id="enrollBtn" class="btn enroll_btn">등 록</button>
                          </div> 
                    </div>  
          </div>
</body>
</html>
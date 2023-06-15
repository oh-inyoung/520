<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<Title>Customer ReplyList</Title>
<!--공통적은 파일을 include 폴더에 넣어 두고 필요할 때마다 include로 연결해서 사용 -->
<%@ include file="../include/member_header.jsp"%>
</head>
<body>
<!-- 댓글 표기 -->
<table style="width:700px" border="1">
   <c:forEach var="row" items="${list }">
      <tr>
         <td>${row.replyer }<!-- 댓글내용 -->
         <fmt:formatDate value="${row.CustomerRegdate }" pattern="yyyy-MM-dd HH:mm:ss"/>
         <br>
         ${row.replytext }
         </td>
      </tr>
   </c:forEach>

</table>
</body>
</html> 
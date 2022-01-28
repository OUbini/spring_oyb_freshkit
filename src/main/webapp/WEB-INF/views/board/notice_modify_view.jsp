<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>문의 게시판</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>
	<h1>문의 글 수정</h1>
	<form:form action="/oyb/board/notice_modify" method="post">
		<table width="700" cellpadding="0" cellspacing="0" border="1">
			<input type="hidden" name="id" value="${notice_modify_view.id}">      
	         <tr>
	            <td> 작성자 </td>
	            <td> ${notice_modify_view.member_id} </td>
	         </tr>
	         <tr>
	            <td> 제목 </td>
	            <td> <input type="text" name="title" 
	            value="${notice_modify_view.title}" size = "50"> </td>
	         </tr>
	         <tr>
	            <td> 내용 </td>
	            <td> <textarea name="content" rows="10" >${notice_modify_view.content}</textarea> </td>
	         </tr>
	         <tr >
	            <td colspan="2"> <input type="submit" value="수정"> 
	            &nbsp;&nbsp; <a href="<c:url value="/board/ask" />">목록보기</a></td>
	         </tr>	      
		</table>
	</form:form>	

	<h3>
		[<a href="<c:url value="/" />">홈</a>]
	</h3>


</body>
</html>
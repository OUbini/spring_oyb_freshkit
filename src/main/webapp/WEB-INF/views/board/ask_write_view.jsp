<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
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
	<h1>글작성</h1>
	<form:form action="/oyb/board/ask_write" method="post">
		<table width="700" cellpadding="0" cellspacing="0" border="1">      
	         <tr>
	            <td> 이름 </td>
	            <td> <input type="text" name="member_id" size = "50"> </td>
	         </tr>
	         <tr>
	            <td> 제목 </td>
	            <td> <input type="text" name="title" size = "50"> </td>
	         </tr>
	         <tr>
	            <td> 내용 </td>
	            <td> <textarea name="content" rows="10" ></textarea> </td>
	         </tr>
	         <tr >
	            <td colspan="2"> <input type="submit" value="등록"> 
	            &nbsp;&nbsp; <a href="<c:url value="/board/ask" />">목록보기</a></td>
	         </tr>
	      
		</table>
	</form:form>

	<h3>
		[<a href="<c:url value="/" />">홈</a>]
	</h3>


</body>
</html>
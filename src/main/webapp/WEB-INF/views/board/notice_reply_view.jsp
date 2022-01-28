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
	<h1>원본글</h1>
	<table width="700" cellpadding="0" cellspacing="0" border="1">
		<input type="hidden" name="id" value="${notice_reply_view.id}">
		<tr>
			<td>번호</td>
			<td>${notice_reply_view.id}</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>${notice_reply_view.member_id}</td>
		</tr>
		<tr>
			<td>제목</td>
			<td>${notice_reply_view.title}</td>
		</tr>
		<tr>
			<td>내용</td>
			<td>${notice_reply_view.content}</td>
		</tr>
	</table>	
	<h1>답글작성</h1>
	<form:form action="/oyb/board/notice_reply" method="post">
		<table width="700" cellpadding="0" cellspacing="0" border="1">
			<input type="hidden" name="id" value="${notice_reply_view.id}">
			<input type="hidden" name="bgroup" value="${notice_reply_view.bgroup}"> 
			<input type="hidden" name="bindent" value="${notice_reply_view.bindent}"> 
			<input type="hidden" name="bstep" value="${notice_reply_view.bstep}">       
	         <tr>
	            <td> 작성자 </td>
	            <td> admin </td>
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
	            <td colspan="2"> <input type="submit" value="답글등록"> 
	            &nbsp;&nbsp; <a href="<c:url value="/board/ask" />">목록보기</a></td>
	         </tr>	      
		</table>
	</form:form>	

	<h3>
		[<a href="<c:url value="/" />">홈</a>]
	</h3>


</body>
</html>
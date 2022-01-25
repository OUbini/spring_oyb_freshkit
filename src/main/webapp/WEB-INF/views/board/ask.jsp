<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
   <title>문의 게시판</title>
</head>

<body>
<h1>문의 글목록</h1>
<table width="500" cellpadding="0" cellspacing="0" border="1">
	<tr>
		<td>번호</td>
		<td>제목</td>
		<td>이름</td>
		<td>날짜</td>
		<td>히트</td>	
	</tr>
			
	<c:forEach var="ask" items="${askList}">
		<tr>
			<td>${ask.id}</td>
			<td>
				<c:forEach begin="1" end="${ask.bindent}"> [Re] </c:forEach>
 				<a href="content_view?bid=${ask.member_id}">${ask.title}</a>
			</td>
			<td>${ask.member_id}</td>
			<td>${ask.bdate}</td>
			<td>${ask.hit}</td>	
		</tr>	
	</c:forEach>

	<!-- 관리자만 작성할 수 있도록 할 예정		
	<tr>
		<td colspan="5"> 
			<a href="write_view">글작성</a>
		</td>
	</tr>
	 -->
</table>


<h3>[<a href="<c:url value="/" />">홈</a>]</h3>


</body>
</html>
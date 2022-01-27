<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
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

		<c:forEach var="ask" items="${askList}" varStatus="status">
			<tr>
				<td>${fn:length(askList) - status.index}</td>
				<td><c:forEach begin="1" end="${ask.bindent}"> [Re] </c:forEach>
					<a href="ask_view?id=${ask.id}">${ask.title}</a></td>
				<td>${ask.member_id}</td>
				<td>${ask.bdate}</td>
				<td>${ask.hit}</td>
			</tr>
		</c:forEach>

		<tr>
			<td colspan="5"><a href="ask_write_view">글작성</a></td>
		</tr>
	</table>

	<c:if test="${pageMaker.pre}">
		<a
			href="${pageContext.request.contextPath}/board/ask${pageMaker.makeQuery(pageMaker.startPage - 1) }">«</a>
	</c:if>

	<!-- 링크를 걸어준다 1-10페이지까지 페이지를 만들어주는것  -->
	<c:forEach var="idx" begin="${pageMaker.startPage }"
		end="${pageMaker.endPage }">
		<a
			href="${pageContext.request.contextPath}/board/ask${pageMaker.makeQuery(idx)}">${idx}</a>
	</c:forEach>

	<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
		<a
			href="${pageContext.request.contextPath}/board/ask${pageMaker.makeQuery(pageMaker.endPage +1) }">
			» </a>
	</c:if>



	<h3>
		[<a href="<c:url value="/" />">홈</a>]
	</h3>


</body>
</html>
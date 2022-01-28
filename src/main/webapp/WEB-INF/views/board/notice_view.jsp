<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>공지사항 게시판</title>
</head>

<body>
	<h1>공지사항 글보기</h1>
	<table width="700" cellpadding="0" cellspacing="0" border="1">
		<input type="hidden" name="id" value="${notice_view.id}">
		<tr>
			<td>번호</td>
			<td>${notice_view.id}</td>
		</tr>
		<tr>
			<td>조회수</td>
			<td>${notice_view.hit}</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>${notice_view.member_id}</td>
		</tr>
		<tr>
			<td>제목</td>
			<td>${notice_view.title}</td>
		</tr>
		<tr>
			<td>내용</td>
			<td>${notice_view.content}</td>
		</tr>
		<tr>
			<td>
				&nbsp;&nbsp; <a href="<c:url value="/board/ask" />">목록보기</a>
				&nbsp;&nbsp; <a href="notice_delete?id=${notice_view.id}">삭제</a> 
				&nbsp;&nbsp; <a href="notice_modify_view?id=${notice_view.id}">수정</a>
				&nbsp;&nbsp; <a href="notice_reply_view?id=${notice_view.id}">답변</a>
			</td>
		</tr>
	</table>

	<h3>
		[<a href="<c:url value="/" />">홈</a>]
	</h3>


</body>
</html>
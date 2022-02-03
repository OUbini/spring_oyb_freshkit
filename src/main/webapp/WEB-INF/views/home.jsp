<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Welcome FRESHKIT!  
</h1>

[<a href="<c:url value="/myPage" />">마이페이지</a>]

<sec:authorize access="isAuthenticated()">
<p><sec:authentication property="principal.member.name"/>님 환영합니다!</p>
</sec:authorize>

<h3>
    [<a href="<c:url value="/add/addForm" />">회원가입</a>]
    [<a href="<c:url value="/user/userHome" />">유저 홈</a>]
    [<a href="<c:url value="/admin/adminHome" />">관리자 홈</a>]
</h3>
<h3>
	[<a href="<c:url value="/board/notice" />">공지사항</a>]
	[<a href="<c:url value="/board/ask" />">문의</a>]
	[<a href="<c:url value="/product/allProduct" />">전체제품목록</a>]
	[<a href="<c:url value="/product/bestProduct" />">베스트제품목록</a>]	
	[<a href="<c:url value="/product/newProduct" />">신제품목록</a>]	
</h3>

<P>  The time on the server is ${serverTime}. </P>
</body>
</html>

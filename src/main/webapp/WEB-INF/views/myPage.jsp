<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
   <title>마이페이지</title>
</head>

<body>

<sec:authorize access="isAnonymous()"> <!-- 로그인 하지 않은 사용자 접근시 -->
	<h1>로그인해야 사용 가능한 페이지 입니다. 로그인</h1>
   <p><a href="<c:url value="/login/loginForm" />">로그인</a></p>
</sec:authorize>

<sec:authorize access="isAuthenticated()">
	<h1>마이페이지</h1>
	<p>환영합니다. : <sec:authentication property="principal.username" /> 님</p> 
	<p>패스워드 : <sec:authentication property="principal.password" /></p> 
	<p>principal : <sec:authentication property="principal"/></p>
	
    <form:form action="${pageContext.request.contextPath}/logout" method="POST">
       <input type="submit" value="로그아웃" />
    </form:form>
</sec:authorize>

<h3>
    [<a href="<c:url value="/user/userHome" />">유저 홈</a>]
    [<a href="<c:url value="/admin/adminHome" />">관리자 홈</a>]
</h3>
</body>
</html>
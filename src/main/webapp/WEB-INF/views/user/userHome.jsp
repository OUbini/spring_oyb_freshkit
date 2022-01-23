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

<h1>유저 페이지 입니다.</h1>

<p>principal: <sec:authentication property="principal"/></p>
<p>MemberVO: <sec:authentication property="principal.member"/></p>
<p>사용자이름: <sec:authentication property="principal.member.name"/></p>
<p>사용자등급: <sec:authentication property="principal.member.rank"/></p>
<p>사용자우편번호: <sec:authentication property="principal.member.postnum"/></p>
<p><a href="<c:url value="/" />">홈</a></p>

</body>
</html>
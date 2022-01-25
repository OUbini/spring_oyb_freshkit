<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
   <title>회원가입</title>
</head>

<body>

<h1>회원가입</h1>

<c:url value="/add/addMember" var="addMemberUrl" />
<form:form name="frmMember" action="${addMemberUrl}" method="POST">
    <p>
    	<label for="id">아이디</label>
        <input type="text"  name="id" />
    </p>
    <p>
        <label for="pw">비밀번호</label>
        <input type="password" name="pw"/>
    </p>    

    <p>
        <label for="name">이름</label>
        <input type="text" name="name"/>
    </p>
    
     <p>
        <label for="postnum">우편번호</label>
        <input type="text" name="postnum"/>
    </p>
    
    <p>
        <label for="address">주소</label>
        <input type="text" name="address"/>
    </p>
    
    <p>
        <label for="phone">휴대폰번호</label>
        <input type="text" name="phone"/>
    </p>
    
    <p>
        <label for="birth2">생일</label>
        <input type="text" name="birth2"/>
    </p>

    <p>
        <label for="gender">성별</label>
        <input type="text" name="gender"/>
    </p>
    
    <p>
        <label for="point">포인트</label>
        <input type="hidden" name="point" value="0"/>
    </p>

    <button type="submit" class="btn">가입하기</button>

</form:form>
</body>
</html>
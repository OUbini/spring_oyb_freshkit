<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/include/header.jspf"  %>
<title>Login</title>
</head>
<body onload="document.f.id.focus();">
      <br><br>
      <div class="container text-center">
          <h1>FRESHKIT LOGIN</h1><br>
      </div>
      <c:url value="/login" var="loginUrl" />
      <div class="container col-md-4">
	      <form:form name ="f" class="px-4 py-3" action="${loginUrl}" method="post">
	            <c:if test="${param.error != null}">
        			<p>아이디 또는 비밀번호가 잘못되었습니다. 다시 입력하세요</p>
    			</c:if>
    			
    			<c:if test="${param.logout != null}">
        			<p>로그아웃 하였습니다.</p>
    			</c:if>
    			
	          <div class="form-group">
	              <label for="exampleDropdownFormEmail1">아이디</label>
	              <input type="text" class="form-control" name="id" placeholder="아이디를 입력하세요">
	          </div>
	          <div class="form-group">
	              <label for="exampleDropdownFormPassword1">비밀번호</label>
	              <input type="password" class="form-control" name="pw" placeholder="비밀번호를 입력하세요">
	          </div>
	          <!-- 비밀번호 기억하기 소스코드(사용x) -->
	          <!-- <div class="form-check">
	              <label class="form-check-label">
	              <input type="checkbox" class="form-check-input">
	              기억하기
	              </label>
	          </div> -->
	          <%-- <input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/> --%>
	          <br>
	          <button type="submit" class="btn btn-primary">로그인</button>
	   </form:form>
	      <div class="dropdown-divider"></div>
	      <a class="dropdown-item" href="<c:url value="/add/addForm" />">회원가입</a>
	  </div>

</body>
</html>
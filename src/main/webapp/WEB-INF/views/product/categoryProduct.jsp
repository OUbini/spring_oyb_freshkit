<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
   <title>제품</title>
</head>

<body>
<h1>전체 제품목록</h1>
<table width="700" cellpadding="0" cellspacing="0" border="1">
	<tr>
		<td>제품명</td>
		<td>제품금액</td>
	</tr>
			
	<c:forEach var="categoryProduct" items="${categoryProductList}">
		<tr>
			<td>${categoryProduct.name}</td>
			<td>${categoryProduct.amount}</td>
		</tr>	
	</c:forEach>
</table>

<%-- 	<c:if test="${pageMaker.pre}">
		<a href="${pageContext.request.contextPath}/product/categoryProduct?category=${categoryProductList.category}${pageMaker.makeQuery(pageMaker.startPage - 1) }">
		«</a>
	</c:if>

	<c:forEach var="idx" begin="${pageMaker.startPage }"
		end="${pageMaker.endPage }">
		<a href="${pageContext.request.contextPath}/product/categoryProduct?category=${categoryProductList.category}${pageMaker.makeQuery(idx)}">${idx}</a>
	</c:forEach>

	<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
		<a href="${pageContext.request.contextPath}/product/categoryProduct?category=${categoryProductList.category}${pageMaker.makeQuery(pageMaker.endPage +1) }">
		»</a>
	</c:if>
 --%>
<h3>[<a href="<c:url value="/" />">홈</a>]</h3>


</body>
</html>
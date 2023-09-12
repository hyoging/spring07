<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<c:set var="contextpath" value="${pageContext.request.contextPath }"/>
	
	<c:if test="${userId == null }">
		<form action="auth_check" method="post">
			<input type="email" name="email" placeholder="email">
			<input type="submit" value="인증">
		</form>
	</c:if>
	<c:if test="${userId != null }">
		<h3>${userId }님 인증되었습니다</h3>
		<a href="logout">인증 해제</a>
	</c:if>
	

</body>
</html>
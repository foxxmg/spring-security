<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Log In - Spring Security</title>
	<style>
		.loginerror{
			color:red
		}
	</style>
</head>
<body>
	<h2>Welcome - Please log in below.</h2>
	<br>
	<form:form action="${pageContext.request.contextPath}/authenticate-user" method="POST">
		<c:if test="${param.error!=null}">
			<i class="loginerror">Sorry - you've entered invalid Username/Password</i>
		</c:if>
		<p>
		Username: <input type="text" name="username"/>	
		<p>
		Password: <input type="password" name="password"/>
		<p>
		<input type="submit" value="Login">
	</form:form>

</body>
</html>
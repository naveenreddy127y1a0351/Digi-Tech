<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="links.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
spring security login page
<br>
<c:if test="${not empty error}">
${error}
</c:if>

<form  name="loginForm" action="<c:url value="/j_spring_security_check"></c:url>" method="POST">

<br>
User Id : <input type="text" name ="j_username"/>
<br>
Password : <input type="password" name ="j_password"/>

<br>
<input type="submit" value="Login" />
</form>
</body>
</html>
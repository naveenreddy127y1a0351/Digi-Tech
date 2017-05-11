<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ include file="links.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>

body { 
    background-size: contain;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
    background-size: 100% 100%;    
}

</style>
</head>

<body background="<c:url value="/resources/images/backgrounds/background${imagenum}.jpg" var="img"></c:url>">

<%@ include file="usernavbar.jsp" %>


Login success user
</body>
</html>
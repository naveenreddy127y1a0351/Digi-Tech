<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="links.jsp" %>
<script>

$(document).ready(function(){
	var searchCondition='${searchCondition}';
	$('.table').DataTable({
		"lengthMenu" : [[5,10,15,-1],[5,10,15,"All"]],
		"oSearch":{"sSearch":searchCondition}		
	})	
});

</script>
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
<body background="resources/images/backgrounds/background${imagenum}.jpg">

<%@ include file="adminnavbar.jsp" %>
<br><br>
<div class="container">
<table border ="0" class="table table-stripped fixed_headers" style="font-weight:bold"  >
<thead>
<tr style="background:rgba(60,60,90,1);color:yellow;table-layout: fixed;">
<th style="text-align:center">User Id</th>
<th style="text-align:center">Enabled Status</th>
<th style="text-align:center">Action</th>
</tr>
</thead>

<tbody>
<c:forEach var="usr" items="${userdata}">
<tr style="text-align:center;background:rgba(90,90,30,0.7)">
<td style="vertical-align: middle;font-weight:bold;color:yellow">${usr.userid}</td>

<td style="align:center"> 
 	<c:if test="${usr.enabled == true}">
		 		<b  style="color:yellow"><br>Enabled</b>
	 </c:if>
<c:if test="${usr.enabled == false}">
		 		<b style="color:yellow"><br>Disabled</b>
	 </c:if>
</td>




<td style="align:center"> 
 	<c:if test="${usr.enabled == true}">
		 		<a href="reqDisableUser?uid=${usr.userid}" style="color:yellow"><br>Disable</a>
	 </c:if>
<c:if test="${usr.enabled == false}">
		 		<a href="reqEnableUser?uid=${usr.userid}" style="color:yellow"><br>Enable</a>
	 </c:if>
</td>


</tr>
</c:forEach>
</tbody>


</table>
</div>

</body>
</html>
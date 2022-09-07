<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Welcome from Spring security</h1>

<hr/><hr/><br/>

User Details <sec:authentication property="principal.authorities"/>
<sec:authentication property="principal.username"/>

<br>

<p>
 <a href="${pageContext.request.contextPath}/leaders"> Managers Part (Only managear can open it)</a>
</p>

<p>
<a href="${pageContext.request.contextPath}/system">Admin Only (only admin can open it)</a>
</p>

<form:form action="${pageContext.request.contextPath}/logout" method="POST">

<input type="submit" value="Log Out"/>

</form:form>



</body>
</html>
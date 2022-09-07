<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<form:form action="${pageContext.request.contextPath}/authenticateUser" method="POST">

<h2>My Custom Login Form</h2>

<c:if test="${param.error != null}">

<i>Please enter correct username and password</i>
</c:if>



<p>
 User Name <input type="text" name="username"/>
</p>

<p>
 Password <input type="password" name="password"/>
</p>

<p>
<input type="submit" value="Login"/>

</p>

</form:form>


</body>
</html>
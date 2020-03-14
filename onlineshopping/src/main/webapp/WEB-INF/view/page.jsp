<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<spring:url var="css" value="/resources/css"></spring:url>

<spring:url var="js" value="/resources/js"></spring:url>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Online shopping - ${title}</title>

  <!-- Bootstrap core CSS -->
  <link href="${css}/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="${css}/shop-homepage.css" rel="stylesheet">
<script>
	window.menu = '${title}';
	
	window.contextRoot = '${contextRoot}'
	
</script>

</head>

<body>

<!-- Navigation -->
		<%@include file="./shared/navbar.jsp" %>

  <!-- Page Content -->
  <c:if test="${userClickHome == true }">
		<%@include file="home.jsp"%>
 </c:if>
 <!-- Load only when user clicks about -->
			<c:if test="${userClickAbout == true }">
				<%@include file="about.jsp"%>
			</c:if>
			
	<!-- Load only when user clicks contact -->
			<c:if test="${userClickContact == true }">
				<%@include file="contact.jsp"%>
			</c:if>		
  <!-- Footer comes here -->
		<%@include file="./shared/footer.jsp"%>

  <!-- Bootstrap core JavaScript -->
  <script src="${js}/jquery.min.js"></script>

<script src="${js}/myapp.js"></script>
</body>

</html>

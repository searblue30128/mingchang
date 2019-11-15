<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<body>
<jsp:include page="header.jsp"/>

<!-- Page Content -->
<div class="container">
  <h1 class="mt-4" style="font-family:DFKai-sb;">聯繫我們</h1>
  <p>
	  <img src="<%=request.getContextPath()%>/resources/images/mingchangLogo.jpg" alt="" width="400px" height="300px">
	  <img src="<%=request.getContextPath()%>/resources/images/apple-7.png" alt="" width="400px" height="300px">
  </p>
</div>
<!-- /.container -->

</body>
</html>

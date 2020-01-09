<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/images/iconLogo.jpg" />
<body>
<jsp:include page="header.jsp"/>

<!-- Page Content -->
<div class="container">
  <h1 class="mt-4" style="font-family:DFKai-sb;">聯繫我們</h1>
  <p>
	  <img src="<%=request.getContextPath()%>/resources/images/mingchangLogo.jpg" alt="" >
  </p>
</div>
<!-- /.container -->

</body>

<style>
img {
  max-width: 100%;
  height: auto;
}
</style>

</html>

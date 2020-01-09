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
  <h1 class="mt-4" style="font-family:DFKai-sb;">產品服務</h1>
  <!-- 
	<table class="table table-striped">
    <thead>
      <tr align="left">
        <th colspan="2" style="font-size:30px;">核心能量</th>
      </tr>
    </thead>
    <tbody align="left">
      <tr class="success" >
        <td>SMT表面黏著代工</td>
        <td>產品測試調整</td>
      </tr>
      <tr class="danger">
        <td>DIP傳統插件代工</td>
        <td>組裝產品</td>
      </tr>
      <tr class="info">
        <td>無鉛製程</td>
        <td>成品包裝</td>
      </tr>
      <tr class="warning">
        <td>手焊加工</td>
        <td>全製程代工服務</td>
      </tr>
    </tbody>
    
  </table>
  
    <table class="table table-striped">
	    <thead>
	      <tr align="left">
	        <th colspan="2" style="font-size:30px;">產能</th>
	      </tr>
	    </thead>
    </table>
    <img src="<%=request.getContextPath()%>/resources/images/produce.png" alt="" width="600px" height="400px">
     -->
    
    <p>
<%-- 	  <img src="<%=request.getContextPath()%>/resources/images/service01.jpg" alt="" > --%>
		<img src="${pageUrlForm.service}" alt="" >
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

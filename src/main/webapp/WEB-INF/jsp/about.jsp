<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
	<link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/images/iconLogo.jpg" />
<body>
<jsp:include page="header.jsp"/>

<!-- Page Content -->
<div class="container">
  <h1 class="mt-4" style="font-family:DFKai-sb;">關於我們</h1>
  <p>銘昶電子2005年成立，從事專業SMT表面黏著、DIP傳統插件之生產製造，
  	  本公司擁有優秀的經營團隊，秉持著『誠實苦幹，精益求精，堅持品質，轉型升級』
  	  的經營理念，追求企業永續經營及成長。
  </p>
  
  	<table class="table table-striped">
    <thead>
      <tr align="left">
        <th colspan="2" style="font-size:30px;">品質政策</th>
      </tr>
    </thead>
    <tbody align="left">
      <tr class="success" >
        <td>管理為重</td>
        <td>品質優先</td>
      </tr>
      <tr class="danger">
        <td>服務第一</td>
        <td>重視環保</td>
      </tr>
    </tbody>
    
  </table>
    <table class="table table-striped">
    <thead>
      <tr align="left">
        <th colspan="2" style="font-size:30px;">我們的承諾</th>
      </tr>
    </thead>
    
    </table>
    <img src="<%=request.getContextPath()%>/resources/images/promise.png" alt="" width="420px" height="400px">
</div>
<!-- /.container -->

</body>
</html>

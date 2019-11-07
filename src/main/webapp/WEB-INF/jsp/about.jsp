<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <meta charset="utf-8">
    <title>Ming Chang Electronics Co., Ltd.</title>

    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/images/iconLogo.jpg" />


	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o" crossorigin="anonymous"></script>

</head>

<body>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
  <div class="container">
    <a class="navbar-brand" href="#">
<!--           <img src="http://placehold.it/150x50?text=Logo" alt=""> -->
          <img src="<%=request.getContextPath()%>/resources/images/apple-7.png" alt="" width="40px" height="40px">
    </a>
    <font color="white" size="5" style="font-family:DFKai-sb;">銘昶電子有限公司</font>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link" href="<%=request.getContextPath()%>/homepage">Home
                <span class="sr-only">(current)</span>
              </a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="<%=request.getContextPath()%>/about">About
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<%=request.getContextPath()%>/service">Services</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<%=request.getContextPath()%>/contact">Contact</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

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

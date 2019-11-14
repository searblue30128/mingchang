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
        <li class="nav-item active">
          <a class="nav-link" href="<%=request.getContextPath()%>/homepage">Home
                <span class="sr-only">(current)</span>
              </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<%=request.getContextPath()%>/about">About</a>
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
  <h1 class="mt-4" style="font-family:DFKai-sb;">首頁</h1>
  <p>最新消息</p>
  
  <table class="table table-striped">
    <thead>
      <tr align="left">
        <th colspan="2" style="font-size:30px;">工廠設備</th>
      </tr>
    </thead>
    
    </table>
    <!-- Category Card -->
    <div class="row" id="ads">
    <!-- fab picture -->
        <c:forEach items="${imageCardList}" var="imageCard">
	        <div class="col-md-4">
		        <div class="card rounded">
		            <div class="card-image">
		                <span class="card-notify-badge">${imageCard.name}</span>
<!-- 		                <span class="card-notify-year">X</span> -->
		                <a href="javascript:;" onclick="openInNewTab()"><img class="img-fluid" src="${imageCard.imgUrl}" alt="${imageCard.name}" /></a>
<%-- 		                <img class="img-fluid" src="<%=request.getContextPath()%>/resources/images/fab/fab05.png" alt="Alternate Text" /> --%>
<!--                 <a href="https://imgur.com/Q8mzs8Y"><img src="https://i.imgur.com/Q8mzs8Y.jpg" title="source: imgur.com" /></a> -->
<!-- <img class="img-fluid" src="https://imageonthefly.autodatadirect.com/images/?USER=eDealer&PW=edealer872&IMG=USC80HOC091A021001.jpg&width=440&height=262" alt="Alternate Text" /> -->
		            </div>
		            <div class="card-image-overlay m-auto">
		                <span class="card-detail-badge">${imageCard.description}</span>
		                <span class="card-detail-badge">${imageCard.moreDetail}</span>
		            </div>
		            <div class="card-body text-center">
		                <div class="ad-title m-auto">
		                    <h5>${imageCard.name}</h5>
		                </div>
		                <a href="javascript:;" class="ad-btn" onclick="openInNewTab()">View</a>
		            </div>
		        </div>
	    	</div>
            
        </c:forEach>
    
    	
	</div>
</div>
<!-- /.container -->

</body>

<script>
$(function(){
	$(".ad-btn").click(function(url){
// 		window.open('', 'View', config='height=500,width=500');
// 		var open = window.open( '','temp','toolbar=no,menubar=no,resizable=no,titlebar=no,scrollbars=yes');
// 		open.resizeTo(800,700);
// 		open.moveTo(150,50);
	});
});

function openInNewTab(url) {
	url = "https://support.wwf.org.uk/earth_hour/index.php?type=individual";
	var win = window.open(url, '_blank');
	win.focus();
}


</script>

<style>
@import url('https://fonts.googleapis.com/css?family=Open+Sans');
@import url('https://fonts.googleapis.com/css?family=Montserrat');

body {
    font-family: 'Montserrat', sans-serif;

}

/* Category Ads */

#ads {
    margin: 30px 0 30px 0;
   
}

#ads .card-notify-badge {
        position: absolute;
        left: -10px;
        top: -20px;
        background: #f2d900;
        text-align: center;
        border-radius: 30px 30px 30px 30px; 
        color: #000;
        padding: 5px 10px;
        font-size: 14px;

    }

#ads .card-notify-year {
        position: absolute;
        right: -10px;
        top: -20px;
        background: #ff4444;
        border-radius: 50%;
        text-align: center;
        color: #fff;      
        font-size: 14px;      
        width: 50px;
        height: 50px;    
        padding: 15px 0 0 0;
}


#ads .card-detail-badge {      
        background: #f2d900;
        text-align: center;
        border-radius: 30px 30px 30px 30px;
        color: #000;
        padding: 5px 10px;
        font-size: 14px;        
    }

   

#ads .card:hover {
            background: #fff;
            box-shadow: 12px 15px 20px 0px rgba(46,61,73,0.15);
            border-radius: 4px;
            transition: all 0.3s ease;
        }

#ads .card-image-overlay {
        font-size: 20px;
        
    }


#ads .card-image-overlay span {
            display: inline-block;              
        }


#ads .ad-btn {
        text-transform: uppercase;
        width: 150px;
        height: 40px;
        border-radius: 80px;
        font-size: 16px;
        line-height: 35px;
        text-align: center;
        border: 3px solid #e6de08;
        display: block;
        text-decoration: none;
        margin: 20px auto 1px auto;
        color: #000;
        overflow: hidden;        
        position: relative;
        background-color: #e6de08;
    }

#ads .ad-btn:hover {
            background-color: #e6de08;
            color: #1e1717;
            border: 2px solid #e6de08;
            background: transparent;
            transition: all 0.3s ease;
            box-shadow: 12px 15px 20px 0px rgba(46,61,73,0.15);
        }

#ads .ad-title h5 {
        text-transform: uppercase;
        font-size: 18px;
    }
</style>
</html>


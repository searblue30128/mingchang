<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

	<link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/images/iconLogo.jpg" />
	
	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css" >
<body>
<jsp:include page="header.jsp"/>
<div class="container">
    <div class="row">
        <div class="span8 offset2">
            <div class="page-header">
                <h1>Show Detail Image Page</h1>
            </div>

	        <c:if  test="${!empty imageCard}">
                <h3>Image List</h3>
                <img class="img-fluid" src="${imageCard.imgUrl}" alt="${imageCard.name}" />
                <table class="table table-bordered table-striped">
                    <thead>
                    <tr>
                        <th>Image Name</th>
                        <th>&nbsp;</th>
                    </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>${imageCard.name}</td>
                        </tr>
                        <tr>
                            <td>${imageCard.description}</td>
                        </tr>
                        <tr>
                            <td>${imageCard.moreDetail}</td>
                        </tr>
                    </tbody>
                </table>
            </c:if>
            
        </div>
    </div>
</div>

</body>
</html>


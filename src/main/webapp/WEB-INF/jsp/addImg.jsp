<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

	<link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/images/iconLogo.jpg" />
	
	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css" >
<body>
<jsp:include page="header.jsp"/>
<div class="container">
    <div class="row">
        <div class="span8 offset2">
            <div class="page-header">
                <h1>Add Image Page</h1>
            </div>
            <form:form method="post" action="addImg" commandName="imageCard" class="form-vertical">

                <form:label path="name">Image Name</form:label><br>
                <form:input path="name" style="width: 100%; height:30px;"/><br>
                <form:label path="description">Image description</form:label><br>
                <form:textarea path="description" style="width: 100%;" /><br>
                <form:label path="imgUrl">Image imgUrl</form:label><br>
                <form:input path="imgUrl" style="width: 100%; height:30px;" /><br>
                <form:label path="moreDetail">Image moreDetail</form:label><br>
                <form:textarea path="moreDetail" style="width: 100%;" /><br>
                <br>
                <input type="submit" value="Add Image" class="btn"/>
            </form:form>


        </div>
    </div>
</div>

</body>
</html>


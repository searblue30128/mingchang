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
                <h1>編輯頁面</h1>
            </div>
            <h3>首頁</h3>
            <hr size="8px" align="center" width="100%">
            <form:form method="post" action="addImg" commandName="imageCard" class="form-vertical">

                <form:label path="name">圖片名稱</form:label><br>
                <form:input path="name" style="width: 100%; height:30px;"/><br>
                <form:label path="description">圖片描述</form:label><br>
                <form:textarea path="description" style="width: 100%;" /><br>
                <form:label path="imgUrl">圖片網址(ex: imgur)</form:label><br>
                <form:input path="imgUrl" style="width: 100%; height:30px;" /><br>
                <form:label path="moreDetail">圖片備註</form:label><br>
                <form:textarea path="moreDetail" style="width: 100%;" /><br>
                <br>
                <input type="submit" value="Add Image" class="btn"/>
            </form:form>



	        <c:if  test="${!empty imageCardList}">
                <h3>圖片清單列表</h3>
                <table class="table table-bordered table-striped">
                    <thead>
                    <tr>
                        <th>圖片名稱</th>
                        <th>&nbsp;</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${imageCardList}" var="imageCard">
                        <tr>
                            <td>${imageCard.name}</td>
                            <td><form action="delete/${imageCard.id}" method="post"><input type="submit" class="btn btn-danger btn-mini" value="Delete"/></form></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </c:if>
            
            <h3>分頁圖片連結設定</h3>
            <hr size="8px" align="center" width="100%">
            <form:form method="post" action="updatePageUrl" commandName="pageUrl" class="form-vertical">

                <form:label path="about">關於</form:label><br>
                <form:input path="about" value="${about}" style="width: 100%; height:30px;"/><br>
                <br>
                <form:label path="service">產品服務</form:label><br>
                <form:input path="service" value="${service}" style="width: 100%; height:30px;"/><br>
                <br>
                <form:label path="contact">聯絡我們</form:label><br>
                <form:input path="contact" value="${contact}" style="width: 100%; height:30px;"/><br>
                <br>
                <input type="submit" value="update url" class="btn"/>
            </form:form>
        </div>
    </div>
</div>

</body>
</html>


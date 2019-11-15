<!doctype html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>


<body>
<jsp:include page="header.jsp"/>
<div class="container">
    <div class="row">
        <div class="span8 offset2">
            <div class="page-header">
                <h1>Add Image Page</h1>
            </div>
            <form:form method="post" action="addImg" commandName="imageCard" class="form-vertical">

                <form:label path="name">Image Name</form:label>
                <form:input path="name" />
                <form:label path="description">Image description</form:label>
                <form:input path="description" style="width: 60%;" />
                <form:label path="imgUrl">Image imgUrl</form:label>
                <form:input path="imgUrl" style="width: 60%;" />
                <form:label path="moreDetail">Image moreDetail</form:label>
                <form:input path="moreDetail" style="width: 60%;" />
                <br>
                <input type="submit" value="Add Image" class="btn"/>
            </form:form>


        </div>
    </div>
</div>

</body>
</html>

<!doctype html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <meta charset="utf-8">
    <title>Spring MVC and Hibernate Template</title>

    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="//netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css" rel="stylesheet">

    <!--
      IMPORTANT:
      This is Heroku specific styling. Remove to customize.
    -->
    <link href="http://heroku.github.com/template-app-bootstrap/heroku.css" rel="stylesheet">
    <!-- /// -->

</head>

<body>

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
                <form:input path="imgUrl" tyle="width: 60%;" />
                <form:label path="moreDetail">Image moreDetail</form:label>
                <form:input path="moreDetail" tyle="width: 60%;" />
                <input type="submit" value="Add Image" class="btn"/>
            </form:form>


        </div>
    </div>
</div>

</body>
</html>

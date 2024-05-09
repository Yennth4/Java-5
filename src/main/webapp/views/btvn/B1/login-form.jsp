<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Login-form</title>
</head>
<body>

<%--@elvariable id="loginRequest" type=""--%>
<form:form modelAttribute="loginRequest" action="/home" method="post">
    <div class="container">
        <p>
            <b>Username: </b>
            <form:input path="username" />
            <form:errors path="username" cssClass="error"/>
        </p>

        <p>
            <b>Password: </b>
            <form:input path="password" />
            <form:errors path="password" cssClass="error"/>
        </p>

        <button type="submit">Login</button>
    </div>
</form:form>
</body>
</html>
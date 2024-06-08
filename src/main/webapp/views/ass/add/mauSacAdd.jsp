<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>MAU SAC</title>
</head>
<body>
<p><h3>MAU SAC</h3></p>
<form action="/mauSac/add" method="post">
    <p>Ma: <input name="ma"></p>
    <p>Ten: <input name="ten"></p>
    <p><button type="submit">ADD</button></p>
</form>
</body>
</html>
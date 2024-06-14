<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>CHUC </title>
</head>
<body>
<p><h3>CHUC VU</h3></p>
<form action="/de5ChucVu/update" method="post">
    <p>Ma: <input name="ma" value="${de5ChucVu.ma}"></p>
    <p>Ten: <input name="ten" value="${de5ChucVu.ten}"></p>
    <p><button type="submit">Update</button></p>
</form>
</body>
</html>
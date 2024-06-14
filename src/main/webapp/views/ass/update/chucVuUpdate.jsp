<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>CHUC VU</title>
</head>
<body>
<p><h3>CHUC VU</h3></p>
<form action="/chucVu/update" method="post">
    <p>Id: <input name="id" value="${chucVu.id}" readonly></p>
    <p>Ma: <input name="ma" value="${chucVu.ma}"></p>
    <p>Ten: <input name="ten" value="${chucVu.ten}"></p>
    <p><button type="submit">Update</button></p>
</form>
</body>
</html>
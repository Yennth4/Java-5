<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>SAN PHAM</title>
</head>
<body>
<p><h3>SAN PHAM</h3></p>
<form action="/sanPham/update" method="post">
    <p>Id: <input name="id" value="${sanPham.id}" readonly></p>
    <p>Ma: <input name="ma" value="${sanPham.ma}"></p>
    <p>Ten: <input name="ten" value="${sanPham.ten}"></p>
    <p><button type="submit">Update</button></p>
</form>
</body>
</html>
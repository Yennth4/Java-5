<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>DONG SAN PHAM</title>
</head>
<body>
<p>
<h3>DONG SAN PHAM</h3></p>
<form action="/dongSanPham/update" method="post">
    <p>Ma: <input name="ma" value="${dongSanPham.ma}"></p>
    <p>Ten: <input name="ten" value="${dongSanPham.ten}"></p>
    <p>
        <button type="submit">Update</button>
    </p>
</form>
</body>
</html>
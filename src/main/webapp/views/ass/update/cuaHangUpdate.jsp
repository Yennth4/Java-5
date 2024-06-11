<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>CUA HANG</title>
</head>
<body>
<p><h3>CUA HANG</h3></p>
<form action="/cuaHang/update" method="post">
    <p>Ma: <input name="ma" value="${cuaHang.ma}"></p>
    <p>Ten: <input name="ten" value="${cuaHang.ten}"></p>
    <p>Dia chi: <input name="diaChi" value="${cuaHang.diaChi}"></p>
    <p>Thanh pho: <input name="thanhPho" value="${cuaHang.thanhPho}"></p>
    <p>Quoc gia: <input name="quocGia" value="${cuaHang.quocGia}"></p>
    <p><button type="submit">Update</button></p>
</form>
</body>
</html>
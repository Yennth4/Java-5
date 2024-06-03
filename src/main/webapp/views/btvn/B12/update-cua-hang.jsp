<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>B12 - Update</title>
</head>
<body>
<form action="/B12/cua-hang/update" method="post">
    <p>
    <h3>UPDATE CUA HANG</h3></p>
    <p><span>Id: ${ch.id}</span></p>
    <p><span>Ma: ${ch.ma}</span></p>
    <p><span>Ten: ${ch.ten}</span></p>
    <p><span>Dia Chi: ${ch.diaChi}</span></p>
    <p><span>Thanh Pho: ${ch.thanhPho}</span></p>
    <p><span>Quoc Gia: ${ch.quocGia}</span></p>
    <p>
        <button type="submit">Update</button>
    </p>
</form>
</body>
</html>
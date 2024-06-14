<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>KHACH HANG</title>
</head>
<body>
<p>
<h3>KHACH HANG</h3></p>
<form action="/de3KhachHang/add" method="post">
    <p>Ma: <input name="ma"></p>
    <p>Ten: <input name="ten"></p>
    <p>Ngay sinh: <input name="ngaySinh" type="date"></p>
    <p>SDT: <input name="sdt"></p>
    <p>Dia chi: <input name="diaChi"></p>
    <p>Thanh pho: <input name="thanhPho"></p>
    <p>Quoc gia: <input name="quocGia"></p>
    <p>Mat khau: <input name="matKhau" type="password"></p>
    <p>
        <button type="submit">ADD</button>
    </p>
</form>
</body>
</html>
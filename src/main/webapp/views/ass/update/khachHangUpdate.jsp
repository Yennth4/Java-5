<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>KHACH HANG</title>
</head>
<body>
<p>
<h3>KHACH HANG</h3></p>
<form action="/de3KhachHang/update" method="post">
    <p>Ma: <input name="ma" value="${de3KhachHang.ma}"></p>
    <p>Ten: <input name="ten" value="${de3KhachHang.ten}"></p>
    <p>Ngay sinh: <input name="ngaySinh" type="date" value="${de3KhachHang.ngaySinh}"></p>
    <p>SDT: <input name="sdt" value="${de3KhachHang.sdt}"></p>
    <p>Dia chi: <input name="diaChi" value="${de3KhachHang.diaChi}"></p>
    <p>Thanh pho: <input name="thanhPho" value="${de3KhachHang.thanhPho}"></p>
    <p>Quoc gia: <input name="quocGia" value="${de3KhachHang.quocGia}"></p>
    <p>Mat khau: <input name="matKhau" type="password" value="${de3KhachHang.matKhau}"></p>
    <p>
        <button type="submit">Update</button>
    </p>
</form>
</body>
</html>
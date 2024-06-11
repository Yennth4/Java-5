<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>KHACH HANG</title>
</head>
<body>
<p>
<h3>KHACH HANG</h3></p>
<form action="/khachHang/update" method="post">
    <p>Ma: <input name="ma" value="${khachHang.ma}"></p>
    <p>Ten: <input name="ten" value="${khachHang.ten}"></p>
    <p>Ngay sinh: <input name="ngaySinh" type="date" value="${khachHang.ngaySinh}"></p>
    <p>SDT: <input name="sdt" value="${khachHang.sdt}"></p>
    <p>Dia chi: <input name="diaChi" value="${khachHang.diaChi}"></p>
    <p>Thanh pho: <input name="thanhPho" value="${khachHang.thanhPho}"></p>
    <p>Quoc gia: <input name="quocGia" value="${khachHang.quocGia}"></p>
    <p>Mat khau: <input name="matKhau" type="password" value="${khachHang.matKhau}"></p>
    <p>
        <button type="submit">Update</button>
    </p>
</form>
</body>
</html>
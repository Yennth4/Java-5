<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>GIO HANG</title>
</head>
<body>
<p>
<h3>GIO HANG</h3></p
<form action="/gioHang/add" method="post">
    <p>Khach hang:
        <select name="khachHang">
            <c:forEach items="${listKhachHang}" var="kh">
                <option value="${kh.id}">${kh.ten}</option>
            </c:forEach>
        </select>
    </p>
    <p>Nhan vien:
        <select name="nhanVien">
            <c:forEach items="${listNhanVien}" var="nv">
                <option value="${nv.id}">${nv.ten}</option>
            </c:forEach>
        </select>
    </p>
    <p>Ma: <input name="ma"></p>
    <p>
        Ngay tao: <input name="ngayTao" type="date">
    </p>
    <p>Ten: <input name="tenNguoiNhan"></p>
    <p>Dia chi: <input name="diaChi"></p>
    <p>SDT: <input name="sdt"></p>
    <p>Tinh trang:
        <input name="tinhTrang" type="radio" value="1"> Thanh toan
        <input name="tinhTrang" type="radio" value="0" checked> Chua thanh toan
    </p>
    <p>
        <button type="submit">ADD</button>
    </p>
</form>
</body>
</html>
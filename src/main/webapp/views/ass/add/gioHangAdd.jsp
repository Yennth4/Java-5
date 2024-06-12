<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>GIO HANG</title>
</head>
<body>
<p><h3>GIO HANG</h3></p>
<form action="/gioHang/add" method="post">
    <p>Khach hang:
        <select name="khachHang">
            <c:forEach items="${listKhachHang}" var="khachHang">
                <option value="${khachHang.id}">${khachHang.ten}</option>
            </c:forEach>
        </select>
    </p>
    <p>Nhan vien:
        <select name="nhanVien">
            <c:forEach items="${listNhanVien}" var="nhanVien">
                <option value="${nhanVien.id}">${nhanVien.ten}</option>
            </c:forEach>
        </select>
    </p>
    <p>Ma: <input name="ma"></p>
    <p>Ten: <input name="tenNguoiNhan"></p>
    <p>Dia chi: <input name="diaChi"></p>
    <p>Sdt: <input name="sdt"></p>
    <p>Ngay tao: <input type="date" name="ngayTao"></p>
    <p>Tinh trang:
        <input name="tinhTrang" type="radio" value="1"> Thanh toan
        <input name="tinhTrang" type="radio" value="0"> Chua thanh toan
    </p>
    <p><button type="submit">ADD</button></p>
</form>
</body>
</html>
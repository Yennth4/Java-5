<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>GIO HANG CHI TIET</title>
</head>
<body>
<p><h3>GIO HANG CHI TIET</h3></p>
<form action="/gioHangChiTiet/add" method="post">
    <p>Gio hang:
        <select name="gioHang">
            <c:forEach items="${listGioHang}" var="gioHang">
                <option value="${gioHang.id}">${gioHang.ma}</option>
            </c:forEach>
        </select>
    </p>
    <p>Chi Tiet San Pham:
        <select name="chiTietSanPham">
            <c:forEach items="${listChiTietSanPham}" var="chiTietSanPham">
                <option value="${chiTietSanPham.id}">${chiTietSanPham.id}</option>
            </c:forEach>
        </select>
    </p>
    <p>So luong: <input name="soLuong"></p>
    <p>Don gia: <input name="donGia"></p>
    <p>Don gia khi giam: <input name="donGiaKhiGiam"></p>
    <p><button type="submit">Add</button></p>
</form>
</body>
</html>
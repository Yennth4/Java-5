<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>HOA DON CHI TIET</title>
</head>
<body>
<p><h3>HOA DON CHI TIET</h3></p>
<form action="/hoaDonChiTiet/add" method="post">
    <p>Hoa don:
        <select name="hoaDon">
            <c:forEach items="${listHoaDon}" var="hoaDon">
                <option value="${hoaDon.id}">${hoaDon.ma}</option>
            </c:forEach>
        </select>
    </p>
    <p>Gio hang:
        <select name="gioHang">
            <c:forEach items="${listGioHang}" var="gioHang">
                <option value="${gioHang.id}">${gioHang.ma}</option>
            </c:forEach>
        </select>
    </p>
    <p>Hoa don:
        <select name="chiTietSanPham">
            <c:forEach items="${listChiTietSanPham}" var="chiTietSanPham">
                <option value="${chiTietSanPham.id}">${chiTietSanPham.id}</option>
            </c:forEach>
        </select>
    </p>
    <p>So luong: <input name="soLuong"></p>
    <p>Don gia: <input name="donGia"></p>
    <p><button type="submit">Add</button></p>
</form>
</body>
</html>
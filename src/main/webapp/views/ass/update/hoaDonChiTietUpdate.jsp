<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>HOA DON CHI TIET</title>
</head>
<body>
<p><h3>HOA DON CHI TIET</h3></p>
<form action="/hoaDonChiTiet/update" method="post">
    <p>Id: <input name="id" value="${hoaDonChiTiet.id}" readonly></p>
    <p>Hoa don:
        <select name="de3HoaDon">
            <c:forEach items="${listHoaDon}" var="de3HoaDon">
                <option value="${de3HoaDon.id}" ${de3HoaDon.id == hoaDonChiTiet.de3HoaDon.id ? 'selected' : ''}>${de3HoaDon.ma}</option>
            </c:forEach>
        </select>
    </p>
    <p>Gio hang:
        <select name="gioHang">
            <c:forEach items="${listGioHang}" var="gioHang">
                <option value="${gioHang.id}" ${gioHang.id == hoaDonChiTiet.gioHang.id ? 'selected' : ''}>${gioHang.ma}</option>
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
    <p>So luong: <input name="soLuong" value="${hoaDonChiTiet.soLuong}"></p>
    <p>Don gia: <input name="donGia" value="${hoaDonChiTiet.donGia}"></p>
    <p><button type="submit">Update</button></p>
</form>
</body>
</html>
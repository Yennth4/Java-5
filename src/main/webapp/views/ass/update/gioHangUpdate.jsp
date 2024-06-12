<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>GIO HANG</title>
</head>
<body>
<p>
<h3>GIO HANG</h3></p>
<form action="/gioHang/update" method="post">
    <p>Khach hang:
        <select name="khachHang">
            <c:forEach items="${listKhachHang}" var="khachHang">
                <option value="${khachHang.id}" ${khachHang.id == gioHang.khachHang.id ? 'selected' : ''}>${khachHang.ten}</option>
            </c:forEach>
        </select>
    </p>
    <p>Nhan vien:
        <select name="nhanVien">
            <c:forEach items="${listNhanVien}" var="nhanVien">
                <option value="${nhanVien.id}" ${nhanVien.id == gioHang.nhanVien.id ? 'selected' : ''}>${nhanVien.ten}</option>
            </c:forEach>
        </select>
    </p>
    <p>Ma: <input name="ma" value="${gioHang.ma}"></p>
    <p>
        Ngay tao: <input name="ngayTao" type="date" value="${gioHang.ngayTao}">
    </p>
    <p>Ten: <input name="tenNguoiNhan" value="${gioHang.tenNguoiNhan}"></p>
    <p>Dia chi: <input name="diaChi" value="${gioHang.diaChi}"></p>
    <p>SDT: <input name="sdt" value="${gioHang.sdt}"></p>
    <p>Tinh trang:
        <input name="tinhTrang" type="radio" value="1" ${gioHang.tinhTrang == 1 ? 'checked' : ''}> Thanh toan
        <input name="tinhTrang" type="radio" value="0" ${gioHang.tinhTrang == 0 ? 'checked' : ''}> Chua thanh toan
    </p>
    <p>
        <button type="submit">Update</button>
    </p>
</form>
</body>
</html>
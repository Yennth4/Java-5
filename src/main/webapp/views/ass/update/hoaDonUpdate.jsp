<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>HOA DON</title>
</head>
<body>
<p>
<h3>HOA DON</h3></p>
<form action="/hoaDon/update" method="post">
    <p>Khach hang:
        <select name="khachHang">
            <c:forEach items="${listKhachHang}" var="khachHang">
                <option value="${khachHang.id}" ${khachHang.id == hoaDon.khachHang.id ? 'selected' : ''}>${khachHang.ten}</option>
            </c:forEach>
        </select>
    </p>
    <p>Nhan vien:
        <select name="nhanVien">
            <c:forEach items="${listNhanVien}" var="nhanVien">
                <option value="${nhanVien.id}" ${nhanVien.id == hoaDon.nhanVien.id ? 'selected' : ''}>${nhanVien.ten}</option>
            </c:forEach>
        </select>
    </p>
    <p>Ma: <input name="ma" value="${hoaDon.ma}"></p>
    <p>
        Ngay tao: <input name="ngayTao" type="date" value="${hoaDon.ngayTao}">
    </p>
    <p>Tinh trang:
        <input name="tinhTrang" type="radio" value="1" ${hoaDon.tinhTrang == 1 ? 'checked' : ''}> Thanh toan
        <input name="tinhTrang" type="radio" value="0" ${hoaDon.tinhTrang == 0 ? 'checked' : ''}> Chua thanh toan
    </p>
    <p>Ten: <input name="tenNguoiNhan" value="${hoaDon.tenNguoiNhan}"></p>
    <p>Dia chi: <input name="diaChi" value="${hoaDon.diaChi}"></p>
    <p>SDT: <input name="sdt" value="${hoaDon.sdt}"></p>
    <p>
        <button type="submit">Update</button>
    </p>
</form>
</body>
</html>
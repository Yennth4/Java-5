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
<form action="/de3HoaDon/update" method="post">
    <p>Khach hang:
        <select name="de3KhachHang">
            <c:forEach items="${listKhachHang}" var="de3KhachHang">
                <option value="${de3KhachHang.id}" ${de3KhachHang.id == de3HoaDon.de3KhachHang.id ? 'selected' : ''}>${de3KhachHang.ten}</option>
            </c:forEach>
        </select>
    </p>
    <p>Nhan vien:
        <select name="nhanVien">
            <c:forEach items="${listNhanVien}" var="nhanVien">
                <option value="${nhanVien.id}" ${nhanVien.id == de3HoaDon.nhanVien.id ? 'selected' : ''}>${nhanVien.ten}</option>
            </c:forEach>
        </select>
    </p>
    <p>Ma: <input name="ma" value="${de3HoaDon.ma}"></p>
    <p>
        Ngay tao: <input name="ngayTao" type="date" value="${de3HoaDon.ngayTao}">
    </p>
    <p>Tinh trang:
        <input name="tinhTrang" type="radio" value="1" ${de3HoaDon.tinhTrang == 1 ? 'checked' : ''}> Thanh toan
        <input name="tinhTrang" type="radio" value="0" ${de3HoaDon.tinhTrang == 0 ? 'checked' : ''}> Chua thanh toan
    </p>
    <p>Ten: <input name="tenNguoiNhan" value="${de3HoaDon.tenNguoiNhan}"></p>
    <p>Dia chi: <input name="diaChi" value="${de3HoaDon.diaChi}"></p>
    <p>SDT: <input name="sdt" value="${de3HoaDon.sdt}"></p>
    <p>
        <button type="submit">Update</button>
    </p>
</form>
</body>
</html>
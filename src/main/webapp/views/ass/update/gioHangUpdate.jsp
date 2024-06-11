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
                <option value="${kh.id}" ${kh.id == gioHang.khachHang.id ? 'selected' : ''}>${kh.ten}</option>
            </c:forEach>
        </select>
    </p>
    <p>Nhan vien:
        <select name="nhanVien">
            <c:forEach items="${listNhanVien}" var="nv">
                <option value="${nv.id}" ${nv.id == gioHang.nhanVien.id ? 'selected' : ''}>${nv.ten}</option>
            </c:forEach>
        </select>
    </p>
    <p>Ma: <input name="ma" value="${gioHang.ma}"></p>
    <p>
        Ngay tao: <input name="ngayTao" type="date" value="${gioHang.ngayTao}">
    </p>
    <p>Ten: <input name="tenNguoiNhan" value="${gioHang.tenNguoiNhan}"></p>
    <p>Dia chi: <input name="diaChi" value="${gioHang.diaChi}" ></p>
    <p>SDT: <input name="sdt" value="${gioHang.sdt}"></p>
    <p>Tinh trang:
        <input name="tinhTrang" type="radio" value="1" ${gioHang.sdt == 1 ? 'checked' : ''}> Thanh toan
        <input name="tinhTrang" type="radio" value="0" ${gioHang.sdt == 0 ? 'checked' : ''}> Chua thanh toan
    </p>
    <p>
        <button type="submit">Update</button>
    </p>
</form>
</body>
</html>
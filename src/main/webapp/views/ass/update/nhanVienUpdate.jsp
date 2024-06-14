<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>NHAN VIEN</title>
</head>
<body>
<p><h3>NHAN VIEN</h3></p>
<form action="/nhanVien/update" method="post">
    <p>Ma: <input name="ma" value="${nhanVien.ma}"></p>
    <p>Ten: <input name="ten" value="${nhanVien.ten}"></p>
    <p>Gioi tinh:
        <input name="gioiTinh" type="radio" value="1" ${nhanVien.gioiTinh == 1 ? 'checked' : '' }> Nam
        <input name="gioiTinh" type="radio" value="0" ${nhanVien.gioiTinh == 0 ? 'checked' : '' }> Nu
    </p>
    <p>
        Ngay sinh: <input name="ngaySinh" type="date" value="${nhanVien.ngaySinh}">
    </p>
    <p>Dia chi: <input name="diaChi" value="${nhanVien.diaChi}"></p>
    <p>SDT: <input name="sdt" value="${nhanVien.sdt}"></p>
    <p>Mat khau: <input name="matKhau" type="password" value="${nhanVien.matKhau}"></p>
    <p>Cua hang:
        <select name="cuaHang">
            <c:forEach items="${listCuaHang}" var="ch">
                <option value="${ch.id}" ${ch.id == nhanVien.cuaHang.id ? 'selected' : ''}>${ch.ten}</option>
            </c:forEach>
        </select>
    </p>
    <p>Chuc vu:
        <select name="de5ChucVu">
            <c:forEach items="${listChucVu}" var="cv">
                <option value="${cv.id}" ${cv.id == nhanVien.de5ChucVu.id ? 'selected' : ''}>${cv.ten}</option>
            </c:forEach>
        </select>
    </p>
    <p>Trang thai:
        <input name="trangThai" type="radio" value="1" ${nhanVien.trangThai == 1 ? 'checked' : '' }> On
        <input name="trangThai" type="radio" value="0" ${nhanVien.trangThai == 0 ? 'checked' : '' }> Off
    </p>
    <p><button type="submit">Update</button></p>
</form>
</body>
</html>
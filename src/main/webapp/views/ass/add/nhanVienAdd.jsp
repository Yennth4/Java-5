<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>NHAN VIEN</title>
</head>
<body>
<p><h3>NHAN VIEN</h3></p>
<form action="/nhanVien/add" method="post">
    <p>Ma: <input name="ma"></p>
    <p>Ten: <input name="ten"></p>
    <p>Gioi tinh:
        <input name="gioiTinh" type="radio" value="1"> Nam
        <input name="gioiTinh" type="radio" value="0"> Nu
    </p>
    <p>
        Ngay sinh: <input name="ngaySinh" type="date">
    </p>
    <p>Dia chi: <input name="diaChi"></p>
    <p>SDT: <input name="sdt"></p>
    <p>Mat khau: <input name="matKhau" type="password"></p>
    <p>Cua hang:
        <select name="cuaHang">
            <c:forEach items="${listCuaHang}" var="ch">
                <option value="${ch.id}">${ch.ten}</option>
            </c:forEach>
        </select>
    </p>
    <p>Chuc vu:
        <select name="de5ChucVu">
            <c:forEach items="${listChucVu}" var="cv">
                <option value="${cv.id}">${cv.ten}</option>
            </c:forEach>
        </select>
    </p>
    <p>Trang thai:
        <input name="trangThai" type="radio" value="1"> On
        <input name="trangThai" type="radio" value="0"> Off
    </p>
    <p><button type="submit">ADD</button></p>
</form>
</body>
</html>
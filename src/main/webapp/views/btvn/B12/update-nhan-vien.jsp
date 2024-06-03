<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>B12 - Update</title>
</head>
<body>
<form action="/B12/nhan-vien/update" method="post">
    <p><h3>UPDATE NHAN VIEN</h3></p>
    <p><span>Id: ${nv.id}</span></p>
    <p><span>Ma: ${nv.ma}</span></p>
    <p><span>Ten: ${nv.ten}</span></p>
    <p><span>Ten dem: ${nv.tenDem}</span></p>
    <p><span>Ho: ${nv.ho}</span></p>
    <p><span>Gioi tinh: ${nv.gioiTinh}</span></p>
    <p><span>Ngay sinh: ${nv.ngaySinh}</span></p>
    <p><span>SDT: ${nv.sdt}</span></p>
    <p><span>Mat khau: ${nv.matKhau}</span></p>
    <p><span>Trang thai: ${nv.trangThai}</span></p>
    <p>
        <button type="submit">Update</button>
    </p>
</form>
</body>
</html>
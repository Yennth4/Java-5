<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>B10 - Update Phong Ban</title>
</head>
<body>
<form action="/B10/phong-ban/update" method="post">
    <p><h3>Update Phong Ban</h3></p>
    <p><span>Id: ${pb.id}</span></p>
    <p><span>Loai phong ban: ${pb.loaiPhongBan}</span></p>
    <p><span>Ma: ${pb.ma}</span></p>
    <p><span>Ten: ${pb.ten}</span></p>
    <p><span>So luong phong ban: ${pb.soLuongPhongBan}</span></p>
    <p><span>So luong nhan vien: ${pb.soLuongNhanVien}</span></p>
    <p><span>Ghi chu: ${pb.ghiChu}</span></p>
    <p><span>Trang thai: ${pb.trangThai}</span></p>
    <p>
        <button type="submit">Update</button>
    </p>
</form>
</body>
</html>
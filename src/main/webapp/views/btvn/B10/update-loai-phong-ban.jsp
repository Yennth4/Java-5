<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>B10 - Update Loai Phong Ban</title>
</head>
<body>
<form action="/B10/loai-phong-ban/update" method="post">
    <p>
    <h3>Update Loai Phong Ban</h3></p>
    <p><span>Id: ${lpb.id}</span></p>
    <p><span>Ma: ${lpb.ma}</span></p>
    <p><span>Ten: ${lpb.ten}</span></p>
    <p><span>So luong: ${lpb.soLuong}</span></p>
    <p><span>Ghi chu: ${lpb.ghiChu}</span></p>
    <p><span>Trang thai: ${lpb.trangThai}</span></p>
    <p>
        <button type="submit">Update</button>
    </p>
</form>
</body>
</html>
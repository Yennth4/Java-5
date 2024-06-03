<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>B11 - Update</title>
</head>
<body>
<form action="/B11/tk/update" method="post">
    <p>ID : <input name="id" value="${tk.id}" readonly></p>
    <p>Ma : <input name="ma" value="${tk.ma}"></p>
    <p>Ten tai khoan : <input name="hoTen" value="${tk.hoTen}"></p>
    <p>So tai khoan : <input name="soTaiKhoan" value="${tk.soTaiKhoan}"></p>
    <p>Ten ngan hang : <input name="tenNganHang" value="${tk.tenNganHang}"></p>
    <p>Ten chi nhanh : <input name="tenChiNhanh" value="${tk.tenChiNhanh}"></p>
    <p>Dia chi : <input name="diaChi" value="${tk.diaChi}"></p>
    <p>Ghi chu : <input name="ghiChu" value="${tk.ghiChu}"></p>
    <p>Trang thai :
        <input type="radio" name="trangThai" value="1" checked ${trangThai == 1 ? 'checked' : '' }> On
        <input type="radio" name="trangThai" value="0" ${trangThai == 0 ? 'checked' : '' }> Off
    </p>
    <p>
        <button type="submit">Update</button>
    </p>
</form>
</body>
</html>
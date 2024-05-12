<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ket qua</title>
</head>
<body>
<h3>Thong tin dang ki</h3>
<form action="/dang-ky" method="post">
    <p style="color: red ; font-size: 13px">Dang ki thong tin thanh cong</p>
    <p>Ho ten: ${hoTen}</p>
    <p>Tuoi: ${tuoi}</p>
    <p>Nganh hoc: ${nganhHoc}</p>
    <p>Que quan: ${queQuan}</p>
    <p>Mat khau: ${matKhau}</p>
    <p>Confirm mat khau: ${confirmMatKhau}</p>
</form>
</body>
</html>
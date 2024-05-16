<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Detail</title>
</head>
<body>
<h3>Thong tin sinh vien</h3>
<form>
    <p>MSSV: <input type="text" name="mssv" value="${sv1.mssv}" disabled/></p>

    <p>Tên: <input type="text" name="ten" value="${sv1.ten} " disabled/></p>

    <p>Tuổi: <input type="text" name="tuoi" value="${sv1.tuoi}" disabled/></p>

    <p>Địa chỉ: <input type="text" name="diaChi" value="${sv1.diaChi} " disabled/></p>

    <p>
        Giới tính:
        <input type="radio" name="gioiTinh" checked value="true" ${sv1.gioiTinh == true ? "checked" : ""} disabled/>Nam
        <input type="radio" name="gioiTinh" value="false" ${sv1.gioiTinh == false ? "checked" : ""} disabled/>Nữ
    </p>

    <p>
        <a href="/sinh-vien/view-update/${sv1.mssv}" class="btn btn-warning">Chinh sua</a>
        <a href="/sinh-vien/hien-thi" class="btn btn-primary">Cancel</a>
    </p>
</form>

</body>
</html>

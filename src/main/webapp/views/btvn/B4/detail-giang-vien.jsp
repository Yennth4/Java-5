<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<html>
<head>
    <title>Thong tin chi tiet giang vien</title>
</head>
<body>
<h3>Thong tin chi tiet giang vien</h3>
<form>
    <p>ID: <input value="${gv1.id}" disabled name="id"/></p>
    <p>Ma: <input value="${gv1.ma}" disabled name="ma"/></p>
    <p>Ten: <input value="${gv1.ten}" disabled name="ten"/></p>
    <p>Tuoi: <input value="${gv1.tuoi}" disabled name="tuoi"/></p>
    <p>Gioi tinh:
        <input type="radio" disabled name="gioiTinh" value="true" ${gv1.gioiTinh ? "checked" : ""}/> Duc
        <input type="radio" disabled name="gioiTinh" value="false" ${gv1.gioiTinh == false ? "checked" : ""}/> Cai
    </p>
    <p>Dia chi: <input value="${gv1.diaChi}" disabled name="diaChi"/></p>
    <p>
        <a href="/giang-vien/view-update/${gv1.id}">
            <button type="button">Update</button>
        </a>
        <a href="/giang-vien/hien-thi">
            <button type="button">Back</button>
        </a>
    </p>
    <form>
</body>
</html>
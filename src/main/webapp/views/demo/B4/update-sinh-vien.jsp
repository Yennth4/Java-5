<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<html>
<head>
    <title>Update</title>
</head>
<body>

<%--@elvariable id="sinhVien" type=""--%>
<form:form modelAttribute="sinhVien" action="/sinh-vien/update" method="post">
    <h3>Cap nhap thong tin sinh vien</h3>
    <p>
        MSSV: <form:input path="mssv" value="${sv1.mssv}" readonly="true"/>
        <form:errors cssStyle="color: red" path="mssv"/>

    </p>

    <p>
        Tên: <form:input path="ten" value="${sv1.ten}"/>
        <form:errors cssStyle="color: red" path="ten"/>
    </p>

    <p>
        Tuổi: <form:input path="tuoi" value="${sv1.tuoi}"/>
        <form:errors cssStyle="color: red" path="tuoi"/>
    </p>

    <p>
        Địa chỉ: <form:input path="diaChi" value="${sv1.diaChi}"/>
        <form:errors cssStyle="color: red" path="diaChi"/>
    </p>

    <p>
        Giới tính:
        <input type="radio" name="gioiTinh" checked value="true" ${sv1.gioiTinh == true ? "checked" : ""} />Nam
        <input type="radio" name="gioiTinh" value="false" ${sv1.gioiTinh == false ? "checked" : ""} />Nữ
    </p>

    <p>
        <button class="btn btn-warning" type="submit" onclick="return confirm('Ban co muon sua ID ${sv1.mssv} khong ?') ? alert('Sua thanh cong ID ${sv1.mssv}') : false;">Update</button>
        <a href="/sinh-vien/hien-thi" class="btn btn-primary">Cancel</a>
    </p>
</form:form>

</body>
</html>

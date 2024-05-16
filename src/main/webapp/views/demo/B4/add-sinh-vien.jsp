<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add</title>
</head>
<body>
<h3>Them sinh vien</h3>
<%--@elvariable id="sinhVien" type=""--%>
<form:form modelAttribute="sinhVien" action="/sinh-vien/add" method="post">

    <p>
        MSSV: <form:input path="mssv"/>
        <form:errors cssStyle="color: red" path="mssv"/>
    </p>

    <p>
        Tên: <form:input path="ten"/>
        <form:errors cssStyle="color: red" path="ten"/>
    </p>

    <p>
        Tuổi: <form:input path="tuoi"/>
        <form:errors cssStyle="color: red" path="tuoi"/>
    </p>

    <p>
        Địa chỉ: <form:input path="diaChi"/>
        <form:errors cssStyle="color: red" path="diaChi"/>
    </p>

    <p>
        Giới tính:
        <form:radiobutton path="gioiTinh" value="true"/>Nam
        <form:radiobutton path="gioiTinh" value="false"/>Nữ
        <form:errors cssStyle="color: red" path="gioiTinh"/>
    </p>
    <p>
        <button type="submit" class="btn btn-primary">Add</button>
    </p>
</form:form>
</body>
</html>

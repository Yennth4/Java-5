<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Update GiangVien</title>
    <meta charset="UTF-8">
    <style>
        .error {
            color: red;
        }
    </style>
</head>
<body>
<h2>Update GiangVien</h2>
<form:form method="POST" modelAttribute="gv" action="/giangvien/update/${ma}">
    <div class="form-group">
        <form:label path="ma">Mã:</form:label>
        <form:input path="ma" />
        <form:errors path="ma" cssClass="error" />
    </div>
    <div class="form-group">
        <form:label path="ten">Tên:</form:label>
        <form:input path="ten" />
        <form:errors path="ten" cssClass="error" />
    </div>
    <div class="form-group">
        <form:label path="tuoi">Tuổi:</form:label>
        <form:input path="tuoi" />
        <form:errors path="tuoi" cssClass="error" />
    </div>
    <div class="form-group">
        <form:label path="diaChi">Địa chỉ:</form:label>
        <form:input path="diaChi" />
        <form:errors path="diaChi" cssClass="error" />
    </div>

    <div>
        <button type="submit">Update</button>
    </div>
</form:form>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Dang ky</title>
</head>
<body>
<h3>Dang ky thong tin</h3>
<%--@elvariable id="dangKyRequest" type=""--%>
<form:form modelAttribute="dangKyRequest" action="/ket-qua2" method="post">
    <p>
        Ho ten: <form:input path="hoTen" placeholder="Nhap ho va ten"/>
        <form:errors path="hoTen" cssClass="error" cssStyle="color: red"/>
    </p>

    <p>
        Tuoi: <form:input path="tuoi" placeholder="Nhap tuoi"/>
        <form:errors path="tuoi" cssClass="error" cssStyle="color: red"/>
    </p>

    <p>
        Nganh hoc: <form:input path="nganhHoc" placeholder="Nhap nganh hoc"/>
        <form:errors path="nganhHoc" cssClass="error" cssStyle="color: red"/>
    </p>

    <p>
        Que quan: <form:input path="queQuan" placeholder="Nhap nganh hoc"/>
        <form:errors path="queQuan" cssClass="error" cssStyle="color: red"/>
    </p>

    <p>
        Mat khau: <form:input path="matKhau" placeholder="Nhap mat khau"/>
        <form:errors path="matKhau" cssClass="error" cssStyle="color: red"/>
    </p>

    <p>
        Confirm mat khau: <form:input path="confirmMatKhau" placeholder="Nhap lai mat khau"/>
        <form:errors path="confirmMatKhau" cssClass="error" cssStyle="color: red"/>
    </p>

    <p>
        <form:button type="submit">Submit</form:button>
    </p>
</form:form>
</body>
</html>
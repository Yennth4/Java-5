<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>BTVN B3</title>
</head>
<body>
<%--@elvariable id="dangKyRequestBTVN" type=""--%>
<h3>Dang ki thong tin BTVN B3</h3>
<form:form modelAttribute="dangKyRequestBTVN" action="ket-qua3" method="post">
    <p>MSSV: <form:input path="mssv"/></p>
    <form:errors path="mssv"/>

    <p>Ho ten: <form:input path="hoTen"/></p>
    <form:errors path="hoTen"/>

    <p>Tuoi: <form:input path="tuoi"/></p>
    <form:errors path="tuoi"/>

    <p>Gioi tinh: <form:radiobutton path="gioiTinh" itemValue="nam"/>Nam</p>
                <form:radiobutton path="gioiTinh" itemValue="nu"/>Nu</p>
    <form:errors path="gioiTinh"/>

    <p>Ky hoc: <form:select path="kyHoc">
            <form:options /> Ky 1
            <form:options /> Ky 2
            <form:options /> Ky 3
    </form:select>
    </p>
    <form:errors path="kyHoc"/>

    <p>Nganh hoc: <form:input path="nganhHoc"/></p>
    <form:errors path="nganhHoc"/>

    <p>Que quan: <form:input path="queQuan"/></p>
    <form:errors path="queQuan"/>

    <p>Mat khau: <form:input path="matKhau"/></p>
    <form:errors path="matKhau"/>

    <p>Confirm mat khau: <form:input path="cfMatKhau"/></p>
    <form:errors path="cfMatKhau"/>

    <p><form:button type="submit">Submit</form:button></p>
</form:form>
</body>
</html>
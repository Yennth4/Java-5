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
    <form:errors cssStyle="color: red" path="mssv"/>

    <p>Ho ten: <form:input path="hoTen"/></p>
    <form:errors cssStyle="color: red" path="hoTen"/>

    <p>Tuoi: <form:input path="tuoi"/></p>
    <form:errors cssStyle="color: red" path="tuoi"/>

    <p>Gioi tinh:
        <form:radiobutton path="gioiTinh" value="nam"/>Nam
        <form:radiobutton path="gioiTinh" value="nu"/>Nu
    </p>
    <form:errors cssStyle="color: red" path="gioiTinh"/>

    <p>Ky hoc:
        <form:select path="kyHoc">
            <form:option disabled="false" value="">Chon ky hoc</form:option>
            <form:option value="1">Ky 1</form:option>
            <form:option value="2">Ky 2</form:option>
            <form:option value="3">Ky 3</form:option>
        </form:select>
    </p>
    <form:errors cssStyle="color: red" path="kyHoc"/>

    <p>Nganh hoc: <form:input path="nganhHoc"/></p>
    <form:errors cssStyle="color: red" path="nganhHoc"/>

    <p>Que quan: <form:input path="queQuan"/></p>
    <form:errors cssStyle="color: red" path="queQuan"/>

    <p>Mat khau: <form:input path="matKhau"/></p>
    <form:errors cssStyle="color: red" path="matKhau"/>

    <p>Confirm mat khau: <form:input path="cfMatKhau"/></p>
    <form:errors cssStyle="color: red" path="cfMatKhau"/>

    <p><form:button type="submit">Submit</form:button></p>
</form:form>
</body>
</html>
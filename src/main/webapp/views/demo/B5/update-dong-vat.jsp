<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update</title>
</head>
<body>
<h2>UPDATE DONG VAT</h2>
<%--@elvariable id="dongVat" type=""--%>
<form:form modelAttribute="dongVat" action="/dong-vat/update" method="post" >
    <p>Ma: <form:input path="ma" value="${dv1.ma}" readonly="true"/>
        <form:errors path="ma" cssStyle="color: red"/>
    </p>
    <p>Khu vuc song:
        <select name="khuVuc" value="${dv1.khuVuc}">
            <option value="CV01">CV01</option>
            <option value="CV02">CV02</option>
            <option value="CV03">CV03</option>
        </select>
    </p>
    <p>Ten: <form:input path="ten" value="${dv1.ten}"/>
        <form:errors path="ten" cssStyle="color: red"/>
    </p>
    <p>Can nang: <form:input path="canNang" value="${dv1.canNang}"/>
        <form:errors path="canNang" cssStyle="color: red"/>
    </p>
    <p>Gioi tinh:
        <input type="radio" name="gioiTinh" value="true" checked ${dv1.gioiTinh ? 'checked' : ''}> Duc
        <input type="radio" name="gioiTinh" value="false" ${!dv1.gioiTinh ? 'checked' : ''}> Cai
    </p>
    <p><form:button type="submit" class="btn btn-warning">Update</form:button></p>
</form:form>
</body>
</html>
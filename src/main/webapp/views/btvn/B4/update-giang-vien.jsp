<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Chinh sua giang vien</title>
</head>
<body>
<h3>Chinh sua giang vien</h3>
<%--@elvariable id="giangVien" type=""--%>
<form:form action="/giang-vien/update" method="post" modelAttribute="giangVien">
    <p>ID: <form:input value="${gv1.id}" path="id" readonly="true"/>
        <form:errors cssStyle="color: red" path="id"/>
    </p>

    <p>Ma: <form:input value="${gv1.ma}" path="ma"/>
        <form:errors cssStyle="color: red" path="ma"/>
    </p>

    <p>Ten: <form:input value="${gv1.ten}" path="ten"/>
        <form:errors cssStyle="color: red" path="ten"/>
    </p>

    <p>Tuoi: <form:input value="${gv1.tuoi}" path="tuoi"/>
        <form:errors cssStyle="color: red" path="tuoi"/>
    </p>

    <p>Gioi tinh:
        <input type="radio" name="gioiTinh" value="true" ${gv1.gioiTinh ? "checked" : ""}/> Duc
        <input type="radio" name="gioiTinh" value="false" ${gv1.gioiTinh == false ? "checked" : ""}/> Cai
        <form:errors cssStyle="color: red" path="gioiTinh"/>
    </p>

    <p>Dia chi: <form:input value="${gv1.diaChi}" path="diaChi"/>
        <form:errors cssStyle="color: red" path="diaChi"/>
    </p>

    <p>
        <button type="submit">Update</button>
        <a href="/giang-vien/hien-thi"><button type="button">Back</button></a>
    </p>
</form:form>
</body>
</html>
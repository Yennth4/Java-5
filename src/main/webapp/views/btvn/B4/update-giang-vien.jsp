<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add giang vien</title>
</head>
<body>
<h3>Them giang vien</h3>
<%--@elvariable id="giangVien" type=""--%>
<form:form action="/giang-vien/add" method="post" modelAttribute="giangVien">
    <p>ID: <form:input value="${id}" path="id"/>
        <form:errors cssStyle="color: red" path="id"/>
    </p>

    <p>Ma: <form:input value="${ma}" path="ma"/>
        <form:errors cssStyle="color: red" path="ma"/>
    </p>

    <p>Ten: <form:input value="${ten}" path="ten"/>
        <form:errors cssStyle="color: red" path="ten"/>
    </p>

    <p>Tuoi: <form:input value="${tuoi}" path="tuoi"/>
        <form:errors cssStyle="color: red" path="tuoi"/>
    </p>


    <p>Gioi tinh:

    </p>


    <p>Dia chi: <form:input value="${ma}" path="diaChi"/>
        <form:errors cssStyle="color: red" path="diaChi"/>
    </p>

    <p>
        <button type="submit">Add</button>
    </p>
</form:form>
</body>
</html>
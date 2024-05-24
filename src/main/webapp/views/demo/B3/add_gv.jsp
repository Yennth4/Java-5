<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<html>
<head>
    <title>Person Form</title>
</head>
<body>
<h2>Add Form</h2>
<form:form method="post" modelAttribute="gv" action="/giangvien/store">
    <div>
        <form:label path="ma">Mã: </form:label>
        <form:input path="ma" />
        <br>
        <form:errors path="ma" cssStyle="color: red" />
    </div>
    <div>
        <form:label path="ten">Tên: </form:label>
        <form:input path="ten" />
        <br>
        <form:errors path="ten" cssStyle="color: red" />
    </div>
    <div>
        <form:label path="tuoi">Tuổi: </form:label>
        <form:input path="tuoi" />
        <br>
        <form:errors path="tuoi" cssStyle="color: red" />
    </div>
    <div>
        <form:label path="diaChi">Địa chỉ:</form:label>
        <form:input path="diaChi" />
        <br>
        <form:errors path="diaChi" cssStyle="color: red" />
    </div>
    <div style="margin-top: 30px">
        <button type="submit">Submit</button>
    </div>
</form:form>
</body>
</html>

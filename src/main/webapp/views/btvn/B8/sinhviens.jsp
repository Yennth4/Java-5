<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <title>Sinh Vien B8</title>
</head>
<body>
<table border="1">
    <tr>
        <td>ID</td>
        <td>MSSV</td>
        <td>Tên</td>
        <td>Dia chi</td>
        <td>Ma lop</td>
        <td>Tên lop</td>
    </tr>
    <c:forEach items="${listSV}" varStatus="i" var="lh">
        <tr>
            <td>${lh.id}</td>
            <td>${lh.mssv}</td>
            <td>${lh.name}</td>
            <td>${lh.diaChi}</td>
            <td>${lh.lopHoc.id}</td>
            <td>${lh.lopHoc.name}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
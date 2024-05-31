<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Category</title>
</head>
<body>

<table border="1">
    <p><h3>DANH SACH LOAI SAN PHAM</h3></p>
    <thead>
        <th>ID</th>
        <th>Code</th>
        <th>Name</th>
        <th>Action</th>
    </thead>
    <tbody>
        <c:forEach items="${listCategory}" var="ca">
            <tr>
                <td>${ca.id}</td>
                <td>${ca.code}</td>
                <td>${ca.name}</td>
                <td>
                    <button>Edit</button>
                    <button>Remove</button>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>
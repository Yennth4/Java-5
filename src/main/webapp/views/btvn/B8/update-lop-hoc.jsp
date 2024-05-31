<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<h1>Update LopHoc</h1>
<form action="/lop-hoc/update" method="post">
    <input type="hidden" name="id" value="${lopHoc.id}">
    Tên Lớp: <input type="text" name="name" value="${lopHoc.name}" required><br>
    <button type="submit">Update</button>
</form>
<br>
<a href="/lop-hoc/hien-thi">
    <button>Cancel</button> </a>
</body>
</html>

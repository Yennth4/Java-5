<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>Document</title>
</head>
<body>

<form action="/giang-vien/add" method="post">

    Mã:<input type="text"name="ma"><br>
    Tên:<input type="text"name="ten"><br>
    Tuổi:<input type="text"name="tuoi"><br>
    Giới tính:

            <input type="radio" name="gioiTinh" value="true"checked  />Nam
            <input type="radio" name="gioiTinh" value="false" />Nữ<br>
    Địa chỉ:<input type="text"name="diaChi"><br>

    <button type="submit">Add</button>
</form>


</body>
</html>
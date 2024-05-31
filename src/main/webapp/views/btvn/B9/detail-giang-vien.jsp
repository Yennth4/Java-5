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


<form action="/giang-vien/update" method="post">
    ID:<input type="text" name="id" value="${gv1.id}" disabled><br>
    Mã:<input type="text" name="ma" value="${gv1.ma}"disabled><br>
    Tên:<input type="text" name="ten" value="${gv1.ten}"disabled><br>
    Tuổi:<input type="text" name="tuoi" value="${gv1.tuoi}"disabled><br>
    Giới tính:
    <input type="radio" name="gioiTinh" disabled value="true"${gv1.gioiTinh ? 'checked' : ''}/>Nam
    <input type="radio" name="gioiTinh" value="false" disabled ${!gv1.gioiTinh ? 'checked' : ''}/>Nữ <br>
    Địa chỉ:<input type="text" name="diaChi"disabled value="${gv1.diaChi}"><br>

</form>
<a href="/giang-vien/hien-thi">
    <button>quay lại</button></a>


</body>
</html>
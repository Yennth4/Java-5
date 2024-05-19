<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Giang Vien B5</title>
</head>
<body>

    <form action="/giang-vien/B5/update" method="post">
        <h3>Chinh sua thong tin giang vien</h3>
        <p>Ma GV: <input name="maGV" value="${gv1.maGV}" readonly></p>
        <p>Ho ten: <input name="ten" value="${gv1.ten}"></p>
        <p>Tuoi: <input name="tuoi" value="${gv1.tuoi}"></p>
        <p>Que quan: <input name="queQuan" value="${gv1.queQuan}"></p>
        <p>
            <button type="submit" onclick="return confirm('Ban co muon sua ID ${gv1.maGV} khong ?') ? alert('Sua thanh cong ID ${gv1.maGV}') : false;">Update</button>
            <a href="/giang-vien/B5/hien-thi"><button type="button">Back</button></a>
        </p>
    </form>

</body>
</html>
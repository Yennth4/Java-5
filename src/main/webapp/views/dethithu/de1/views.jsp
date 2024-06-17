<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <title>De 3 - Dich vu</title>
</head>
<body>
    <p><h3>QUAN LY DICH VU</h3></p>
    <form action="/dich-vu/hien-thi-tat-ca" method="get">
        <p>Ten dich vu: <input name="keyword">
            <button>Search</button>
        </p>
    </form>
    <%--@elvariable id="dichVu" type=""--%>
    <form:form modelAttribute="dichVu" action="/dich-vu/add" method="post">
        <p>Id:
            <input name="id" value="${dichVu.id}" readonly>
        </p>
        <p>Ten: <form:input path="ten" value="${dichVu.ten}" />
            <form:errors path="ten" cssStyle="color: red"/>
        </p>
        <p>Don vi tien: <form:input path="donViTien" value="${dichVu.donViTien}" />
            <form:errors path="donViTien" cssStyle="color: red"/>
        </p>
        <p>Don gia: <form:input path="donGia" value="${dichVu.donGia}" />
            <form:errors path="donGia" cssStyle="color: red"/>
        </p>
        <p>Ten loai dich vu:
            <select name="loaiDichVu">
                <c:forEach items="${listLoaiDichVu}" var="ldv">
                    <option value="${ldv.id}" ${ldv.id == dichVu.loaiDichVu.id ? 'selected' : ''}>${ldv.ten}</option>
                </c:forEach>
            </select>
        </p>
        <p>Trang thai:
            <input name="trangThai" type="radio" value="1" ${dichVu.trangThai == "1" ? 'checked' : ''}> Con hoat dong
            <input name="trangThai" type="radio" value="0" ${dichVu.trangThai == "0" ? 'checked' : ''}> Khong hoat dong
        </p>
        <p><button type="submit">Add</button></p>
    </form:form>
    <table border="1">
        <thead>
            <th>STT</th>
            <th>Ten</th>
            <th>Don vi tien</th>
            <th>Don gia</th>
            <th>Ten loai dich vu</th>
            <th>Trang thai</th>
            <th>Action</th>
        </thead>
        <tbody>
            <c:forEach items="${listDichVu.content}" var="dv" varStatus="i">
                <tr>
                    <td>${i.index + 1}</td>
                    <td>${dv.ten}</td>
                    <td>${dv.donViTien}</td>
                    <td>${dv.donGia}</td>
                    <td>${dv.loaiDichVu.ten}</td>
                    <td>${dv.trangThai == "1" ? 'Con hoat dong' : 'Khong hoat dong'}</td>
                    <td>
                        <a href="/dich-vu/detail/${dv.id}"><button>Detail</button></a>
                        <a href="/dich-vu/remove/${dv.id}"><button>Remove</button></a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <nav aria-label="Page navigation example">
        <ul class="pagination">
            <c:forEach begin="0" end="${listDichVu.totalPages -1}" varStatus="i">
                <li class="page-item"><a class="page-link" href="/dich-vu/hien-thi-tat-ca?page=${i.index}" >${i.index +1}</a></li>
            </c:forEach>
        </ul>
    </nav>
</body>
</html>
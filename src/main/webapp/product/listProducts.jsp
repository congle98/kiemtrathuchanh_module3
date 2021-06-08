<%--
  Created by IntelliJ IDEA.
  User: CONG
  Date: 6/8/2021
  Time: 2:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

</head>
<body>


<nav class="navbar navbar-dark bg-dark fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand btn btn-outline-info" href="/products?action=create">Thêm sản phẩm mới</a>
        <form action="">
            <input class="form-control " name="searchvalue" type="search" placeholder="bạn muốn tìm gì">
            <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
    </div>
</nav>

<div style="margin-top: 70px">
    <table class="table table-hover">
        <thead class="thead-dark">
        <tr>
            <th scope="col">Mã sản phẩm</th>
            <th scope="col">Tên sản phẩm</th>
            <th scope="col">Giá sản phẩm</th>
            <th scope="col">Số lượng sản phẩm</th>
            <th scope="col">Màu sắc sản phẩm</th>
            <th scope="col">Thông tin sản phẩm</th>
            <th scope="col">Loại sản phẩm</th>
            <th colspan="2" scope="col">Thao tác</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${productList}" var="p">
            <tr>
                <td scope="row">${p.id}</td>
                <td>${p.name}</td>
                <td>${p.price}</td>
                <td>${p.amount}</td>
                <td>${p.color}</td>
                <td>${p.description}</td>
                <td>${p.category.name}</td>
                <td>
                    <a class="btn btn-outline-warning" href="/products?action=edit&id=${p.id}">Sửa</a>
                    <a class="btn btn-outline-danger "  href="/products?action=delete&id=${p.id}">Xoá</a>
<%--                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">--%>
<%--                        xoá--%>
<%--                    </button>--%>
<%--                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">--%>
<%--                        <div class="modal-dialog">--%>
<%--                            <div class="modal-content">--%>
<%--                                <div class="modal-header">--%>
<%--                                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>--%>
<%--                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>--%>
<%--                                </div>--%>
<%--                                <div class="modal-body">--%>
<%--                                    ...--%>
<%--                                </div>--%>
<%--                                <div class="modal-footer">--%>
<%--                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>--%>
<%--                                    <a class="btn btn-outline-danger "  href="/products?action=delete&id=${p.id}">Xoá</a>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>


    <!-- Modal -->

</div>


</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</html>
<%--
  Created by IntelliJ IDEA.
  User: Vladislaw
  Date: 07.12.2018
  Time: 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Orders</title>
    <meta charset="UTF-8">
    <title>Travelery</title>
    <link rel="stylesheet" href="<c:url value="../../css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="../../css/mdb.min.css"/>">
    <link rel="stylesheet" href="<c:url value="../../css/main.css"/>">
    <link rel="stylesheet" href="<c:url value="../../css/blogPage.css"/>">
</head>
<body>
<main>
    <div class="container ml-6 mt-5 mr-5">
        <div class="row mt-5 ml-5 fixed-top">
            <div class="col-lg-2">
                <a class="btn btn-primary btn-md mb-5" href="/home">Home</a>
            </div>
        </div>
        <div class="row">
            <c:forEach items="${orders}" var="order">
                <div class="col-lg-5">
                    <div class="card mb-4 mx-5">
                        <div class="view overlay">
                            <img class="card-img-top" src="" alt="Card image cap">
                        </div>
                        <div class="card-body">
                            <h4 class="card-title">${order.product.title}</h4>
                            <p class="card-text">${order.country_to} </p>

                            <div class="row">
                                <div class="col-lg-2 offset-1">
                                    <form action="/delete" method="post">
                                        <input type="submit" class="btn btn-md" value="Delete">
                                        <input type="hidden" name="order_id" value=${order.id}>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</main>
<script src="<c:url value="../../scripts/bootstrap.min.js"/>"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="<c:url value="../../scripts/blogpage.js"/>"></script>
</body>
</html>

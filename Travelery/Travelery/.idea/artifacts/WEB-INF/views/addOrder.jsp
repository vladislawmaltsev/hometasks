<%--
  Created by IntelliJ IDEA.
  User: Vladislaw
  Date: 05.12.2018
  Time: 13:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="inputTag" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add order</title>
    <link rel="stylesheet" href="<c:url value="../../css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="../../css/mdb.min.css"/>">
    <link rel="stylesheet" href="<c:url value="../../css/main.css"/>">
    <link rel="stylesheet" href="<c:url value="../../css/blogPage.css"/>">
</head>
<body>
<%--<c:set var="products" value="${products}"/>--%>
    <div>
        <form id="form" method="post">
            <div class="form-group row">
                <label class="col-sm-2 col-form-label-lg">Country to</label>
                <input  type="text" name="country_to" required>
            </div>

            <div class="form-group row">
                <label>Country from</label>
                <input  type="text" name="country_from" required>
            </div>

            <inputTag:inputSelectTitle textLabel="Choose product:" idSelect="productField" nameSelect="product"
                                  itemsSelect="${products}"/>



            <input type="submit" value="ADD" id="btnSubmit" style="background-color: #f8f8f8; color: #4A9CEC; border-color: #f8f8f8">
        </form>
    </div>

</body>
<script src="<c:url value="../../scripts/bootstrap.min.js"/>"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="<c:url value="../../scripts/blogpage.js"/>"></script>
</html>
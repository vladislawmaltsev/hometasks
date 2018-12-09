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
    <link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">

    <link rel="stylesheet" href="<c:url value="/css/main.css"/>">
    <%--<link rel="stylesheet" href="<c:url value="/css/blogPage.css"/>">--%>
    <link rel="stylesheet" href="<c:url value="/css/mdb.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/loginPage.css"/>">
</head>
<body>
<%--<c:set var="products" value="${products}"/>--%>
<main>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-xs-12 col-md-8 col-md-offset-2">
          <form class="text-center border border-light p-5" id="form" method="post">
            <p class="h4 mb-4">Order</p>

            <input type="text" id="defaultContactFormName" class="form-control mb-4" placeholder="Country to" name="country_to" required>


            <input type="text" id="defaultContactFormName" class="form-control mb-4" placeholder="Country from" name="country_from" required>


            <inputTag:inputSelectTitle textLabel="Choose product:" idSelect="productField" nameSelect="product"
                                    itemsSelect="${products}"/>


            <input class="btn btn-info btn-block" type="submit" value="ADD" id="btnSubmit">
            <%--<button class="btn btn-info btn-block" type="submit" value="ADD" id="">Add</button>--%>
        </form>
              <%--<form id="form" method="post">--%>
                  <%--<div class="form-group row">--%>
                      <%--<label class="col-sm-2 col-form-label-lg">Country to</label>--%>
                      <%--<input  type="text" name="country_to" required>--%>
                  <%--</div>--%>

                  <%--<div class="form-group row">--%>
                      <%--<label>Country from</label>--%>
                      <%--<input  type="text" name="country_from" required>--%>
                  <%--</div>--%>

                  <%--<inputTag:inputSelectTitle textLabel="Choose product:" idSelect="productField" nameSelect="product"--%>
                             <%--itemsSelect="${products}"/>--%>



                  <%--<input type="submit" value="ADD"  style="background-color: #f8f8f8; color: #4A9CEC; border-color: #f8f8f8">--%>
              <%--</form>--%>
        </div>
    </div>
</div>
</main>

</body>
<script src="<c:url value="/scripts/bootstrap.min.js"/>"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="<c:url value="/scripts/blogpage.js"/>"></script>
</html>
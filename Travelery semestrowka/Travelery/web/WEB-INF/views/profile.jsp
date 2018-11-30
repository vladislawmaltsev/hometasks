<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Profile</title>
    <link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/oxygen_font.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/main.css"/>">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
          integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <script src="<c:url value = "/scripts/jquery.js"/>"></script>
    <script src="<c:url value="/scripts/bootstrap.min.js"/>"></script>
</head>
<body>

    <section></section>
        <%--<div id="navbar">--%>
            <%--<jsp:include page="../includes/navbar.jsp"/>--%>
        <%--</div>--%>

        <div class="profile" style="background:whitesmoke no-repeat center center; background-size: cover">
            <img src="/img/cot.jpg" alt="">
        </div>

        <%--<div id="footer">--%>
            <%--<jsp:include page="../includes/footer.jsp"/>--%>
        <%--</div>--%>
    </section>
</body>

</html>

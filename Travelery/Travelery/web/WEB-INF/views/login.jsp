<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="inputTag" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    <link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/oxygen_font.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/registration_login_main.css"/>">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
          integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <script src="<c:url value = "/scripts/jquery.js"/>"></script>
    <script src="<c:url value="/scripts/bootstrap.min.js"/>"></script>
    <script src="<c:url value="/scripts/login.js"/>"></script>
</head>
<body style="background-color: whitesmoke">
<%--<div id="navbar">--%>
    <%--<jsp:include page="../includes/navbar.jsp"/>--%>
<%--</div>--%>
<main class="regForm" style="background:whitesmoke no-repeat center center; background-size: cover">
    <div class="main-w3layouts wrapper">
        <h1 style="color: #4A9CEC">Login:</h1>
        <div class="main-agileinfo">
            <div class="agileits-top"  style="background-color: #4A9CEC; color: whitesmoke">
                <form id="form" method="post">
                    <inputTag:inputTextField textLabel="Enter your email:" idField="emailFild" typeField="text"
                                             nameField="email" classField="text" placeholderField="Enter your email"/>
                    <inputTag:inputTextField textLabel="Enter your password:" idField="passField" typeField="password"
                                             nameField="password" classField="text"
                                             placeholderField="Enter your password"/>
                    <inputTag:inputCB nameField="rememberme" idCB="remembermeField" valueField="Remember me?"/>
                    <input type="submit" value="SIGNIN" id="btnSubmit" style="background-color: #f8f8f8; color: #4A9CEC; border-color: #f8f8f8">
                </form>
                <p>Don't have an Account? <a href="<c:url value="/registration"/>"> Register Now!</a></p>
            </div>
        </div>
    </div>
</main>
<%--<div id="footer">--%>
    <%--<jsp:include page="../includes/footer.jsp"/>--%>
<%--</div>--%>
</body>
</html>

<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib prefix="inputTag" tagdir="/WEB-INF/tags" %>--%>

<%--<html>--%>
<%--<head>--%>
    <%--<meta name="viewport" content="width=device-width, initial-scale=1">--%>
    <%--<title>Registration</title>--%>
    <%--<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">--%>
    <%--&lt;%&ndash;<link rel="stylesheet" href="<c:url value="/css/style.css"/>">&ndash;%&gt;--%>

    <%--<link rel="stylesheet" href="<c:url value="/fonts/material-icon/css/material-design-iconic-font.min.css"/>">--%>
    <%--<link rel="stylesheet" href="<c:url value="/css/registration_login_main.css"/>">--%>
    <%--<link rel="stylesheet " href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"--%>
          <%--integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">--%>
    <%--<script src="<c:url value = "/scripts/jquery.js"/>"></script>--%>
    <%--<script src="<c:url value="/scripts/bootstrap.min.js"/>"></script>--%>
    <%--<script src="<c:url value="/scripts/registration.js"/>"></script>--%>
<%--</head>--%>
<%--<body>--%>
<%--<c:set var="genders" value="${['Male','Female']}"/>--%>
<%--<c:set var="genders" value="${fn:replace(genders,']','')}"/>--%>
<%--<c:set var="genders" value="${fn:replace(genders,'[','')}"/>--%>
<%--&lt;%&ndash;<div id="navbar">&ndash;%&gt;--%>
    <%--&lt;%&ndash;<jsp:include page="../includes/navbar.jsp"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--<main class="regForm" style="background: url('<c:url--%>
        <%--value="/img/shooting-star-Michigan-jwhitephoto-2.jpg"/>') no-repeat center center; background-size: cover">--%>
    <%--<div class="main-w3layouts wrapper">--%>
        <%--<h1>Registration:</h1>--%>
        <%--<div class="main-agileinfo">--%>
            <%--<div class="agileits-top">--%>
                <%--<form id="form" method="post">--%>
                    <%--<inputTag:inputTextField textLabel="Enter email:" idField="emailField" typeField="text"--%>
                                             <%--nameField="email" placeholderField="Enter your email" classField="text"/>--%>
                    <%--<inputTag:inputTextField textLabel="Enter username:" idField="usernameField" typeField="text"--%>
                                             <%--nameField="username" placeholderField="Enter your username"--%>
                                             <%--classField="text"/>--%>
                    <%--<inputTag:inputTextField textLabel="Enter password:" idField="passField" typeField="password"--%>
                                             <%--nameField="password" placeholderField="Enter your password"--%>
                                             <%--classField="text"/>--%>
                    <%--<inputTag:inputTextField textLabel="Confirm password:" idField="passConfirmField"--%>
                                             <%--typeField="password" nameField="passwordVerify"--%>
                                             <%--placeholderField="Confirm your password" classField="text"/>--%>
                    <%--<inputTag:inputSelect textLabel="Choose gender:" idSelect="genderField" nameSelect="gender"--%>
                                          <%--itemsSelect="${genders}"/>--%>
                    <%--<inputTag:inputTextField textLabel="Choose birthdate:" idField="bDayField" typeField="date"--%>
                                             <%--nameField="bDay" classField="custom-select date"/>--%>
                    <%--<inputTag:inputCB idCB="licenceCBField" nameField="licenceCB"--%>
                                      <%--valueField="I Agree To The Terms & Conditions"/>--%>
                    <%--<input type="submit" value="SIGNUP" id="btnSubmit">--%>
                <%--</form>--%>
                <%--<p>Already have an Account? <a href="<c:url value="/login"/>"> Login Now!</a></p>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</main>--%>
<%--&lt;%&ndash;<div id="footer">&ndash;%&gt;--%>
    <%--&lt;%&ndash;<jsp:include page="../includes/footer.jsp"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>

<%--&lt;%&ndash;<div class="main">&ndash;%&gt;--%>
    <%--&lt;%&ndash;<section class="signup">&ndash;%&gt;--%>
        <%--&lt;%&ndash;<div class="container">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<div class="signup-content">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="signup-form">&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<h2 class="form-title">Sign up</h2>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<form method="POST" class="register-form" id="register-form">&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<inputTag:inputTextField idField="email" typeField="text"&ndash;%&gt;--%>
                                                 <%--&lt;%&ndash;nameField="email" placeholderField="Your Email"/>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<inputTag:inputTextField idField="name" typeField="text"&ndash;%&gt;--%>
                                                 <%--&lt;%&ndash;nameField="name" placeholderField="Your username"&ndash;%&gt;--%>
                                                 <%--&lt;%&ndash;/>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<inputTag:inputTextField idField="pass" typeField="password"&ndash;%&gt;--%>
                                                 <%--&lt;%&ndash;nameField="pass" placeholderField="Your password"&ndash;%&gt;--%>
                                                <%--&lt;%&ndash;/>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<inputTag:inputTextField idField="re_pass"&ndash;%&gt;--%>
                                                 <%--&lt;%&ndash;typeField="password" nameField="re_pass"&ndash;%&gt;--%>
                                                 <%--&lt;%&ndash;placeholderField="Confirm your password" />&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<inputTag:inputSelect textLabel="Choose gender:" idSelect="genderField" nameSelect="gender"&ndash;%&gt;--%>
                                              <%--&lt;%&ndash;itemsSelect="${genders}"/>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<inputTag:inputTextField idField="bDayField" typeField="date"&ndash;%&gt;--%>
                                                 <%--&lt;%&ndash;nameField="bDay"/>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<inputTag:inputCB idCB="licenceCBField" nameField="licenceCB"&ndash;%&gt;--%>
                                          <%--&lt;%&ndash;valueField="I Agree To The Terms & Conditions"/>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<div class="form-group form-button">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;&lt;%&ndash;<input type="submit" name="signup" id="signup" class="form-submit" value="Register"/>&ndash;%&gt;&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<input type="submit" value="SIGNUP" id="butnSubmit">&ndash;%&gt;--%>
                        <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;</form>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="signup-image">&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<figure><img src="images/signup-image.jpg" alt="sing up image"></figure>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<a href="#" class="signup-image-link">I am already member</a>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
    <%--&lt;%&ndash;</section>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--</body>--%>
<%--</html>--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="inputTag" tagdir="/WEB-INF/tags" %>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registration</title>
    <link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/oxygen_font.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/registration_login_main.css"/>">
    <%--<link rel="stylesheet" href="<c:url value="/css/style.css"/>">--%>

    <%--<link rel="stylesheet" href="<c:url value="/css/footer.css"/>">--%>

</head>
<body>
<c:set var="genders" value="${['Male','Female']}"/>
<c:set var="genders" value="${fn:replace(genders,']','')}"/>
<c:set var="genders" value="${fn:replace(genders,'[','')}"/>
<%--<div id="navbar">--%>
    <%--<jsp:include page="../includes/navbar.jsp"/>--%>
<%--</div>--%>
<main class="regForm" style="background:whitesmoke no-repeat center center; background-size: cover">
    <div class="main-w3layouts wrapper">
        <h1 style="color: #4A9CEC">Registration:</h1>
        <div class="main-agileinfo">
            <div class="agileits-top" style="background-color: #4A9CEC; color: whitesmoke">
                <form id="form" method="post">
                    <inputTag:inputTextField textLabel="Enter email:" idField="emailField" typeField="text"
                                             nameField="email" placeholderField="Enter your email" classField="text"/>
                    <inputTag:inputTextField textLabel="Enter username:" idField="usernameField" typeField="text"
                                             nameField="username" placeholderField="Enter your username" classField="text"/>
                    <inputTag:inputTextField textLabel="Enter password:" idField="passField" typeField="password"
                                             nameField="password" placeholderField="Enter your password"
                                             classField="text"/>
                    <inputTag:inputTextField textLabel="Confirm password:" idField="passConfirmField"
                                             typeField="password" nameField="passwordVerify"
                                             placeholderField="Confirm your password" classField="text"/>
                    <inputTag:inputSelect textLabel="Choose gender:" idSelect="genderField" nameSelect="gender"
                                          itemsSelect="${genders}"/>
                    <inputTag:inputTextField textLabel="Choose birthdate:" idField="bDayField" typeField="date"
                                             nameField="bDay" classField="custom-select date"/>
                    <inputTag:inputCB idCB="licenceCBField" nameField="licenceCB" valueField="I Agree To The Terms & Conditions"/>
                    <input type="submit" value="SIGNUP" id="btnSubmit" style="background-color: #f8f8f8; color: #4A9CEC; border-color: #f8f8f8">
                </form>
                <p>Already have an Account? <a href="<c:url value="/login"/>"> Login Now!</a></p>
            </div>
        </div>
    </div>
</main>
<%--<div id="footer">--%>
    <%--<jsp:include page="../includes/footer.jsp"/>--%>
<%--</div>--%>

<script src="<c:url value = "/scripts/jquery.js"/>"></script>
<script src="<c:url value="/scripts/bootstrap.min.js"/>"></script>
<script src="<c:url value="/scripts/registration.js"/>"></script>
</body>
</html>


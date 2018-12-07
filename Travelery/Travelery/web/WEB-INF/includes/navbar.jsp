<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<nav class="navbar navbar-expand-md navbar-dark">--%>
    <%--<a class="navbar-brand" href="<c:url value="/home"/>">Travelery</a>--%>
    <%--<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"--%>
            <%--aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">--%>
        <%--<span class="navbar-toggler-icon"></span>--%>
    <%--</button>--%>
    <%--<div class="collapse navbar-collapse" id="navbarNav">--%>
        <%--<ul class="navbar-nav mr-auto">--%>
            <%--<li class="nav-item">--%>
                <%--<a class="nav-link" href="<c:url value="/home"/>">Home</a>--%>
            <%--</li>--%>
        <%--</ul>--%>
        <%--<ul class="navbar-nav">--%>
            <%--<c:choose>--%>
                <%--<c:when test='${sessionScope.username == null}'>--%>
                    <%--<li class="nav-item">--%>
                        <%--<a class="btn btn-block btn-md btn-primary btn-custom border-white" id="btnSignIn"--%>
                           <%--href="<c:url value="/login"/>">Login</a>--%>
                    <%--</li>--%>
                <%--</c:when>--%>
                <%--<c:otherwise>--%>
                    <%--<li class="nav-item">--%>
                        <%--<a class="btn btn-block btn-md btn-primary btn-custom border-white" id="btnProfile"--%>
                           <%--href="<c:url value="/profile"/>">--%>
                            <%--<i class="fas fa-user"></i>--%>
                            <%--<span>Profile</span>--%>
                        <%--</a>--%>
                    <%--</li>--%>
                <%--</c:otherwise>--%>
            <%--</c:choose>--%>
            <%--<c:choose>--%>
                <%--<c:when test='${sessionScope.username == null}'>--%>
                    <%--<li class="nav-item">--%>
                        <%--<a class="btn btn-block btn-md btn-primary btn-custom border-white" id="btnSignUp"--%>
                           <%--href="<c:url value="/registration"/>">Register</a>--%>
                    <%--</li>--%>
                <%--</c:when>--%>
                <%--<c:otherwise>--%>
                    <%--<li class="nav-item">--%>
                        <%--<a class="btn btn-block btn-md btn-primary btn-custom border-white" id="btnSignOut"--%>
                           <%--href="<c:url value="/logout"/>">--%>
                            <%--<i class="fas fa-sign-out-alt"></i>--%>
                            <%--<span>Log out</span>--%>
                        <%--</a>--%>
                    <%--</li>--%>
                <%--</c:otherwise>--%>
            <%--</c:choose>--%>
        <%--</ul>--%>
    <%--</div>--%>
<%--</nav>--%>
<%--<div class="modal fade" id="About" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">--%>
    <%--<div class="modal-dialog" role="document">--%>
        <%--<div class="modal-content">--%>
            <%--<div class="modal-header">--%>
                <%--<h5 class="modal-title" id="exampleModalLabel">About</h5>--%>
                <%--<button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
                    <%--<span aria-hidden="true">&times;</span>--%>
                <%--</button>--%>
            <%--</div>--%>
            <%--<div class="modal-body">--%>

                <%--<h3>Welcome to Desvelado</h3>--%>
                <%--<p>--%>
                    <%--We all know the feeling of insomnia. Your body wants to sleep but your mind is still awake and--%>
                    <%--active. So how can we steady up our mind.--%>
                <%--<p/>--%>
                <%--<p>--%>
                    <%--Desvelado is a parody video platform where you can find the most silent and sleepy content selection--%>
                    <%--to relax your brain and easily fall asleep.--%>
                <%--<p/>--%>
                <%--<p>--%>
                    <%--Taking siesta to the next level.--%>
                <%--</p>--%>

            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>


<nav class="navbar navbar-expand-lg fixed-top scrolling-navbar indigo">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a href="<c:url value="/home"/>" class="navbar-brand"><img src="/img/logo2.png" alt=""></a>
        </div>
        <div class="collapse navbar-collapse" id="main-navbar">
            <%--<ul class="onepage-nev navbar-nav mr-auto w-100 justify-content-end clearfix">--%>
                <%--<li class="nav-item active">--%>
                    <%--<a class="btn btn-light nav-link" href="#hero-area">--%>
                        <%--Home--%>
                    <%--</a>--%>
                <%--</li>--%>
                <%--<li class="nav-item">--%>
                    <%--<a class="nav-link" href="#about">--%>
                        <%--&lt;%&ndash;About&ndash;%&gt;--%>
                    <%--</a>--%>
                <%--</li>--%>
                <%--<li class="nav-item">--%>
                    <%--<a class="nav-link" href="#services">--%>
                        <%--&lt;%&ndash;Services&ndash;%&gt;--%>
                    <%--</a>--%>
                <%--</li>--%>
                <%--<li class="nav-item">--%>
                    <%--<a class="nav-link btn btn-common" href="<c:url value="/login"/>">--%>
                        <%--Login--%>
                    <%--</a>--%>
                <%--</li>--%>
                <%--<li class="nav-item">--%>
                    <%--<a class="nav-link btn btn-light" href="<c:url value="/registration"/>">--%>
                        <%--Sign up--%>
                    <%--</a>--%>
                <%--</li>--%>
            <%--</ul>--%>
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="#about">
                            <%--About--%>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#services">
                            <%--Services--%>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#about">
                            <%--About--%>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#services">
                            <%--Services--%>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#about">
                            <%--About--%>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#services">
                            <%--Services--%>
                        </a>
                    </li>
                    <c:choose>
                        <c:when test='${sessionScope.username == null}'>
                            <li class="nav-item">
                                <a class="nav-link btn btn-common" id="btnSignIn"
                                   href="<c:url value="/login"/>">Login</a>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li class="nav-item">
                                <a class="nav-link btn btn-light" id="btnProfile"
                                   href="<c:url value="/profile"/>">
                                    <i class="fas fa-user"></i>
                                    <span>Profile</span>
                                </a>
                            </li>
                        </c:otherwise>
                    </c:choose>
                    <c:choose>
                        <c:when test='${sessionScope.username == null}'>
                            <li class="nav-item">
                                <a class="nav-link btn btn-light" id="btnSignUp"
                                   href="<c:url value="/registration"/>">Register</a>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li class="nav-item">
                                <a class="nav-link btn btn-light" id="btnSignOut"
                                   href="<c:url value="/logout"/>">
                                    <i class="fas fa-sign-out-alt"></i>
                                    <span>Log out</span>
                                </a>
                            </li>
                        </c:otherwise>
                    </c:choose>
                </ul>
        </div>
    </div>

    <!-- Mobile Menu Start -->
    <ul class="onepage-nev mobile-menu">
        <c:choose>
            <c:when test='${sessionScope.username == null}'>
                <li class="nav-item">
                    <a class="nav-link btn btn-common"
                       href="<c:url value="/login"/>">Login</a>
                </li>
            </c:when>
            <c:otherwise>
                <li class="nav-item">
                    <a class="nav-link btn btn-light"
                       href="<c:url value="/profile"/>">
                        <i class="fas fa-user"></i>
                        <span>Profile</span>
                    </a>
                </li>
            </c:otherwise>
        </c:choose>
        <c:choose>
            <c:when test='${sessionScope.username == null}'>
                <li class="nav-item">
                    <a class="nav-link btn btn-light"
                       href="<c:url value="/registration"/>">Register</a>
                </li>
            </c:when>
            <c:otherwise>
                <li class="nav-item">
                    <a class="nav-link btn btn-light"
                       href="<c:url value="/logout"/>">
                        <i class="fas fa-sign-out-alt"></i>
                        <span>Log out</span>
                    </a>
                </li>
            </c:otherwise>
        </c:choose>
    </ul>
    <!-- Mobile Menu End -->
</nav>
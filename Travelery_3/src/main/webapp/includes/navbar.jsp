<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<nav class="navbar navbar-expand-lg fixed-top scrolling-navbar indigo">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a href="<c:url value="/home"/>" class="navbar-brand"><img src="/img/logo2.png" alt=""></a>
        </div>
        <div class="collapse navbar-collapse" id="main-navbar">
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
                            <li class="nav-item">
                                <a class="nav-link btn btn-light"
                                   href="<c:url value="/show"/>">
                                    <i class="fas fa-search"></i>
                                    <span>Show orders</span>
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
        <li class="nav-item">
            <a class="nav-link btn btn-light"
               href="<c:url value="/show"/>">
                <i class="fas fa-search"></i>
                <span>Show orders</span>
            </a>
        </li>
    </ul>
    <!-- Mobile Menu End -->
</nav>
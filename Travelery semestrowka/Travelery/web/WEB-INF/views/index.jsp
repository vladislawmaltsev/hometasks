<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Travelery</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1 shrink-to-fit=no">
        <link rel="stylesheet" type="text/css" href="<c:url value="/fonts/simple-line-icons.css"/>">
        <link rel="stylesheet" href="<c:url value="/fonts/font-awesome.min.css"/>">
        <link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
        <%--<link rel="stylesheet" href="<c:url value="/css/oxygen_font.css"/>">--%>
        <link rel="stylesheet" href="<c:url value="/css/navbar.css"/>">
        <%--<link rel="stylesheet" href="<c:url value="/css/home_main.css"/>">--%>
        <link rel="stylesheet" href="<c:url value="/css/about.css"/>">
        <link rel="stylesheet" href="<c:url value="/css/animate.css"/>">
        <link rel="stylesheet" href="<c:url value="/css/main.css"/>">
        <link rel="stylesheet" href="<c:url value="/css/nivo-lightbox.css"/>">
        <link rel="stylesheet" href="<c:url value="/css/responsive.css"/>">
        <link rel="stylesheet" href="<c:url value="/css/slicknav.css"/>">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
              integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

    </head>
    <body>
        <%--<div id="pageContainer">--%>
            <header id="header-wrap">
                <div id="navbar">
                    <jsp:include page="../includes/navbar.jsp"/>
                </div>


            <div id="hero-area" class="hero-area-bg">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 text-center">
                            <div class="contents">
                                <h5 class="script-font wow fadeInUp" data-wow-delay="0.2s">Нужна доставка из любой точки мира ?</h5>
                                <h2 class="head-title wow fadeInUp" data-wow-delay="0.4s">Travelery</h2>
                                <p class="script-font wow fadeInUp" data-wow-delay="0.6s">Путешественники доставят нужный товар или посылку</p>
                                <%--<div class="header-button wow fadeInUp" data-wow-delay="1s">--%>
                                    <%--<a href="<c:url value="/login"/>" class="btn btn-common">Login</a>--%>
                                    <%--<a href="<c:url value="/registration"/>" class="btn btn-common">Sing up</a>--%>
                                <%--</div>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            </header>

            <section id="services" class="services section-padding">
                <h2 class="section-title wow flipInX" data-wow-delay="0.4s">Наши преимущества</h2>
                <div class="container">
                    <div class="row">

                        <div class="col-md-6 col-lg-3 col-xs-12">
                            <div class="services-item wow fadeInDown" data-wow-delay="0.3s">
                                <div class="icon">
                                    <i class="icon-plane"></i>
                                </div>
                                <div class="services-content">
                                    <h3><a>Заказывайте из любой точки мира</a></h3>
                                    <p>Не все интернет-магазины доставляют в Россию, особенно в последнее время.</p>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-3 col-xs-12">
                            <div class="services-item wow fadeInDown" data-wow-delay="0.6s">
                                <div class="icon">
                                    <i class="icon-ban"></i>
                                </div>
                                <div class="services-content">
                                    <h3><a>Покупайте то, что не продается онлайн</a></h3>
                                    <p>Путешественники зайдут для вас на рынок, в аптеку или сувенирную лавку</p>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-3 col-xs-12">
                            <div class="services-item wow fadeInDown" data-wow-delay="0.9s">
                                <div class="icon">
                                    <i class="icon-calculator"></i>
                                </div>
                                <div class="services-content">
                                    <h3><a>Назначайте сами цену доставки</a></h3>
                                    <p>Договаривайтесь с путешественником без посредников</p>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-3 col-xs-12">
                            <div class="services-item wow fadeInDown" data-wow-delay="1.2s">
                                <div class="icon">
                                    <i class="icon-menu"></i>
                                </div>
                                <div class="services-content">
                                    <h3><a>Приобретайте продукты, по которым соскучились</a></h3>
                                    <p>Только физическим лицам можно ввозить санкционные продукты</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <div id="resume" class="section-padding">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="education wow fadeInRight" data-wow-delay="0.3s">
                                <ul class="timeline">
                                    <li>
                                        <i class="icon-emotsmile"></i>
                                        <h2 class="timelin-title">Покупателям</h2>
                                    </li>
                                    <li>
                                        <div class="content-text">
                                            <h3 class="line-title">Расскажите, что вы ищите</h3>
                                            <span></span>
                                            <p class="line-text">
                                                С нами вы можете заказать любую вещь со всего мира. Чтобы начать, создайте заказ и расскажите путешественнику, сколько стоит ваш товар и где его можно купить.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="content-text">
                                            <h3 class="line-title">Получайте предложения путешественников</h3>
                                            <span></span>
                                            <p class="line-text">Как только вы опубликуете заказ, он попадет в общую ленту заказов. Путешественники, направляющиеся в вашу страну, сделают предложения о доставке.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="content-text">
                                            <h3 class="line-title">Встретьтесь с путешественником и получите заказ</h3>
                                            <span></span>
                                            <p class="line-text">Договоритесь с путешественником о месте и времени для встречи, которое устроит вас обоих. Мы переведем оплату путешественнику, как только вы подтвердите получение заказа.</p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="experience wow fadeInRight" data-wow-delay="0.6s">
                                <ul class="timeline">
                                    <li>
                                        <i class="icon-bag"></i>
                                        <h2 class="timelin-title">Путешественникам</h2>
                                    </li>
                                    <li>
                                        <div class="content-text">
                                            <h3 class="line-title">Выберите заказ и сделайте предложение о доставке</h3>
                                            <span></span>
                                            <p class="line-text">Выберите подходящий заказ по вашему маршруту. Сделайте предложение о доставке и укажите вознаграждение — сумму, которую покупатель заплатит вам за доставку.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="content-text">
                                            <h3 class="line-title">Договоритесь о деталях заказа с покупателем</h3>
                                            <span></span>
                                            <p class="line-text">Обсудите детали товара, его цвет и размер с покупателем во встроенном мессенджере. Попросите покупателя прислать ссылки на другие заказы.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="content-text">
                                            <h3 class="line-title">
                                                Купите товар за свои деньги</h3>
                                            <span></span>
                                            <p class="line-text">Так вы будете знать, что везете в своем багаже. Когда покупатель подтвердит получение заказа, мы возместим средства на покупку товара и переведем вознаграждение путешественника</p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>



            <div id="footer">
                <jsp:include page="../includes/footer.jsp"/>
            </div>

        <script src="<c:url value = "/scripts/jquery.js"/>"></script>
        <script src="<c:url value="/scripts/bootstrap.min.js"/>"></script>
        <script src="<c:url value = "/scripts/jquery-min.js"/>"></script>
        <script src="<c:url value = "/scripts/popper.min.js"/>"></script>
        <script src="<c:url value= "/scripts/bootstrap.min.js"/>"></script>
        <script src="<c:url value = "/scripts/jquery.mixitup.js"/>"></script>
        <script src="<c:url value = "/scripts/jquery.counterup.min.js"/>"></script>
        <script src="<c:url value= "/scripts/waypoints.min.js"/>"></script>
        <script src="<c:url value = "/scripts/wow.js"/>"></script>
        <script src="<c:url value = "/scripts/jquery.nav.js"/>"></script>
        <script src="<c:url value= "/scripts/jquery.easing.min.js"/>"></script>
        <script src="<c:url value = "/scripts/nivo-lightbox.js"/>"></script>
        <script src="<c:url value = "/scripts/jquery.slicknav.js"/>"></script>
        <script src="<c:url value = "/scripts/main.js"/>"></script>
    </body>
</html>




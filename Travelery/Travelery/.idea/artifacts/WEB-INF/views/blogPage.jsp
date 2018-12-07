<%--
  Created by IntelliJ IDEA.
  User: Игорь
  Date: 22.11.2018
  Time: 18:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Surfing School</title>
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
            <c:forEach items="${articles}" var="article">
                <div class="col-lg-5">
                    <div class="card mb-4 mx-5">
                        <div class="view overlay">
                            <img class="card-img-top" src="" alt="Card image cap">
                        </div>
                        <div class="card-body">
                            <h4 class="card-title">${article.title}</h4>
                            <p class="card-text">${article.text}</p>
                            <div class="row">
                                <div class="col-lg-2 offset-1">
                                    <form action="/delete" method="post">
                                        <input type="submit" class="btn btn-md" value="Delete">
                                        <input type="hidden" name="article_id" value=${article.id}>
                                    </form>
                                </div>
                                <div class="col-lg-2 offset-3 updateBtnBlock">
                                    <button  type="submit" class="btn btn-md updateModal">
                                        <input type="hidden" name="article_title" value=${article.title}>
                                        <input type="hidden" name="article_text" value=${article.text}>
                                        <input type="hidden" name="article_id" value=${article.id}>Update</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</main>

<!-- Trigger/Open The Modal -->
<div class="container fixed-bottom mr-4">
    <div class="row">
        <div class="col-lg-10"></div>
        <div class="col-lg-2">
            <button type="submit" id="myBtn" class="btn btn-primary btn-md mb-5">Add article</button>
        </div>
    </div>
</div>

<!-- The Modal -->
<div class="container">
    <div class="row">
        <div class="col-lg-8 col-lg-offset-2">
            <div id="myModal" class="modal">
                <!-- Modal content -->
                <div class="modal-content">
                    <span class="close" id="close">&times;</span>
                    <div class="container">
                        <form method="post">
                            <div class="row">
                                <div class="col-lg-4 offset-2 my-auto">
                                    <span class="span">Enter article title</span>
                                </div>
                                <div class="col-lg-4 my-auto">
                                    <div class="md-form">
                                        <input type="text" name="title" id="inputMDEx" class="form-control">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 offset-2 my-auto">
                                    <span class="span">Enter the text of the article</span>
                                </div>
                                <div class="col-lg-4 my-auto">
                                    <div class="md-form">
                                        <textarea type="text" name="text" id="form7" class="md-textarea form-control" rows="6"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-2 offset-5">
                                    <button  type="submit" class="btn btn-primary btn-md add" id="add">Add</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-lg-8 col-lg-offset-2">
            <div id="modalUpdate" class="modal">
                <!-- Modal content -->
                <div class="modal-content">
                    <span class="close" id="close1">&times;</span>
                    <div class="container">
                        <form method="post" action="/update">
                            <div class="row">
                                <div class="col-lg-4 offset-2 my-auto">
                                    <span class="span">Enter article title</span>
                                </div>
                                <div class="col-lg-4 my-auto">
                                    <div class="md-form">
                                        <input type="text" name="title" data-name="article_title" value="" id="modTitle"  class="form-control">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 offset-2 my-auto">
                                    <span class="span">Enter the text of the article</span>
                                </div>
                                <div class="col-lg-4 my-auto">
                                    <div class="md-form">
                                        <textarea type="text" data-name="article_text" name="text" id="modText"  class="md-textarea form-control" rows="6"></textarea>
                                    </div>
                                </div>
                                <input type="hidden" name="id" data-name="article_id" value="2">
                            </div>
                            <div class="row">
                                <div class="col-lg-2 offset-5">
                                    <button type="submit" class="btn btn-primary btn-md add" id="upd">Update</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
<script src="<c:url value="../../scripts/bootstrap.min.js"/>"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="<c:url value="../../scripts/blogpage.js"/>"></script>
</html>

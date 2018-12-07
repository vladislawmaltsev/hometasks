<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Surfing School</title>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="<c:url value="../../css/registrationpage.css"/>">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
    <link rel="stylesheet" href="<c:url value="../../css/booking.css"/>">
</head>
<body>
<div class="container my-auto">
    <div class="row"></div>
    <div class="row">
        <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 col-lg-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading ph">
                    <h3 class="panel-title">Choose your trip</h3>
                </div>
                <div class="panel-body" id="booking">
                    <form role="form" method="post" action="/booking">
                        <div class="column">
                            <div class="col-xs-8 col-sm-8c ol-md-8 col-lg-8 col-sm-offset-2 col-md-offset-2 col-lg-offset-2">
                                    <select class="form-control form-group select" name="school">
                                        <option value="1" selected>Bali</option>
                                        <option value="2">Australia</option>
                                        <option value="3">Vanuatu</option>
                                    </select>
                                <div class="span">
                                    <span>Select school</span>
                                </div>
                            </div>
                            <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 col-sm-offset-2 col-md-offset-2 col-lg-offset-2">
                                <select class="form-control form-group select" name="program">
                                    <option value="1">2 Lessons (149$)</option>
                                    <option value="2">5 Lessons (249$)</option>
                                    <option value="3" selected>15 Lessons (449$)</option>
                                </select>
                                <div class="span">
                                    <span>Select a training program</span>
                                </div>
                            </div>

                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 col-sm-offset-2 col-md-offset-2 col-lg-offset-2">
                                    <div class="form-group">
                                        <input type="text" name="arrival_booking" id="arrival_booking" class="form-control input-sm" required = "required" placeholder="Arrival Date" pattern="^\s*(3[01]|[12][0-9]|0?[1-9])\.(1[012]|0?[1-9])\.((?:19|20)\d{2})\s*$">
                                        <span>Choose arrival date</span>
                                    </div>
                                </div>
                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                    <div class="form-group">
                                        <input type="text" name="departure_booking" id="departure_booking" class="form-control input-sm" required = "required" placeholder="Departure Date" pattern="^\s*(3[01]|[12][0-9]|0?[1-9])\.(1[012]|0?[1-9])\.((?:19|20)\d{2})\s*$">
                                        <span>Choose departure date</span>
                                    </div>
                                </div>

                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 col-xs-offset-3 col-sm-offset-3 col-md-offset-3 col-lg-offset-3">
                            <input type="submit" value="Booking" class="btn btn-info btn-block btn-custom" id="submit_booking" disabled>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>
</div>
</body>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<script src="<c:url value="../../js/booking.js"/>"></script>
</html>
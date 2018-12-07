$(document).ready(function() {
    $(function () {
       $('.logo').click(function (event) {
           event.preventDefault();
           $('body,html').animate({scrollTop : $('#ah').offset().top},500);
       })
    });


    //qa
    $(function () {
        $('.answers-menu__item a').click(function () {
            $('div[data-number =' + $(this).attr("data-number") + "]").toggle(250);
        });
    });


    $('#password_confirmation').keyup(function() {
        var password = $("#password").val();
        var password_confirmation = $("#password_confirmation").val();
        if (password !== password_confirmation) {
            $("#password_confirmation").css('border', '1px solid red');
            $('#password-repeat').html('Passwords do not match');
        } else {
            $("#password_confirmation").css('border', '1px solid lawngreen');
        }
    });

    //booking_date

});



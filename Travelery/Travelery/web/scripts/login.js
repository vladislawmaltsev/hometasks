$(document).ready(function () {
    $("#form").on('submit', function (e) {
        e.preventDefault();
        var email = $('#emailFild').val();
        var password = $('#passField').val();
        var rememberme = $('#remembermeField').is(':checked');
        var dataFields = {
            "email": email,
            "password": password,
            "rememberme": rememberme
        };
        $.ajax({
            type: 'Post',
            url: 'login',
            data: dataFields,
            success: function (result) {
                if (result.fieldError != null) {
                    alert(result.fieldError);
                }
                if (result.url != null) {
                    window.location.href = result.url;
                }
            },
            error: function (result) {
                alert("Something gone wrong with server...");
            }
        })
    });
});
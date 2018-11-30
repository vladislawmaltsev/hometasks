$(document).ready(function () {
    $("#form").on('submit', function (e) {
        e.preventDefault();
        var email = $('#emailField').val();
        var username = $('#usernameField').val();
        var password = $('#passField').val();
        var passwordConfirm = $('#passConfirmField').val();
        var gender = $('#genderField').val();
        var bDay = $('#bDayField').val();
        var dataFields = {
            "email": email,
            "username": username,
            "password": password,
            "gender": gender,
            "bDay": bDay
        };
        if (checkPasswords(password, passwordConfirm)) {
            $.ajax({
                type: 'POST',
                url: 'registration',
                data: dataFields,
                success: function (result) {
                    if (result.fieldError != null) {
                        alert(result.fieldError);
                    }
                    if (result.url != null) {
                        console.log(result.url);
                        window.location.href = result.url;
                    }
                },
                error: function (result) {
                    alert("Something went wrong with server...");
                }
            })
        }
    });

    function checkPasswords(password, passwordConf) {
        if (password === passwordConf) {
            return true;
        } else {
            alert("Passwords do not match!");
            return false;
        }
    }
});
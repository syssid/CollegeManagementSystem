$(document).ready(function () {

});

function RegisterUser() {
    const FirstName = $('#txtFirstName').val();
    const LastName = $('#txtLastName').val();
    const EMail = $('#txtEMail').val();
    const Phone = $('#txtPhone').val();
    const Password = $('#txtPassword').val();
    const ConfirmPassword = $('#txtConfirmPassword').val();
    const Role = $('#ddlRole').val();
    const UserName = $('.dropdown-toggle').text().trim();

    if (FirstName == '') {
        $('#txtAlert').show().text('Please Enter First Name');
        alertTimeout();
        return;
    }
    if (LastName == '') {
        $('#txtAlert').show().text('Please Enter Last Name');
        alertTimeout();
        return;
    }
    if (EMail == '') {
        $('#txtAlert').show().text('Please Enter Email');
        alertTimeout();
        return;
    }
    if (validateEmail(EMail));
    else {
        $('#txtAlert').show().text('Please Enter A Valid Email');
        alertTimeout();
        return;
    }
    if (Phone == '') {
        $('#txtAlert').show().text('Please Enter A Phone Number');
        alertTimeout();
        return;
    }
    if (Phone.length != 10) {
        $('#txtAlert').show().text('Please Enter A 10 Digit Phone Number');
        alertTimeout();
        return;
    }

    if (Password == '') {
        $('#txtAlert').show().text('Please Enter A Strong Password');
        alertTimeout();
        return;
    }
    if (ConfirmPassword == '') {
        $('#txtAlert').show().text('Please Enter Confirm Password');
        alertTimeout();
        return;
    }
    if (Password != ConfirmPassword) {
        $('#txtAlert').show().text('Please Enter Same Password For Both');
        alertTimeout();
        return;
    }
    if (Role == '0') {
        $('#txtAlert').show().text('Please Select A Role For The Created Account');
        alertTimeout();
        return;
    }
    
    const registrationData = {  
        PhoneNumber: Phone,
        EmailID: EMail,
        Password: Password,
        FirstName: FirstName,
        LastName: LastName,
        Role: Role,
        UserName: UserName
    };

    $.ajax({
        type: 'POST',
        url: '/api/UserManagement/RegisterNewUser',
        data: JSON.stringify(registrationData),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {
            debugger;
            if (response == 1) {
                $('#txtAlert').removeClass().addClass('alert alert-success').show().text('Congrasulations!, You Have Been Successfully Registred');
                setTimeout(function () {
                    $('#txtAlert').fadeOut();
                }, 5000);
                location.reload();
                return;
            }
            else if (response == -1) {
                $('#txtAlert').removeClass().addClass('alert alert-danger').show().text('This Email Is Already Registred');
                alertTimeout();
                return;
            }
        },
        error: function () {
            $('#txtAlert').removeClass().addClass('alert alert-danger').show().text('Internal Server Error');
            alertTimeout();
            return;
        }
    });

}

function RestrictInputForNumbers(event) {
    var pressedKey = event.which;
    var pressedKeyInteger = parseInt(pressedKey);

    if (pressedKeyInteger >= 48 && pressedKeyInteger <= 57);
    else {
        $('#txtAlert').show().text('You Can Enter Only Numbers');
        alertTimeout();
        event.preventDefault();
        return;
    }
}

function validateEmail(email) {
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
}

function alertTimeout() {
    setTimeout(function () {
        $('#txtAlert').fadeOut();
    }, 2000);
}
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
        alert('Please Enter First Name');
        return;
    }
    if (LastName == '') {
       alert('Please Enter Last Name');
       return;
    }
    if (EMail == '') {
        alert('Please Enter Email');
        return;
    }
    if (validateEmail(EMail));
    else {
        alert('Please Enter A Valid Email');
        return;
    }
    if (Phone == '') {
        alert('Please Enter A Phone Number');
        return;
    }
    if (Phone.length != 10) {
        alert('Please Enter A 10 Digit Phone Number');
        return;
    }

    if (Password == '') {
        alert('Please Enter A Strong Password');
        return;
    }
    if (ConfirmPassword == '') {
        alert('Please Enter Confirm Password');
        return;
    }
    if (Password != ConfirmPassword) {
        alert('Please Enter Same Password For Both');
        return;
    }
    if (Role == '0') {
        alert('Please Select A Role For The Created Account');
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
                alert('Congrasulations!, You Have Been Successfully Registred');    
                location.reload();
            }
            else if (response == -1) {
                alert('This Email Is Already Registred');
            }
        },
        error: function () {
           alert('Internal Server Error');
        }
    });

}

function RestrictInputForNumbers(event) {
    var pressedKey = event.which;
    var pressedKeyInteger = parseInt(pressedKey);

    if (pressedKeyInteger >= 48 && pressedKeyInteger <= 57);
    else {
        alert('You Can Enter Only Numbers');
        event.preventDefault();
        return;
    }
}

function validateEmail(email) {
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
}

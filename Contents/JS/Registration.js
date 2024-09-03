$(document).ready(function () {
   // console.log('hello');
});

function RegisterUser() {
    const FirstName = $('#txtFirstName').val();
    const LastName = $('#txtLastName').val();
    const EMail = $('#txtEMail').val();
    const Phone = $('#txtPhone').val();
    const Password = $('#txtPassword').val();
    const ConfirmPassword = $('#txtConfirmPassword').val();

    if (FirstName == '') {
        swal("Name Cannot Be Blank!", "Please Enter Your First Name", "warning");
        return;
    }
    if (LastName == '') {
        swal("Name Cannot Be Blank!", "Please Enter Your Last Name", "warning");
        return;
    }
    if (EMail == '') {
        swal("Email Cannot Be Blank!", "Please Enter Your Email", "warning");
        return;
    }
    if (validateEmail(EMail));
    else {
        swal("Invalid Email!", "Please Enter A Valid Email", "warning");
        return;
    }
    if (Phone == '') {
        swal("Phone Cannot Be Blank!", "Please Enter Your Phone Number", "warning");
        return;
    }
    if (Phone.length != 10) {
        swal("Invalid Phone Number", "Please Enter Your 10 Digit Phone Number", "warning");
        return;
    }

    if (Password == '') {
        swal("Password Cannot Be Blank!", "Please Enter A Strong Password", "warning");
        return;
    }
    if (ConfirmPassword == '') {
        swal("Confirm Password Cannot Be Blank!", "Please Enter Confirm Password", "warning");
        return;
    }
    if (Password != ConfirmPassword) {
        swal("Password Mismatch!", "Please Enter Same Password For Both", "warning");
        return;
    }

    const registrationData = {  
        PhoneNumber: Phone,
        EmailID: EMail,
        Password: Password,
        FirstName: FirstName,
        LastName: LastName
    };
    $(document).ajaxSend(function () {
        $("#overlay").show();
        $("#overlay").fadeIn(500);
    });
    $.ajax({
        type: 'POST',
        url: 'WebMethods/WebRegistration.asmx/RegisterNewUser',
        data: JSON.stringify({ registration: registrationData }),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {
            if (response.d == 1) {
                swal("Congrasulations!", "You Have Been Successfully Registred", "success");
                return;
            }
            else if (response.d == -1) {
                swal("Not Able To Register", "Already Registred.. Please Login.", "info");
                return;
            }
        },
        error: function () {
            swal("Internal Server Error!", "Please Contact To The Adminstration", "error");
            $("#overlay").hide();

        }
    }).done(function () {
        setTimeout(function () {
            $("#overlay").fadeOut(500);
            $("#overlay").hide();
        }, 1000);
    });

}

function RestrictInputForNumbers(event) {
    var pressedKey = event.which;
    var pressedKeyInteger = parseInt(pressedKey);

    if (pressedKeyInteger >= 48 && pressedKeyInteger <= 57);
    else {
        swal("Charcters Not Allowed", "You Can Enter Only Numbers", "warning");
        event.preventDefault();
        return;
    }
}

function validateEmail(email) {
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
}
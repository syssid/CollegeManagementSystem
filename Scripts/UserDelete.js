$(document).ready(function () {
    $('#dataTables-example').DataTable({
        responsive: true
    });


    $.ajax({
        type: 'POST',
        url: '/api/UserManagement/DeleteUser',
       // data: JSON.stringify(registrationData),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {
            debugger;
           
        },
        error: function () {
            alert('Error Encountered');
        }
    
    });
});
﻿$(document).ready(function () {
    var table = $('#dataTables-example').DataTable({
        responsive: true
    });
    const registrationData = {
        Status:1
    }

    $.ajax({
        type: 'POST',
        url: '/api/UserManagement/ShowUserForManage',
        data: JSON.stringify(registrationData),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {
            if (response.length > 0) {
                debugger;
                table.clear().destroy();

                // Clear the existing table data
                $("#dataTables-example >tbody").empty();

                // Populate new data into the table body
                $.each(response, function (index) {
                    if (this.Status == 1)
                        this.Status = 'Active';
                    else
                        this.Status = 'Inactive';
                    $("#dataTables-example >tbody").append(
                        '<tr>'
                        + '<td>' + this.MasterID + '</td>'
                        + '<td>' + this.PhoneNumber + '</td>'
                        + '<td>' + this.EmailID + '</td>'
                        + '<td>' + this.FullName + '</td>'
                        + '<td>' + this.Role + '</td>'
                        + '<td>' + this.Status + '</td>'
                        + '<td>' + this.CreatedOn + '</td>'
                        + '<td>' + this.CreatedBy + '</td>'
                        + '<td><button type="button" class="btn btn-danger" onclick="DisableAccount(\'' + this.MasterID + '\');">Disable</button></td>'
                        + '</tr>');
                });

                table = $('#dataTables-example').DataTable({
                    responsive: true
                });
            }
        },
        error: function () {
            alert('Error encountered');
        }
    });

});

function DisableAccount(MasterID) {
    debugger;
    var con = confirm('Are you sure want to Delete ?');
    if (con == false)
        return;
    else {
        const registrationData = {
            MasterID: MasterID,
            Status:0

        };
        $.ajax({
            type: 'POST',
            url: '/api/UserManagement/DisableEnableUser',
            data: JSON.stringify(registrationData),
            contentType: 'application/json; charset=utf-8',
            dataType: 'json',
            success: function (response) {
                if (response == 1) {
                    alert('User Deleted Successfully');
                    location.reload();
                }
                else if (response == -1) {
                    alert('Failed To Deleted User');
                    location.reload();
                    return;
                }                
            },
            error: function () {
                alert('Error encountered');
            }
        });
    }
}
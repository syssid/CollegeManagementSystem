$(document).ready(function () {
    const Role = $('#txtRole').text();
    if (Role == 'Admin') {
        $('#SecUserManage').hide();
    }
});
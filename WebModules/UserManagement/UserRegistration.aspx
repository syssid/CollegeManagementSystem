<%@ Page Title="" Language="C#" MasterPageFile="~/Contents/MasterPage/Layout.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="CollegeManagementSystem.WebModules.UserManagement.UserRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../../Contents/JS/Registration.js?V=<%=DateTime.Now%>"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Create New Login</h1>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title" style="text-align: center">Only Developer Can Create A Super Admin</h3>
                    </div>
                    <div class="panel-body">
                        <fieldset>
                            <div class="form-group">
                                <input class="form-control" placeholder="First Name" id="txtFirstName" type="text" autofocus>
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="Last Name" id="txtLastName" type="text" value="">
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="E-Mail" id="txtEMail" type="email">
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="Phone" id="txtPhone" type="text" maxlength="10" onkeypress="RestrictInputForNumbers(event);">
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="Create Password" id="txtPassword" type="password">
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="Confirm Password" id="txtConfirmPassword" type="password">
                            </div>
                            <div class="form-group">
                                <select class="form-control" id="ddlRole">
                                    <option value="0">Please Select</option>
                                    <option value="SuperAdmin">Super Admin</option>
                                    <option value="Admin">Admin</option>
                                </select>
                            </div>
                            <!-- Change this to a button or input when using this as a form -->
                            <button type="button" href="index.html" class="btn btn-lg btn-success btn-block" onclick="RegisterUser();">Create Account</button>
                            <div class="alert alert-danger" id="txtAlert" style="display:none; margin-top: 10px;">
                            </div>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

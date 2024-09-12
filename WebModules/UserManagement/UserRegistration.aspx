<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Layout.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="CollegeManagementSystem.WebModules.UserManagement.UserRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../../Scripts/Registration.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-12" >
            <h1 class="page-header" style="font-size: 20px">Create New Login</h1>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title" style="text-align: center">Register A New Account</h3>
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
                                    <option value="Admin">Admin</option>
                                    <option value="Employee">Employee</option>
                                </select>
                            </div>
                            <!-- Change this to a button or input when using this as a form -->
                            <button type="button" href="index.html" class="btn btn-lg btn-success btn-block" onclick="RegisterUser();">Create Account</button>
                            
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

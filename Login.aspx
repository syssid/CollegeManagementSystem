<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CollegeManagementSystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome Please Login</title>
    <script src="Contents/CDN/JS/jQuery.js"></script>
    <script src="Contents/CDN/JS/bootstrap.js"></script>
    <link href="Contents/CDN/CSS/bootstrap.css" rel="stylesheet" />
    <link href="Contents/CSS/Login.css" rel="stylesheet" />
</head>
<body>
<section class="vh-100">
  <div class="container-fluid h-custom">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-md-9 col-lg-6 col-xl-5">
        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
          class="img-fluid" alt="Sample image"/>
      </div>
      <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
   <form id="form1" runat="server">
                 <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label> 
          <!-- Email input -->
          <div data-mdb-input-init="" class="form-outline mb-4">
<asp:TextBox ID="txtEmail" runat="server" CssClass="form-control form-control-lg" 
    Placeholder="Enter a valid email address" TextMode="Email" />

            <label class="form-label">Email address</label>
          </div>

          <!-- Password input -->
          <div data-mdb-input-init="" class="form-outline mb-3">
            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control form-control-lg" 
    Placeholder="Enter password" TextMode="Password" />

            <label class="form-label">Password</label>
          </div>

          <div class="d-flex justify-content-between align-items-center">
            <!-- Checkbox -->
<%--            <div class="form-check mb-0">
              <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3" />
              <label class="form-check-label" for="form2Example3">
                Remember me
              </label>
            </div>--%>
          </div>

          <div class="text-center text-lg-start mt-4 pt-2">
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" 
    CssClass="btn btn-primary btn-lg" Style="padding-left: 2.5rem; padding-right: 2.5rem;" />
          </div>
    </form>
      </div>
    </div>
  </div>
  <div
    class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
    <!-- Copyright -->
    <div class="text-white mb-3 mb-md-0">
      Copyright © 2025. All rights reserved.
    </div>
    <!-- Copyright -->

    <!-- Right -->
    <div>
      <a href="#!" class="text-white me-4">
        <i class="fab fa-facebook-f"></i>
      </a>
      <a href="#!" class="text-white me-4">
        <i class="fab fa-twitter"></i>
      </a>
      <a href="#!" class="text-white me-4">
        <i class="fab fa-google"></i>
      </a>
      <a href="#!" class="text-white">
        <i class="fab fa-linkedin-in"></i>
      </a>
    </div>
    <!-- Right -->
  </div>
</section>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="CollegeManagementSystem.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link href="Contents/CDN/CSS/bootstrap.css" rel="stylesheet" />
    <script src="Contents/CDN/JS/jQuery.js"></script>
    <script src="Contents/CDN/JS/SweetAlert.js"></script>
    <script src="Contents/CDN/JS/bootstrap.js"></script>
    <script src="Contents/JS/Registration.js?V=<%=DateTime.Now%>"></script>
</head>
<body>
    <style>
        #overlay {
            position: fixed;
            top: 0; 
            left: 0;
            z-index: 100;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.9);
        }

        .cv-spinner {
            height: 100%;
            display: flex;  
            justify-content: center;
            align-items: center;
        }

        .spinner {
            width: 40px;
            height: 40px;
            border: 4px #ddd solid;
            border-top: 4px #2e93e6 solid;
            border-radius: 50%;
            animation: sp-anime 0.8s infinite linear;
        }

        @keyframes sp-anime {
            100% {
                transform: rotate(360deg);
            }
        }
    </style>
    <div id="overlay" style="display:none">
        <div class="cv-spinner">
            <span class="spinner"></span>
        </div>
    </div>
    <section class="vh-100" style="background-color: #eee;">
        <div class="container h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-lg-12 col-xl-11">
                    <div class="card text-black" style="border-radius: 25px;">
                        <div class="card-body p-md-5">
                            <div class="row justify-content-center">
                                <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                                    <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>

                                    <form class="mx-1 mx-md-4">

                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                            <div data-mdb-input-init="" class="form-outline flex-fill mb-0">
                                                <input type="text" id="txtFirstName" class="form-control" />
                                                <label class="form-label" for="txtFirstName">First Name</label>
                                            </div>
                                        </div>
                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                            <div data-mdb-input-init="" class="form-outline flex-fill mb-0">
                                                <input type="text" id="txtLastName" class="form-control" />
                                                <label class="form-label" for="txtLastName">Last Name</label>
                                            </div>
                                        </div>
                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                            <div data-mdb-input-init="" class="form-outline flex-fill mb-0">
                                                <input type="email" id="txtEMail" class="form-control" />
                                                <label class="form-label" for="txtEMail">Your Email</label>
                                            </div>
                                        </div>

                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                            <div data-mdb-input-init="" class="form-outline flex-fill mb-0">
                                                <input type="text" id="txtPhone" maxlength="10" class="form-control" onkeypress="RestrictInputForNumbers(event);" />
                                                <label class="form-label" for="txtPhone">Your Phone</label>
                                            </div>
                                        </div>
                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                                            <div data-mdb-input-init="" class="form-outline flex-fill mb-0">
                                                <input type="password" id="txtPassword" class="form-control" />
                                                <label class="form-label" for="txtPassword">Password</label>
                                            </div>
                                        </div>

                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                                            <div data-mdb-input-init="" class="form-outline flex-fill mb-0">
                                                <input type="password" id="txtConfirmPassword" class="form-control" />
                                                <label class="form-label" for="txtConfirmPassword">Repeat your password</label>
                                            </div>
                                        </div>

                                        <%--   <div class="form-check d-flex justify-content-center mb-5">
                                            <input class="form-check-input me-2" type="checkbox" value="" id="chkTerms" />
                                            <label class="form-check-label" for="chkTerms">
                                                I agree all statements in <a href="#!">Terms of service</a>
                                            </label>
                                        </div>--%>

                                        <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                                            <button type="button" data-mdb-button-init="" data-mdb-ripple-init="" class="btn btn-primary btn-lg" onclick="RegisterUser();">Register</button>
                                        </div>

                                    </form>

                                </div>
                                <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
                                        class="img-fluid" alt="Sample image" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <%--    <form id="form1" runat="server">
       <div>
            <h2>Register</h2>
            <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox><br />
                <asp:Label ID="lblPhone" runat="server" Text="Phone:"></asp:Label>
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox><br />
            <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br />
            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
        </div>
    </form>--%>
</body>
</html>

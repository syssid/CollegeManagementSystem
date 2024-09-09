<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CollegeManagementSystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Welcome Please Login</title>
    <script src="../js/jquery.min.js"></script>
    <script src="../js/startmin.js"></script>


    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../js/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet" />

    <!-- MetisMenu CSS -->
    <link href="../css/metisMenu.min.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="../css/startmin.css" rel="stylesheet" />

    <!-- Custom Fonts -->
    <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div style="margin-top: 25%" class="login-panel panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Please Sign In</h3>
                        </div>
                        <div class="panel-body">
                            <fieldset>
                                <div class="form-group">
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"
                                        Placeholder="E-mail" TextMode="Email" AutoFocus="true" />
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control"
                                        Placeholder="Password" TextMode="Password" />
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me" />Remember Me
                                    </label>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"
                                    CssClass="btn btn-lg btn-success btn-block" />
                            </fieldset>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

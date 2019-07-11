<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addTeacher.aspx.cs" Inherits="AESystem.addTeacher" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Automated Examination System - Register</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"`/>
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet"/>

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet"/>
    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 100%;
            -webkit-box-flex: 0;
            -ms-flex: 0 0 50%;
            flex: 0 0 50%;
            max-width: 50%;
            font-size: xx-small;
            padding-left: .75rem;
            padding-right: .75rem;
        }
    </style>
</head>
<body class="bg-gradient-primary">
    <form id="form1" runat="server" class="user">
        <div class="container">

            <div class="card o-hidden border-0 shadow-lg my-5">
                <div class="card-body p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                        <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                        <div class="col-lg-7">
                            <div class="p-5">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">Create a Teacher's account!</h1>
                                </div>

                                    <div class="form-group">
                                            Full Name<asp:TextBox CssClass="form-control form-control-user" ID="txtTeacherName" placeholder="Enter full name" runat="server"></asp:TextBox>
                                        <div class="form-group">
                                            Home Address<asp:TextBox CssClass="form-control form-control-user" ID="txtTeacherAddress" placeholder="Enter address" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            CNIC Number<asp:TextBox CssClass="form-control form-control-user" ID="txtTeacherCNIC" placeholder="Enter teacher's CNIC" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            Phone Number<asp:TextBox CssClass="form-control form-control-user" ID="txtTeacherPhone" placeholder="Enter teacher's phone number" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <hr />
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control form-control-user" ID="txtTeacherEmail" placeholder="Email Address" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-sm-6 mb-3 mb-sm-0">
                                            <asp:TextBox CssClass="form-control form-control-user" ID="txtTeacherPassword" placeholder="Password" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="auto-style1">
                                            Password must be minimum 8 characters long
                                        </div>
                                    </div>
                                    <asp:Button Cssclass="btn btn-primary btn-user btn-block" ID="btnTeacherRegister" runat="server" Text="Register Account" OnClick="btnTeacherRegister_Click" />

                                <hr/>
                                <div class="text-center">
                                    <asp:Button CssClass="btn btn-danger btn-icon-split" ID="btnBackAdmin" runat="server" Text="Back" OnClick="btnBackAdmin_Click" Width="115px" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin-2.min.js"></script>
    </form>
</body>
</html>

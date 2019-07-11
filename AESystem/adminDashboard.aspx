<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminDashboard.aspx.cs" Inherits="AESystem.adminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Automated Examination System - Admin Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet" />
    <style type="text/css">

        .auto-style1 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form3" runat="server">
        <div>
            <div class="text-center">
                <strong><span class="auto-style1">Admin Dashboard</span></strong><br />
                <br />
                Welcome
                Admin&nbsp;to Automated Examination System. Click below to begin.<br />
                <br />
            </div>
            <table align="center">
                <tbody>
                    <tr>
                        <td>
                            <asp:Button CssClass="btn btn-primary btn-user btn-block" ID="btnRNS" runat="server" Text="Student's List" Width="200px" OnClick="btnRNS_Click" /></td>
                        <td>
                            <asp:Button CssClass="btn btn-primary btn-user btn-block" ID="btnAddProgramme" runat="server" Text="Add Programme" Width="200px" OnClick="btnAddProgramme_Click" /></td>
                        <td>
                            <asp:Button CssClass="btn btn-primary btn-user btn-block" ID="btnAddCourse" runat="server" Text="Add Course" Width="200px" OnClick="btnAddCourse_Click" /></td>
                        <td>
                            <asp:Button CssClass="btn btn-primary btn-user btn-block" ID="btnAddTeacher" runat="server" Text="Add Teacher" Width="200px" OnClick="btnAddTeacher_Click" /></td>
                        <td>
                            <asp:Button CssClass="btn btn-primary btn-user btn-block" ID="btnRollNumSlip" runat="server" Text="Show Roll # Slip" Width="200px" OnClick="btnRollNumSlip_Click" /></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button CssClass="btn btn-primary btn-user btn-block" ID="btnCourseMapping" runat="server" Text="Student Course Mapping" Width="200px" OnClick="btnCourseMapping_Click" /></td>
                        <td>
                            <asp:Button CssClass="btn btn-primary btn-user btn-block" ID="btnAddQuiz" runat="server" Text="Add Quiz" Width="200px" /></td>
                        <td>
                            <asp:Button CssClass="btn btn-primary btn-user btn-block" ID="btnAddMidterm" runat="server" Text="Add Midterm Exam" Width="200px"/></td>
                        <td>
                            <asp:Button CssClass="btn btn-primary btn-user btn-block" ID="btnAddFinal" runat="server" Text="Add Final Exam" Width="200px"/></td>
                        <td>
                            <asp:Button CssClass="btn btn-primary btn-user btn-block" ID="btnAddAssignment" runat="server" Text="Add Asignement" Width="200px"/></td>
                    </tr>
                </tbody>
            </table>

        </div>
        <table>
            <tbody>
            </tbody>
        </table>
            <br />
            <asp:Button CssClass="btn btn-danger btn-icon-split" ID="btnAdminSignout" runat="server" Text="Signout" Width="150px" OnClick="btnAdminSignout_Click" />
        <br />
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentDashboard.aspx.cs" Inherits="AESystem.studentDashboard" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Automated Examination System - Student Dashboard</title>

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
                <strong><span class="auto-style1">Student Dashboard</span></strong><br />
                <br />
                Welcome
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                &nbsp;to Automated Examination System. Click below to begin.<br />
                <br />
            </div>
            <table align="center">
                <tbody>
                    <tr>
                        <td>
                            <asp:Button CssClass="btn btn-primary btn-user btn-block" ID="btnRollNumberSlip" runat="server" Text="Print Roll # Slip" Width="150px" OnClick="btnRollNumberSlip_Click" /></td>
                        <td>
                            <asp:Button CssClass="btn btn-primary btn-user btn-block" ID="btnTakeQuiz" runat="server" Text="Take Quiz" Width="150px" /></td>
                        <td>
                            <asp:Button CssClass="btn btn-primary btn-user btn-block" ID="btnAssignment" runat="server" Text="Assignments" Width="150px" /></td>
                        <td>
                            <asp:Button CssClass="btn btn-primary btn-user btn-block" ID="btnExam" runat="server" Text="Exam" Width="150px" /></td>
                        <td>
                            <asp:Button CssClass="btn btn-primary btn-user btn-block" ID="btnStudentDatesheet" runat="server" Text="Datesheet" Width="150px" OnClick="btnStudentDatesheet_Click" /></td>
                        </tr>
                </tbody>
            </table>

        </div>
        <table>
            <tbody>
            </tbody>
        </table>
            <br />
            <asp:Button CssClass="btn btn-danger btn-icon-split" ID="btnSignout" runat="server" Text="Signout" Width="150px" OnClick="btnSignout_Click" /></td>
        <br />
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="courseMapping.aspx.cs" Inherits="AESystem.courseMapping" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Automated Examination System - Student Course Mapping</title>

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
                <strong><span class="auto-style1">Student Course Mapping</span></strong><br />
                <br />
                Please select the student and a course to assign.<br />
                <br />
            </div>
            <table align="center">
                <tbody>
                    <tr>
                        <td>
                            <asp:DropDownList CssClass="btn btn-outline-primary dropdown-toggle" ID="DropDownListStudentName" runat="server" DataSourceID="SqlDataSourceCMapping" DataTextField="StudentName" DataValueField="StudentID" Height="40px" Width="250px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceCMapping" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringCMapping %>" SelectCommand="SELECT [StudentName], [StudentID] FROM [tableStudent]"></asp:SqlDataSource></td>
                        <td>
                            <asp:DropDownList CssClass="btn btn-outline-primary dropdown-toggle" ID="DropDownListStudentCourse" runat="server" DataSourceID="SqlDataSourceCMapping2" DataTextField="courseName" DataValueField="courseID" Height="40px" Width="250px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceCMapping2" runat="server" ConnectionString="<%$ ConnectionStrings:adminConnection %>" SelectCommand="SELECT [courseID], [courseName] FROM [tableCourse]"></asp:SqlDataSource></td>
                        <td>
                            <asp:Button CssClass="btn btn-primary btn-user btn-block" ID="btnMapCourse" runat="server" Text="Map Course" Width="150px" OnClick="btnMapCourse_Click" /></td>
                    </tr>
                </tbody>
            </table>

        </div>
        <table>
            <tbody>
            </tbody>
        </table>
            <br />
            <asp:Button CssClass="btn btn-danger btn-icon-split" ID="btnCourseMappingBack" runat="server" Text="Go Back" Width="150px" OnClick="btnCourseMappingBack_Click" /></td>
        <br />
    </form>
</body>
</html>

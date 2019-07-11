<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cMapping.aspx.cs" Inherits="AESystem.cMapping" %>

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
    <form id="form1" runat="server">
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
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="250px" DataSourceID="SqlDataSourceCMConnect" DataTextField="StudentName" DataValueField="StudentID">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceCMConnect" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringCMConnect %>" SelectCommand="SELECT [StudentID], [StudentName] FROM [tableStudent]"></asp:SqlDataSource>
                        </td>
                        <td style="text-align: justify">
                            <asp:Button CssClass="btn btn-primary btn-user btn-block" ID="button1" runat="server" Text="Map Course" Width="150px" OnClick="button1_Click" />
                            <asp:Button CssClass="btn btn-danger btn-icon-split" ID="button2" runat="server" Text="Back" OnClick="button2_Click" Width="115px" />
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server" Height="40px" Width="250px" DataSourceID="SqlDataSourceCMCourse" DataTextField="courseName" DataValueField="courseName">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceCMCourse" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringCMConnect %>" SelectCommand="SELECT [courseName], [courseID] FROM [tableCourse]"></asp:SqlDataSource>
                        </td>
                        <td>
                            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                <NextPrevStyle VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#808080" />
                                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                <SelectorStyle BackColor="#CCCCCC" />
                                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <WeekendDayStyle BackColor="#FFFFCC" />
                            </asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DropDownList ID="DropDownList3" runat="server" Height="40px" Width="250px" DataSourceID="SqlDataSourceCMCourse" DataTextField="courseName" DataValueField="courseName">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringCMConnect %>" SelectCommand="SELECT [courseName], [courseID] FROM [tableCourse]"></asp:SqlDataSource>
                        </td>
                        <td>
                            <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                <NextPrevStyle VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#808080" />
                                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                <SelectorStyle BackColor="#CCCCCC" />
                                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <WeekendDayStyle BackColor="#FFFFCC" />
                            </asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DropDownList ID="DropDownList4" runat="server" Height="40px" Width="250px" DataSourceID="SqlDataSourceCMCourse" DataTextField="courseName" DataValueField="courseName">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringCMConnect %>" SelectCommand="SELECT [courseName], [courseID] FROM [tableCourse]"></asp:SqlDataSource>
                        </td>
                        <td>
                            <asp:Calendar ID="Calendar3" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                <NextPrevStyle VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#808080" />
                                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                <SelectorStyle BackColor="#CCCCCC" />
                                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <WeekendDayStyle BackColor="#FFFFCC" />
                            </asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DropDownList ID="DropDownList5" runat="server" Height="40px" Width="250px" DataSourceID="SqlDataSourceCMCourse" DataTextField="courseName" DataValueField="courseName">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringCMConnect %>" SelectCommand="SELECT [courseName], [courseID] FROM [tableCourse]"></asp:SqlDataSource>
                        </td>
                        <td>
                            <asp:Calendar ID="Calendar4" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                <NextPrevStyle VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#808080" />
                                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                <SelectorStyle BackColor="#CCCCCC" />
                                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <WeekendDayStyle BackColor="#FFFFCC" />
                            </asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DropDownList ID="DropDownList6" runat="server" Height="40px" Width="250px" DataSourceID="SqlDataSourceCMCourse" DataTextField="courseName" DataValueField="courseName">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringCMConnect %>" SelectCommand="SELECT [courseName], [courseID] FROM [tableCourse]"></asp:SqlDataSource>
                        </td>
                        <td>
                            <asp:Calendar ID="Calendar5" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                <NextPrevStyle VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#808080" />
                                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                <SelectorStyle BackColor="#CCCCCC" />
                                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <WeekendDayStyle BackColor="#FFFFCC" />
                            </asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DropDownList ID="DropDownList7" runat="server" Height="40px" Width="250px" DataSourceID="SqlDataSourceCMCourse" DataTextField="courseName" DataValueField="courseName">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringCMConnect %>" SelectCommand="SELECT [courseName], [courseID] FROM [tableCourse]"></asp:SqlDataSource>
                        </td>
                        <td>
                            <asp:Calendar ID="Calendar6" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                <NextPrevStyle VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#808080" />
                                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                <SelectorStyle BackColor="#CCCCCC" />
                                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <WeekendDayStyle BackColor="#FFFFCC" />
                            </asp:Calendar>
                        </td>
                    </tr>
                    </tbody>
                </table>
                 </div>

        <p>
            &nbsp;</p>
        <div>
        </div>
    </form>
</body>
</html>

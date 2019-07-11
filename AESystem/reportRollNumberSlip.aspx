<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reportRollNumberSlip.aspx.cs" Inherits="AESystem.reportRollNumberSlip" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManagerRNS" runat="server"></asp:ScriptManager>
            <rsweb:ReportViewer ID="rptViewerSlip" runat="server" BackColor="" ClientIDMode="AutoID" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226" Height="420px" Width="866px">
                <LocalReport ReportPath="Reports\rollNumberSlip.rdlc">
                    <DataSources>
                        <rsweb:ReportDataSource DataSourceId="SqlDataSourceRNS" Name="dsStudents" />
                    </DataSources>
                </LocalReport>
            </rsweb:ReportViewer>
            
            <asp:SqlDataSource ID="SqlDataSourceRNS" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringRNS %>" SelectCommand="SELECT [StudentID], [StudentName], [studentEmail], [studentDegree], [studentProgramme], [studentExamType], [studentAddress] FROM [tableStudent] WHERE ([studentEmail] = @studentEmail)">
                <SelectParameters>
                    <asp:SessionParameter Name="studentEmail" SessionField="id" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            
        </div>
    </form>
</body>
</html>

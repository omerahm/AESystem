<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminRNS.aspx.cs" Inherits="AESystem.adminRNS" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Automated Examination System - Student Roll Number Slip</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <rsweb:ReportViewer ID="rptViewerSlip" runat="server" BackColor="" ClientIDMode="AutoID" HighlightBackgroundColor="" 
                InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" ToolBarItemBorderStyle="Solid" 
                ToolBarItemBorderWidth="1px" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" 
                ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226" Height="566px" Width="866px">
                <LocalReport ReportPath="Reports\studentSlip.rdlc">
                    <DataSources>
                        <rsweb:ReportDataSource DataSourceId="SqlDataSourceARNS" Name="DataSetRoll" />
                    </DataSources>
                </LocalReport>
            </rsweb:ReportViewer>
            
            <asp:SqlDataSource ID="SqlDataSourceARNS" runat="server" ConnectionString="<%$ ConnectionStrings:adminConnection %>" 
                SelectCommand="SELECT * FROM [tableStudent]"></asp:SqlDataSource>
            
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            
        </div>
    </form>
</body>
</html>
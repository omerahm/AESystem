<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="enterMarks.aspx.cs" Inherits="AESystem.enterMarks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            enter marks<br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentID" DataSourceID="SqlDataSourceMarksView" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="StudentID" HeaderText="StudentID" InsertVisible="False" ReadOnly="True" SortExpression="StudentID" />
                    <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
                    <asp:BoundField DataField="studentEmail" HeaderText="studentEmail" SortExpression="studentEmail" />
                    <asp:BoundField DataField="studentPassword" HeaderText="studentPassword" SortExpression="studentPassword" />
                    <asp:BoundField DataField="studentAddress" HeaderText="studentAddress" SortExpression="studentAddress" />
                    <asp:BoundField DataField="studentDegree" HeaderText="studentDegree" SortExpression="studentDegree" />
                    <asp:BoundField DataField="studentProgramme" HeaderText="studentProgramme" SortExpression="studentProgramme" />
                    <asp:BoundField DataField="courseID" HeaderText="courseID" SortExpression="courseID" />
                    <asp:BoundField DataField="studentActivity" HeaderText="studentActivity" SortExpression="studentActivity" />
                    <asp:BoundField DataField="studentExamType" HeaderText="studentExamType" SortExpression="studentExamType" />
                    <asp:CommandField ShowEditButton="true" />  
                        <asp:CommandField ShowDeleteButton="true" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceMarksView" runat="server" ConnectionString="<%$ ConnectionStrings:adminConnection %>" SelectCommand="SELECT * FROM [tableStudent]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

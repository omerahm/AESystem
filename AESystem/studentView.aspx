<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentView.aspx.cs" Inherits="AESystem.studentView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form3" runat="server">
        <div>
           Student Details View<br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="StudentID" DataSourceID="SqlDataSourceAll" Font-Names="Calibri" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="StudentID" HeaderText="StudentID" InsertVisible="False" ReadOnly="True" SortExpression="StudentID" />
                    <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
                    <asp:BoundField DataField="studentEmail" HeaderText="studentEmail" SortExpression="studentEmail" />
                    <asp:BoundField DataField="studentAddress" HeaderText="studentAddress" SortExpression="studentAddress" />
                    <asp:BoundField DataField="studentDegree" HeaderText="studentDegree" SortExpression="studentDegree" />
                    <asp:BoundField DataField="studentProgramme" HeaderText="studentProgramme" SortExpression="studentProgramme" />
                    <asp:BoundField DataField="studentExamType" HeaderText="studentExamType" SortExpression="studentExamType" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <sortedascendingcellstyle backcolor="#F5F7FB" />
                <sortedascendingheaderstyle backcolor="#6D95E1" />
                <sorteddescendingcellstyle backcolor="#E9EBEF" />
                <sorteddescendingheaderstyle backcolor="#4870BE" />
            </asp:GridView>
            <br />

            <asp:SqlDataSource ID="SqlDataSourceAll" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringRegister %>" SelectCommand="SELECT [StudentID], [StudentName], [studentEmail], [studentAddress], [studentDegree], [studentProgramme], [studentExamType] FROM [tableStudent] WHERE ([studentEmail] = @studentEmail)">
                <SelectParameters>
                    <asp:SessionParameter Name="studentEmail" SessionField="id" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            
        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Signout" />
        <br />
        <br />
    </form>
</body>
</html>

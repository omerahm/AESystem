<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addProgramme.aspx.cs" Inherits="AESystem.addProgramme" %>

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
                      <div class="col-lg-5 d-none d-lg-block ">
                          <asp:GridView ID="gwProgrammeAdd" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="programmeID" DataSourceID="gwProgAdd" ForeColor="#333333" GridLines="None" AllowPaging="True">
                              <AlternatingRowStyle BackColor="White" />
                              <Columns>
                                  <asp:BoundField DataField="programmeID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="programmeID" />
                                  <asp:BoundField DataField="programmeName" HeaderText="Name" SortExpression="programmeName" />
                                  <asp:BoundField DataField="programmeAbbreviation" HeaderText="Abbr." SortExpression="programmeAbbreviation" />
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
                      </div>
                        <div class="col-lg-7">
                            <div class="p-5">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">Add a Programme</h1>
                                </div>

                                    <div class="form-group">
                                            Programme Name <asp:TextBox CssClass="form-control form-control-user" ID="txtProgrammeName" placeholder="Enter programme name" runat="server"></asp:TextBox>
                                        <div class="form-group">
                                            Programme Abbreviation <asp:TextBox CssClass="form-control form-control-user" ID="txtProgrammeAbbreviation" style="text-transform:uppercase"  placeholder="Enter programme abbreviation" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <asp:Button Cssclass="btn btn-primary btn-user btn-block" ID="btnAcceptProgramme" runat="server" Text="Add Programme" OnClick="btnAcceptProgramme_Click" />
                                    <hr/>
                                <asp:Button CssClass="btn btn-danger btn-icon-split" ID="btnBackProg" runat="server" Text="Back" OnClick="btnBackProg_Click" Width="115px" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
                                                    

        <asp:SqlDataSource ID="gwProgAdd" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringProgrammeAdd %>" SelectCommand="SELECT * FROM [tableProgramme]"></asp:SqlDataSource>

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

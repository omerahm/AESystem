<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addCourse.aspx.cs" Inherits="AESystem.addCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Automated Examination System - Add Course</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"`/>
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet"/>

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet"/>
    </head>
<body class="bg-gradient-primary">
    <form id="form1" runat="server" class="user">
        <div class="container">

            <div class="card o-hidden border-0 shadow-lg my-5">
                <div class="card-body p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                      <div class="col-lg-5 d-none d-lg-block ">
                         
                      </div>
                        <div class="col-lg-7">
                            <div class="p-5">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">Add a Course</h1>
                                </div>

                                    <div class="form-group">
                                            Course Name <asp:TextBox CssClass="form-control form-control-user" ID="txtCourseName" placeholder="Enter course name" runat="server"></asp:TextBox>
                                        <div class="form-group">
                                            Course Code <asp:TextBox CssClass="form-control form-control-user" ID="txtCourseCode" placeholder="Enter course code" style="text-transform:uppercase" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            Credit Hours<asp:TextBox CssClass="form-control form-control-user" ID="txtCreditHours" placeholder="Enter course credit hours" runat="server"></asp:TextBox>
                                        </div>
   <!--                                     <div class="form-group">
                                            Select Teacher 
                                            <asp:DropDownList CssClass="btn btn-outline-primary dropdown-toggle" ID="DropDownListTeacher" runat="server" DataSourceID="SqlDataSourceCourse" DataTextField="teacherName" DataValueField="teacherID" Width="242px">
                                            </asp:DropDownList>
                                            </div>      -->
                                        <div class="form-group">
                                            Select Programme
                                            <asp:DropDownList CssClass="btn btn-outline-primary dropdown-toggle" ID="DropDownListProgrammes" runat="server" DataSourceID="SqlDataSourceProgCourse" DataTextField="programmeAbbreviation" DataValueField="programmeID" Width="241px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSourceProgCourse" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringProgCourse %>" SelectCommand="SELECT [programmeAbbreviation], [programmeID] FROM [tableProgramme]"></asp:SqlDataSource>
                                            </div>
                                    </div>
                                    <asp:Button Cssclass="btn btn-primary btn-user btn-block" ID="btnAddCourse" runat="server" Text="Add Course" OnClick="btnAddCourse_Click" />
                                    <hr/>
                                <asp:Button CssClass="btn btn-danger btn-icon-split" ID="btnBackAdmin" runat="server" Text="Back" OnClick="btnBackAdmin_Click" Width="115px" />
                                
                                <asp:SqlDataSource ID="SqlDataSourceCourse" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringCourseAdd %>" SelectCommand="SELECT [teacherName], [teacherID] FROM [tableTeacher]"></asp:SqlDataSource>
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

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EntryPage.aspx.cs" Inherits="labTest02.EntryPage" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Entry Sallery</title>
    
    <!-- Bootstrap Core CSS -->
    <link href="Content/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Theme CSS -->
    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
    <!-- Custom CSS -->
    <link href="Content/FirstPage.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <form id="form1" runat="server">
                    <h2>Employee Information System</h2>
                    <div class="form-group">
                        <label for="employeeIDTextBox">Employee ID</label>
                        <asp:TextBox ID="employeeIDTextBox" CssClass="form-control" placeholder="Enter Employee Id" runat="server" />
                    </div>
                    <div class="form-group">
                        <label for="nameTextBox">Name</label>
                        <asp:TextBox ID="nameTextBox" placeholder="Enter Name" CssClass="form-control" runat="server" />
                    </div>
                    <div class="form-group">
                        <label for="designationTextBox">Designation</label>
                        <asp:TextBox ID="designationTextBox" CssClass="form-control" placeholder="Enter Designation" runat="server" />
                    </div>
                     <div class="form-group">
                        <label for="emailTextBox">E-Mail</label>
                        <asp:TextBox ID="emailTextBox" CssClass="form-control" placeholder="Enter E-Mail" runat="server" />
                    </div>
                    <div class="form-group">
                        <label for="basicSalleryTextBox">Sallery</label>
                        <asp:TextBox ID="basicSalleryTextBox" placeholder="Enter Title" CssClass="form-control" runat="server" />
                    </div>
                    <div class="form-group">
                        <label for="convTextBox">Conveyance</label>
                        <asp:TextBox ID="convTextBox" CssClass="form-control" placeholder="Enter Conveyance Rate" runat="server" />% of Sallery
                    </div>
                    <div class="form-group">
                        <label for="hrTextBox">House Rent</label>
                        <asp:TextBox ID="hrTextBox" CssClass="form-control" placeholder="Enter House Rent" runat="server" />% of Sallery
                    </div>
                    <div class="form-group">
                        <asp:Button ID="saveButton" CssClass="btn btn-default" runat="server" Text="Save Post" OnClick="saveButton_Click" />
                        <asp:Label ID="messageLabel" runat="server" Text="" />
                    </div>
                </form>
            </div>
        </div>
       
    </div>
    <!-- jQuery -->
    <script src="Scripts/jquery-2.1.3.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="Scripts/bootstrap.js"></script>
  
</body>
</html>

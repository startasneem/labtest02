<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="First Page.aspx.cs" Inherits="labTest02.First_Page" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Blog Home Page</title>

    <!-- Bootstrap Core CSS -->
    <link href="Content/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Theme CSS -->
    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
    <!-- Custom CSS -->
    <link href="Content/FirstPage.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <div class="row">
            <form id="form1" runat="server">
                <div class="col-md-offset-4 col-md-4">
                    <asp:HyperLink ID="newPostLink" class="center-block btn btn-primary btn-lg" runat="server" NavigateUrl="EntryPage.aspx">Save Employee Info</asp:HyperLink>
                </div>
                <div class="col-md-offset-4 col-md-4">
                    <asp:HyperLink ID="ViewPostLink" class="center-block btn btn-default btn-lg" runat="server" NavigateUrl="ViewPage.aspx">View Sallery Summery(s)</asp:HyperLink>
                </div>
            </form>
        </div>
        <hr>
        
    </div>
    <!-- jQuery -->
    <script src="Scripts/jquery-2.1.3.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="Scripts/bootstrap.js"></script>
</body>
</html>

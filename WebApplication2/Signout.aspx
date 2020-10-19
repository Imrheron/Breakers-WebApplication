<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signout.aspx.cs" Inherits="WebApplication2.Signout" %>

<!DOCTYPE html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="w3-sidebar w3-bar-block w3-white w3-card w3-animate-left w3-xxlarge" style="display: none; z-index: 2" id="mySidebar">
            <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-display-topright w3-text-teal">Close
    <i class="fa fa-remove"></i>
            </a>
            <a href="#" class="w3-bar-item w3-button">Link 1</a>
            <a href="#" class="w3-bar-item w3-button">Link 2</a>
            <a href="#" class="w3-bar-item w3-button">Link 3</a>
            <a href="#" class="w3-bar-item w3-button">Link 4</a>
            <a href="#" class="w3-bar-item w3-button">Link 5</a>
        </nav>

        <!-- Navbar -->
        <div class="w3-top">
            <div class="w3-bar w3-theme-d2 w3-left-align">
                <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-theme-d2" href="javascript:void(0);" onclick="openNav()"><i class="fa fa-bars"></i></a>
                <a href="/Homepage.aspx" class="w3-bar-item w3-button w3-black"><i class="fa fa-home w3-margin-right"></i>Home</a>
                <a href="/WebForm4.aspx" class="w3-bar-item w3-button w3-hide-small ">Team</a>
                <a href="/Videos.aspx" class="w3-bar-item w3-button w3-hide-small w3-hover-#00a3cc">Videos</a>
                <a href="/WebForm3.aspx" class="w3-bar-item w3-button w3-hide-small w3-hover-#00a3cc">Tickets</a>
                <asp:HyperLink ID="HyperLink1" href="/Sign in" runat="server" class="w3-bar-item w3-button w3-hide-small w3-hover-#00a3cc">Sign in</asp:HyperLink>

                <asp:Label runat="server" ID="profile" class="w3-right w3-dropdown-hover w3-hide-small" Visible="false">
    <button class="w3-button" title="Notifications">Profile <i class=" fa fa-caret-down"></i></button>     
    <div class="w3-dropdown-content w3-card-4 w3-bar-block">
      <a href="#" class="w3-bar-item w3-button">Link</a>
      <a href="#" class="w3-bar-item w3-button">Link</a>
      <a href="#" class="w3-bar-item w3-button">Link</a>
        <!-- Brooooooooooooooooooooo, edit your profile code needs to be done -->
    </div>
                </asp:Label>

                <a href="#" class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-teal" title="Search"><i class="fa fa-search"></i></a>
            </div>
        </div>
        <div class="w3-row-padding w3-center w3-padding-64" id="pricing">
            <h2>Are you sure you want to sign out?</h2>
            <br />
            <div class="w3-third w3-margin-bottom">
                <asp:Button ID="Button1" class="w3-padding-64 w3-button" runat="server" Text="No" OnClick="Redirect_click" Width="100" />

                <asp:Button ID="Button2" class="w3-padding-64 w3-button" runat="server" Text="Yes" OnClick="Signout_click" />
            </div>
        </div>
    </form>
</body>
</html>

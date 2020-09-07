<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modify UserUpdated.aspx.cs" Inherits="WebApplication2.WebForm2" %>

<!DOCTYPE html>
            <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>



<!-- Navbar -->
<div class="w3-top">
 <div class="w3-bar w3-theme-d2 w3-left-align">
  <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-theme-d2" href="javascript:void(0);" onclick="openNav()"><i class="fa fa-bars"></i></a>
  <a href="/Homepage.aspx" class="w3-bar-item w3-button w3-black"><i class="fa fa-home w3-margin-right"></i>Home</a>
  <a href="/Team.aspx" class="w3-bar-item w3-button w3-hide-small ">Team</a>
  <a href="/Videos.aspx" class="w3-bar-item w3-button w3-hide-small w3-hover-#00a3cc">Videos</a>
  <a href="/Merch.aspx" class="w3-bar-item w3-button w3-hide-small w3-hover-#00a3cc">Tickets</a>
     <asp:HyperLink ID="HyperLink1" href="/Sign in" runat="server" class="w3-bar-item w3-button w3-hide-small w3-hover-#00a3cc">Sign in</asp:HyperLink>
  
    <asp:Button runat="server" class="w3-bar-item w3-right w3-dropdown-hover w3-button" title="Notifications" Text="profile" OnClick="buttonprofile_Click" ID="buttonprofile" Visible="False" />     
    
        <asp:Button ID="Button1" class="w3-bar-item w3-right w3-dropdown-hover w3-button" runat="server" Text="Sign out" OnClick="Signout_click" />
      <asp:Button ID="Practice" class="w3-bar-item w3-right w3-button" runat="server" Text="Use the App!" OnClick="Practice_Click" Visible="False" />
        <!--  -->
    </div>
        
  
  <a href="#" class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-teal" title="Search"><i class="fa fa-search"></i></a>
 </div>

  <!-- Navbar on small screens -->
  <div id="navDemo" class="w3-bar-block w3-theme-d2 w3-hide w3-hide-large w3-hide-medium">
    <a href="#team" class="w3-bar-item w3-button" >Team</a>
    <a href="#work" class="w3-bar-item w3-button">Work</a>
    <a href="#pricing" class="w3-bar-item w3-button">Price</a>
    <a href="#contact" class="w3-bar-item w3-button">Contact</a>
    <a href="#" class="w3-bar-item w3-button">Search</a>
  </div>
        </div>
    </form>
    <i class="fa fa-user-o w3-text-teal w3-xlarge"></i><asp:TextBox ID="txtusername" runat="server"  Width="1288px" Height="27px"></asp:TextBox>
    <i class="fa fa-envelope-o w3-text-teal w3-xlarge"></i><asp:TextBox ID="txtemail" runat="server"  Width="1288px" Height="27px"></asp:TextBox>
    <i class="fa fa-lock w3-text-teal w3-xlarge"></i> <asp:TextBox ID="txtpassword" runat="server"  Width="1288px" Height="27px"></asp:TextBox>
    <i class="fa fa-check w3-text-teal w3-xlarge"></i><asp:TextBox ID="txtpasswordconfirm" runat="server"  Width="1288px" Height="27px"></asp:TextBox>
    <asp:Label ID="UserIDnumber" runat="server" Text=""></asp:Label>
    <asp:Label ID="Emaillbl" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="Passlbl" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Button ID="Save" runat="server" OnClick="Save_Click" Text="Save" style="background-color:white; color:dodgerblue; border: 2px solid dodgerblue;" class="w3-button"/> 
    <asp:Label ID="lblerrormessage" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lblsuccessmessage" runat="server" Text="" Visible="false"></asp:Label>


</body>
</html>

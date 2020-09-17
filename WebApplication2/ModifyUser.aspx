<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifyUser.aspx.cs" Inherits="WebApplication2.ModifyUser" %>

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
        <div class="w3-top">
 <div class="w3-bar w3-theme-d2 w3-left-align">
  <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-theme-d2" href="javascript:void(0);" onclick="openNav()"><i class="fa fa-bars"></i></a>
  <a href="/Homepage.aspx" class="w3-bar-item w3-button w3-black"><i class="fa fa-home w3-margin-right"></i>Home</a>
  <a href="/Team.aspx" class="w3-bar-item w3-button w3-hide-small ">Team</a>
  <a href="/Videos.aspx" class="w3-bar-item w3-button w3-hide-small w3-hover-#00a3cc">Videos</a>
  <a href="/Merch.aspx" class="w3-bar-item w3-button w3-hide-small w3-hover-#00a3cc">Tickets</a>
     <asp:HyperLink ID="HyperLink1" href="/Sign in" runat="server" class="w3-bar-item w3-button w3-hide-small w3-hover-#00a3cc">Sign in</asp:HyperLink>
  
     <asp:Label runat="server" id="profile" class="w3-right w3-dropdown-hover w3-hide-small" Visible="false">
    <button class="w3-button" title="Notifications">Profile <i class=" fa fa-caret-down"></i></button>     
    <div class="w3-dropdown-content w3-card-4 w3-bar-block">
      <a href="/Signout.aspx" class="w3-bar-item w3-button">Actual</a>
      <a href="#" class="w3-bar-item w3-button">Link</a>
      <a href="#" class="w3-bar-item w3-button">Link</a>
        <!--  -->
    </div>
        </asp:Label>
  
  <a href="#" class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-teal" title="Search"><i class="fa fa-search"></i></a>
 </div>
       <h1> You're all good to go!</h1>
            <div>
                 
            </div>
        <asp:Label ID="Label1" runat="server" Text="" > <div class="w3-container w3-padding-64 w3-theme-l5" id="edit">
  <div class="w3-row">
    <div class="w3-col m5">
    </div>
      <div class="w3-section">  
          
        <label><i class="fa fa-user-o w3-text-teal w3-xlarge"></i>  Name</label> <asp:TextBox ID="txtusername" runat="server" Width="1288px" Height="27px" OnTextChanged="txtusername_TextChanged" AutoPostBack="true"></asp:TextBox>&nbsp;</div><div class="w3-section">      
        <label><i class="fa fa-envelope-o w3-text-teal w3-xlarge"></i>  Email</label> <asp:TextBox ID="txtemail" runat="server" Width="1288px" Height="27px" OnTextChanged="txtemail_TextChanged" AutoPostBack="true"></asp:TextBox>&nbsp;</div><div class="w3-section">      
        <label><i class="fa fa-lock w3-text-teal w3-xlarge"></i>  Password</label> <asp:TextBox ID="txtpassword" runat="server" Width="1288px" Height="27px" OnTextChanged="txtpassword_TextChanged" AutoPostBack="true"></asp:TextBox>&nbsp;</div><div class="w3-section">      
        <label><i class="fas fa-check w3-text-teal w3-xlarge"></i>  Confirm Password</label> <asp:TextBox ID="txtpasswordconfirm" runat="server" Width="1288px" Height="27px"></asp:TextBox>&nbsp;</div></div></div></asp:Label>
        
       
        <asp:Label ID="UserIDnumber" runat="server" Text="" Visible="true"></asp:Label>
        <asp:Label ID="Emaillbl" runat="server" Text="" Visible="false"></asp:Label>
        <asp:Label ID="Passlbl" runat="server" Text="" Visible="false"></asp:Label>
        <asp:Button ID="Save" runat="server" OnClick="Save_Click" Text="Save" style="background-color:white; color:dodgerblue; border: 2px solid dodgerblue;" class="w3-button"/> 
            <asp:Label ID="lbluserbox" runat="server" Text="" Visible="false"></asp:Label>
            <asp:Label ID="lblemailbox" runat="server" Text="" Visible="false"></asp:Label>
            <asp:Label ID="lblpassbox" runat="server" Text="" Visible="false"></asp:Label>
            <asp:Label ID="lblerrormessage" runat="server" Text="" Visible="false"></asp:Label>
        <asp:Label ID="lblsuccessmessage" runat="server" Text="" Visible="false"></asp:Label>
    </form>
</body>
</html>

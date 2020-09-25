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
        
    </div>
 </div>

       
            <div class="fa-bathtub">
                 <h1> You're all good to go!</h1>
            </div>
        <div class="w3-container w3-padding-64 w3-theme-l5" id="edit">
  <div class="w3-row">
    <div class="w3-col m5">
    </div>
      <div class="w3-section">  
          
        <label><i class="fa fa-user-o w3-text-teal w3-xlarge"></i>  Name</label> <br />
          <asp:TextBox ID="txtusername" runat="server" Width="1288px" Height="27px" OnTextChanged="txtusername_TextChanged" AutoPostBack="true"></asp:TextBox>&nbsp;</div>
      <div class="w3-section">      
        <label><i class="fa fa-envelope-o w3-text-teal w3-xlarge"></i>  Email</label> <br />
              <asp:TextBox ID="txtemail" runat="server" Width="1288px" Height="27px" OnTextChanged="txtemail_TextChanged" AutoPostBack="true"></asp:TextBox>&nbsp;</div>
      <div class="w3-section">      
        <label><i class="fa fa-lock w3-text-teal w3-xlarge"></i>  Password</label> <br />
                  <asp:TextBox ID="txtpassword" runat="server" Width="1288px" Height="27px" OnTextChanged="txtpassword_TextChanged" AutoPostBack="true"></asp:TextBox>&nbsp;</div>
      <div class="w3-section">      
        <label><i class="fa fa-check w3-text-teal w3-xlarge"></i>  Confirm Password</label> <br />
                      <asp:TextBox ID="txtpasswordconfirm" runat="server" Width="1288px" Height="27px"></asp:TextBox>&nbsp;</div></div></div>
        
                             
        <asp:Label ID="UserIDnumber" runat="server" Text="" Visible="false"></asp:Label>
        <asp:Label ID="Emaillbl" runat="server" Text="" Visible="false"></asp:Label>
        <asp:Label ID="Passlbl" runat="server" Text="" Visible="false"></asp:Label>
        <asp:Button ID="Save" runat="server" OnClick="Save_Click" Text="Update profile" style="background-color:white; color:dodgerblue; border: 2px solid dodgerblue;" class="w3-button w3-left"/> 
            
            <asp:Label ID="lbluserbox" runat="server" Text="" Visible="false"></asp:Label>
            <asp:Label ID="lblemailbox" runat="server" Text="" Visible="false"></asp:Label>
            <asp:Label ID="lblpassbox" runat="server" Text="" Visible="false"></asp:Label>
            <asp:Label ID="lblerrormessage" runat="server" Text="" Visible="false"></asp:Label>
        <asp:Label ID="lblsuccessmessage" runat="server" Text="" Visible="false"></asp:Label>
    </form>
</body>
</html>

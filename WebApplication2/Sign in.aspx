<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign in.aspx.cs" Inherits="WebApplication2.Sign_in" %>

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
        <nav class="w3-sidebar w3-bar-block w3-white w3-card w3-animate-left w3-xxlarge" style="display:none;z-index:2" id="mySidebar">
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
  <a href="/Team.aspx" class="w3-bar-item w3-button w3-hide-small ">Team</a>
  <a href="/Videos.aspx" class="w3-bar-item w3-button w3-hide-small w3-hover-#00a3cc">Videos</a>
  <a href="/WebForm3.aspx" class="w3-bar-item w3-button w3-hide-small w3-hover-#00a3cc">Tickets</a>
     <asp:HyperLink ID="HyperLink1" href="/Sign in" runat="server" class="w3-bar-item w3-button w3-hide-small w3-hover-#00a3cc">Sign in</asp:HyperLink>
  
     <asp:Label runat="server" id="profile" class="w3-right w3-dropdown-hover w3-hide-small" Visible="false">
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
            <div class="w3-container w3-padding-64 w3-theme-l5" id="contact">
  <div class="w3-row">
    <div class="w3-col m5">
    <div class="w3-padding-16"><span class="w3-xlarge w3-border-teal w3-bottombar">Sign up</span></div>
        <h3>Train yourself like a Pro!</h3>
      <p>Sign up to stay up to date with your latest progress, get recommendations on what to practice next, and get all the latest news and updates from the breakers<p>
    </div>
    <div class="w3-col m7">
      <div class="w3-section">      
        <label><i class="fa fa-user-o w3-text-teal w3-xlarge"></i>  Name</label>
        <asp:TextBox ID="txtUsername" runat="server" Width="1288px" Height="27px"></asp:TextBox>
&nbsp;</div>
      <div class="w3-section">      
        <label><i class="fa fa-envelope-o w3-text-teal w3-xlarge"></i>  Email</label>
        <asp:TextBox ID="txtEmail" runat="server" Width="1288px" Height="27px"></asp:TextBox>
&nbsp;</div>
      <div class="w3-section">      
        <label><i class="fa fa-lock w3-text-teal w3-xlarge"></i>  Password</label>
        <asp:TextBox ID="txtPassword" runat="server" Width="1288px" Height="27px" TextMode="Password"></asp:TextBox>
&nbsp;</div>  
         <div class="w3-section">      
        <label><i class="fas fa-check w3-text-teal w3-xlarge"></i>  Confirm Password</label>
        <asp:TextBox ID="txtpasswordconfirm" runat="server" Width="1288px" Height="27px" TextMode="Password"></asp:TextBox>
&nbsp;</div>  
      <asp:Button class="w3-button w3-right w3-theme" ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" />
          
    </div>
  </div>
</div>
       <asp:HiddenField ID="HField1" runat="server" visible="true"/>
           <div class="w3-container w3-padding-64 w3-theme-l5" id="Sign in">
  <div class="w3-row">
    <div class="w3-col m5">
    <div class="w3-padding-16"><span class="w3-xlarge w3-border-teal w3-bottombar">Sign in</span></div>
            <h3>Already have an account?</h3>
      <p>Sign in here!<p>
    </div>
    <div class="w3-col m7">
      <div class="w3-section">      
        <label><i class="fa fa-envelope-o w3-text-teal w3-xlarge"></i>  Email</label>
        <asp:TextBox ID="txtEmailsignin" runat="server" Width="1288px" Height="27px"></asp:TextBox>
&nbsp;</div>
      <div class="w3-section">      
        <label><i class="fa fa-lock w3-text-teal w3-xlarge"></i>  Password</label>
        <asp:TextBox ID="txtPasswordsignin" runat="server" Width="1288px" Height="27px" TextMode="Password"></asp:TextBox>
&nbsp;</div>  
        
        <asp:Button  class="w3-button w3-right w3-theme" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
    </div>
         </div>
  </div>
    </form>
</body>
</html>

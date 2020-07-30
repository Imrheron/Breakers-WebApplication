﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Videos.aspx.cs" Inherits="WebApplication2.WebForm5" %>

<!DOCTYPE html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    h3{
        font-family:"Arial Black", Gadget, sans-serif;
    }
</style>
<html xmlns="http://www.w3.org/1999/xhtml"
<head runat="server">
    <title></title>
</head>
<body>
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
    <form id="form1" runat="server">
        <div>
            <div class="w3-row-padding w3-padding-64 w3-theme-l1" id="work">

<div class="w3-quarter">
<h2>Learn to play like the breakers!</h2>
<p>Fine tune your basketball skills to become a basketball legend with these easy to learn basketball videos. 
    <br />
    Sign in to save your progress and get recommendations.
    <br />
    <br />
    <br />
</p>
</div>

<div style="margin-bottom: 10px;" class="w3-quarter">
<div class="w3-card w3-white">
  <div class="w3-container">
  <h3>Basketball Rules</h3>
  <iframe width="425" height="270" src="https://www.youtube.com/embed/wYjp2zoqQrs" frameborder="0" allowfullscreen="true"></iframe>
  </div>
  </div>
</div>
<div style="margin-bottom: 10px;" class="w3-quarter">
<div class="w3-card w3-white">
  <div class="w3-container">
        <h3>Beginners Guide to Dribbling</h3>
  <iframe width="425" height="270" src="https://www.youtube.com/embed/Ee0-O0FKDf0" frameborder="0" allowfullscreen="true"></iframe>

  </div>
  </div>
</div>

<div style="margin-bottom: 10px;"class="w3-quarter">
<div class="w3-card w3-white">
  <div class="w3-container">
        <h3>Beginners Guide to Shooting</h3>
  <iframe width="425" height="270" src="https://www.youtube.com/embed/BloEnNbz4qk" frameborder="0" allowfullscreen="true"></iframe>
  </div>
  </div>
</div>
       
                
<div></div>
<div id="div" style="margin-bottom: 10px;" class="w3-quarter">
<div class="w3-card w3-white">
  <div class="w3-container">
  <h3>Beginners tips for Passing</h3>
  <iframe width="425" height="270" src="https://www.youtube.com/embed/PukmYnApL2Y" frameborder="0" allowfullscreen navigateurl="https://www.youtube.com/embed/PukmYnApL2Y"></iframe>
  </div>
  </div>
</div>
           <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Sign up to view more!" style="background-color:white; color:dodgerblue; border: 2px solid dodgerblue;" class="w3-button w3-left"/>     
      
<asp:Label ID="Label1" runat="server" style="margin-bottom: 10px;" Visible="False" class="w3-quarter">                
<div class="w3-card w3-white">
  <div class="w3-container">
  <h3>Beginners tips for Passing</h3>
  <iframe width="425" height="270" src="https://www.youtube.com/embed/PukmYnApL2Y" frameborder="0" allowfullscreen navigateurl="https://www.youtube.com/embed/PukmYnApL2Y"></iframe>
  </div>
  </div>
</asp:Label>             

<asp:Label ID="Label2" runat="server" style="margin-bottom: 10px;" Visible="False" class="w3-quarter">
<div class="w3-card w3-white">
  <div class="w3-container">
  <h3>Beginners tips for Passing</h3>
  <iframe width="425" height="270" src="https://www.youtube.com/embed/PukmYnApL2Y" frameborder="0" allowfullscreen navigateurl="https://www.youtube.com/embed/PukmYnApL2Y"></iframe>
  </div>
</div>
</asp:Label>

<asp:Label ID="Label3" runat="server" style="margin-bottom: 10px;" Visible="False" class="w3-quarter">                
<div class="w3-card w3-white">
  <div class="w3-container">
  <h3>Beginners tips for Passing</h3>
  <iframe width="425" height="270" src="https://www.youtube.com/embed/PukmYnApL2Y" frameborder="0" allowfullscreen navigateurl="https://www.youtube.com/embed/PukmYnApL2Y"></iframe>
  </div>
  </div>
</asp:Label>             

<asp:Label ID="Label4" runat="server" style="margin-bottom: 10px;" Visible="False" class="w3-quarter">
<div class="w3-card w3-white">
  <div class="w3-container">
  <h3>Beginners tips for Passing</h3>
  <iframe width="425" height="270" src="https://www.youtube.com/embed/PukmYnApL2Y" frameborder="0" allowfullscreen navigateurl="https://www.youtube.com/embed/PukmYnApL2Y"></iframe>
  </div>
</div>
</asp:Label>

<asp:Label ID="Label5" runat="server" style="margin-bottom: 10px;" Visible="False" class="w3-quarter">                
<div class="w3-card w3-white">
  <div class="w3-container">
  <h3>Beginners tips for Passing</h3>
  <iframe width="425" height="270" src="https://www.youtube.com/embed/PukmYnApL2Y" frameborder="0" allowfullscreen navigateurl="https://www.youtube.com/embed/PukmYnApL2Y"></iframe>
  </div>
  </div>
</asp:Label>             

<asp:Label ID="Label6" runat="server" style="margin-bottom: 10px;" Visible="False" class="w3-quarter">
<div class="w3-card w3-white">
  <div class="w3-container">
  <h3>Beginners tips for Passing</h3>
  <iframe width="425" height="270" src="https://www.youtube.com/embed/PukmYnApL2Y" frameborder="0" allowfullscreen navigateurl="https://www.youtube.com/embed/PukmYnApL2Y"></iframe>
  </div>
</div>
</asp:Label>

<asp:Label ID="Label7" runat="server" style="margin-bottom: 10px;" Visible="False" class="w3-quarter">                
<div class="w3-card w3-white">
  <div class="w3-container">
  <h3>Beginners tips for Passing</h3>
  <iframe width="425" height="270" src="https://www.youtube.com/embed/PukmYnApL2Y" frameborder="0" allowfullscreen navigateurl="https://www.youtube.com/embed/PukmYnApL2Y"></iframe>
  </div>
  </div>
</asp:Label>             

<asp:Label ID="Label8" runat="server" style="margin-bottom: 10px;" Visible="False" class="w3-quarter">
<div class="w3-card w3-white">
  <div class="w3-container">
  <h3>Beginners tips for Passing</h3>
  <iframe width="425" height="270" src="https://www.youtube.com/embed/PukmYnApL2Y" frameborder="0" allowfullscreen navigateurl="https://www.youtube.com/embed/PukmYnApL2Y"></iframe>
  </div>
</div>
</asp:Label>

<asp:Label ID="Label9" runat="server" style="margin-bottom: 10px;" Visible="False" class="w3-quarter">                
<div class="w3-card w3-white">
  <div class="w3-container">
  <h3>Beginners tips for Passing</h3>
  <iframe width="425" height="270" src="https://www.youtube.com/embed/PukmYnApL2Y" frameborder="0" allowfullscreen navigateurl="https://www.youtube.com/embed/PukmYnApL2Y"></iframe>
  </div>
  </div>
</asp:Label>             

<asp:Label ID="Label10" runat="server" style="margin-bottom: 10px;" Visible="False" class="w3-quarter">
<div class="w3-card w3-white">
  <div class="w3-container">
  <h3>Beginners tips for Passing</h3>
  <iframe width="425" height="270" src="https://www.youtube.com/embed/PukmYnApL2Y" frameborder="0" allowfullscreen navigateurl="https://www.youtube.com/embed/PukmYnApL2Y"></iframe>
  </div>
</div>
</asp:Label>

<asp:Label ID="Label11" runat="server" style="margin-bottom: 10px;" Visible="False" class="w3-quarter">                
<div class="w3-card w3-white">
  <div class="w3-container">
  <h3>Beginners tips for Passing</h3>
  <iframe width="425" height="270" src="https://www.youtube.com/embed/PukmYnApL2Y" frameborder="0" allowfullscreen navigateurl="https://www.youtube.com/embed/PukmYnApL2Y"></iframe>
  </div>
  </div>
</asp:Label>             

<asp:Label ID="Label12" runat="server" style="margin-bottom: 10px;" Visible="False" class="w3-quarter">
<div class="w3-card w3-white">
  <div class="w3-container">
  <h3>Beginners tips for Passing</h3>
  <iframe width="425" height="270" src="https://www.youtube.com/embed/PukmYnApL2Y" frameborder="0" allowfullscreen navigateurl="https://www.youtube.com/embed/PukmYnApL2Y"></iframe>
  </div>
</div>
</asp:Label>


</form>

</body>
</html>

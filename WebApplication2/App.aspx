<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="App.aspx.cs" Inherits="WebApplication2.WebForm3" %>

<!DOCTYPE html>
    <style>
        h6{
            size: xx-small;
        }
    </style>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NZ Breakers tickets</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
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
 <div class="w3-bar w3-theme-d2 w3-left-align" style="border-bottom:solid, 5px; border-bottom-color:dodgerblue;">
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
 </div>
    
        <div class="w3-row-padding w3-center w3-padding-64" id="pricing">
    <h2>Basketball levels</h2>
    <p>Choose your basketball skill level</p><br/>
    <div class="w3-third w3-margin-bottom">
      <ul class="w3-ul w3-border w3-hover-shadow">
        <li class="w3-theme">
          <p class="w3-xlarge">Beginner</p>
        </li>
        <li class="w3-padding-16"><b>Baskeball rules:</b> Learn all the basic basketball rules</li>
        <li class="w3-padding-16"><b>How to dribble:</b> Learn the basics to dribbling</li>
        <li class="w3-padding-16"><b>How to shoot:</b> Learn the basics to shoot</li>
        <li class="w3-padding-16"><b>How to pass:</b> Learn the basics to pass</li>
        <li class="w3-padding-16">
          <h3 class=""><i class=""></i> For beginners to basketball, learn all the necessary basketball skills and learn the necessary rules and regulations</h3>
        </li>
        <li class="w3-theme-l5 w3-padding-24">
          <asp:Button class="w3-button w3-teal w3-padding-large" ID="Button3" runat="server" Text="Sign up" OnClick="Button3_Click" />
        </li>
      </ul>
    </div>

    <div class="w3-third w3-margin-bottom">
      <ul class="w3-ul w3-border w3-hover-shadow">
        <li class="w3-theme-l2">
          <p class="w3-xlarge">intermediate</p>
        </li>
         <li class="w3-padding-16"><b>Baskeball rules:</b> Learn the more advanced basketball rules</li>
        <li class="w3-padding-16"><b>improve dribbling</b> Learn tips and tricks to improve dribbling</li>
        <li class="w3-padding-16"><b>How to shoot:</b> Learn the basics to shoot</li>
        <li class="w3-padding-16"><b>How to pass:</b> Learn the basics to pass</li>
        <li class="w3-padding-16">
          <h3 class=""><i class=""></i> For the intermeditate basketball practice, for those that have a decent understanding of the basketball rules and regulations.</h3>
        </li>
        <li class="w3-theme-l5 w3-padding-24">
          <asp:Button class="w3-button w3-teal w3-padding-large" ID="Button2" runat="server" Text="Sign up" OnClick="Button2_Click" />
        </li>
      </ul>
    </div>

    <div class="w3-third w3-margin-bottom">
      <ul class="w3-ul w3-border w3-hover-shadow">
        <li class="w3-theme">
          <p class="w3-xlarge">Pro</p>
        </li>
        <li class="w3-padding-16"><b>dribbling techniques:</b> Through the Legs Dribble</li>
        <li class="w3-padding-16"><b>Dribbling techniques</b> Behind the Back Dribble</li>
        <li class="w3-padding-16"><b>Dribbling techniques</b> Crossover Dribble</li>
        <li class="w3-padding-16"><b>Endless Support</b> </li>
        <li class="w3-padding-16">
          <h3 class=""><i class=""></i> For the more advance basketball training, only for those that have a good understanding of the basketball rules and regulations</h3>
        </li>
        <li class="w3-theme-l5 w3-padding-24">
            <asp:Button class="w3-button w3-teal w3-padding-large" ID="Button4" runat="server" Text="Sign up" OnClick="Button4_Click" />
        </li>
      </ul>
    </div>
</div>
    </form>
</body>
</html>

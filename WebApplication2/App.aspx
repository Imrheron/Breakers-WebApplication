<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="App.aspx.cs" Inherits="WebApplication2.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NZ Breakers tickets</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
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
  <a href="/WebForm4.aspx" class="w3-bar-item w3-button w3-hide-small ">Team</a>
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
    </div>
    <form id="form1" runat="server">
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
          <h3 class=""><i class=""></i> For all beginners, learn all the necessary basketball skills</h3>
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
          <h3 class=""><i class=""></i> For all beginners, learn all the necessary basketball skills</h3>
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
        <li class="w3-padding-16"><b>50GB</b> Storage</li>
        <li class="w3-padding-16"><b>50</b> Emails</li>
        <li class="w3-padding-16"><b>50</b> Domains</li>
        <li class="w3-padding-16"><b>Endless</b> Support ;)</li>
        <li class="w3-padding-16">
          <h2 class="w3-wide"><i class="fa fa-usd"></i> 50</h2>
          <span class="w3-opacity">per month</span>
        </li>
        <li class="w3-theme-l5 w3-padding-24">
            <asp:Button class="w3-button w3-teal w3-padding-large" ID="Button1" runat="server" Text="Sign up" OnClick="Button1_Click" />
        </li>
      </ul>
    </div>
</div>
    </form>
</body>
</html>

-<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<title>NZ Breakers</title>
    <style>
.container {
  position: relative;
  text-align: center;
  color: white;
}

/* Bottom left text */
.bottom-left {
  position: absolute;
  bottom: 8px;
  left: 16px;
}

/* Top left text */
.top-left {
  position: absolute;
  top: 8px;
  left: 16px;
}

/* Top right text */
.top-right {
  position: absolute;
  top: 8px;
  right: 16px;
}

/* Bottom right text */
.bottom-right {
  position: absolute;
  bottom: 8px;
  right: 16px;
}

/* Centered text */
.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
#example1 {                 
  border: 2px solid black;
  padding: 25px;
  background: url(Images/Crowd_shot.jpg);
  background-repeat: no-repeat;
  background-size: 100% 700px;
}
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> <!-- bootstraps to make my life easier -->
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<html>
<body id="myPage">

    <form id="form1" runat="server">

<!-- Navbar -->
<div class="w3-top">
 <div class="w3-bar w3-theme-d2 w3-left-align" style="border-bottom:solid, 5px; border-bottom-color:dodgerblue;">
  <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-theme-d2" href="javascript:void(0);" onclick="openNav()"><i class="fa fa-bars"></i></a>
  <a href="/Homepage.aspx" class="w3-bar-item w3-button w3-black"><i class="fa fa-home w3-margin-right"></i>Home</a>
  <a href="/Team.aspx" class="w3-bar-item w3-button w3-hide-small ">Team</a>
  <a href="/Videos.aspx" class="w3-bar-item w3-button w3-hide-small w3-hover-#00a3cc">Videos</a>
  <a href="/Merch.aspx" class="w3-bar-item w3-button w3-hide-small w3-hover-#00a3cc">Merch</a>
     <asp:HyperLink ID="HyperLink1" href="/Sign in" runat="server" class="w3-bar-item w3-button w3-hide-small w3-hover-#00a3cc">Sign in</asp:HyperLink>
  
    <asp:Button runat="server" class="w3-bar-item w3-right w3-dropdown-hover w3-button" title="Notifications" Text="profile" OnClick="buttonprofile_Click" ID="buttonprofile" Visible="False" />     
    
        <asp:Button ID="Button1" class="w3-bar-item w3-right w3-dropdown-hover w3-button" runat="server" Text="Sign out" OnClick="Signout_click" />
      <asp:Button ID="Practice" class="w3-bar-item w3-right w3-button" runat="server" Text="Use the App!" OnClick="Practice_Click" Visible="False" />
    </div>
 </div>


<!-- Image Header -->
<div id="example1" class="w3-display-container w3-animate-opacity">
  <img src="Images/Breakers Logo White.png" alt="Breakers Logo" style="width:1236px; height:468px; display:block; margin-left:auto; margin-right:auto; margin-top:auto;">
  <div class="w3-container w3-display-bottomcenter w3-margin-bottom">  
        
  </div>
</div>

<!-- video snippet -->
          <div class="w3-quarter">
<div class="w3-card w3-white">
  <div class="w3-container">
  <h3>Basketball Rules</h3>
  <iframe width="425" height="270" src="https://www.youtube.com/embed/wYjp2zoqQrs" frameborder="0" allowfullscreen></iframe>
  </div>
  </div>
</div>

<div class="w3-quarter">
<div class="w3-card w3-white">
  <div class="w3-container">
        <h3>Beginners Guide to Dribbling</h3>
  <iframe width="425" height="270" src="https://www.youtube.com/embed/Ee0-O0FKDf0" frameborder="0" allowfullscreen></iframe>

  </div>
  </div>
</div>

<div class="w3-quarter">
<div class="w3-card w3-white">
  <div class="w3-container">
        <h3>Beginners Guide to Shooting</h3>
  <iframe width="425" height="270" src="https://www.youtube.com/embed/BloEnNbz4qk" frameborder="0" allowfullscreen></iframe>
  </div>
  </div>
</div>

<div class="w3-quarter">
<div class="w3-card w3-white">
  <div class="w3-container">
  <h3>Beginners tips for Passing</h3>
  <iframe width="425" height="270" src="https://www.youtube.com/embed/PukmYnApL2Y" frameborder="0" allowfullscreen></iframe>
  </div>
  </div>
</div>
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="View More!" style="background-color:white; color:dodgerblue; border: 2px solid dodgerblue;" class="w3-button w3-right"/>

<!-- Sign in Container -->
<div class="w3-container w3-padding-64 w3-theme-l5" id="contact">
  <div class="w3-row">
    <div class="w3-col m5">
    <div class="w3-padding-16"><span class="w3-xlarge w3-border-teal w3-bottombar">Sign Up!</span></div>
      <h3>Stay up to date</h3>
      <p>Sign up to stay up to date with all the latest routines and Breakers updates.</p>
    </div>
    <div class="w3-col m7">
      <div class="w3-section">      
        <label><i class="fa fa-user-o w3-text-teal w3-xlarge"></i>  Name</label>
        <asp:TextBox ID="txtUsername" runat="server" Width="1100px" Height="27px"></asp:TextBox>
&nbsp;</div>
      <div class="w3-section">      
        <label><i class="fa-envelope-o  fa w3-text-teal w3-xlarge"></i>  Email</label>
        <asp:TextBox ID="txtEmail" runat="server" Width="1100px" Height="27px" TextMode="Email"></asp:TextBox>

&nbsp;</div>
      <div class="w3-section">      
        <label><i class="fa fa-lock w3-text-teal w3-xlarge"></i>  Password</label>
        <asp:TextBox ID="txtPassword" runat="server" Width="1100px" Height="27px" TextMode="Password"></asp:TextBox>
&nbsp;</div>  
        <asp:Label ID="Someonedidntinputalltheirvalues" runat="server" Text=""></asp:Label>
        <asp:Button ID="AddUser" class="w3-right w3-button w3-theme" runat="server" Text="Sign Up!" OnClick="AddUser_Click" />
    </div>


  </div>
</div>

<!-- Open App -->
<div class="w3-row-padding w3-center w3-padding-64" id="app">
    <div class="w3-padding-16"><span class="w3-xlarge w3-border-teal w3-bottombar">Learn to play basketball from our app!</span></div>
      <h3>Get all the best training and fitness tips with our app</h3>
      <p>Our app gives you the opportunity to train and keep fit just like one of the breakers! just follow the guide to perfect your chosen skill!</p>
    <h6>*note must have an existing account to access the app</h6>
        <asp:Button ID="Openapp" class="w3-button w3-theme" runat="server" Text="Get the app!" OnClick="Openapp_click" />
    </div>
          
<!-- Footer -->
<footer class="w3-container w3-padding-32 w3-theme-d1 w3-center">
    
  <h4>Follow Us</h4>
  <a class="w3-button w3-large w3-teal" href="https://www.facebook.com/nzbreakers/" title="NZ Breakers Facebook page "><i class="fa fa-facebook"></i></a>
  <a class="w3-button w3-large w3-teal" href="https://twitter.com/NZBreakers" title="NZ Breakers Twitter page"><i class="fa fa-twitter"></i></a>
  <a class="w3-button w3-large w3-teal" href="https://www.instagram.com/breakersnz/" title="NZ Breakers Instagram page"><i class="fa fa-instagram"></i></a>
  <a class="w3-button w3-large w3-teal w3-hide-small" href="https://www.youtube.com/user/BreakersNZ" title="NZ BReakers youtube page"><i class="fa fa-youtube"></i></a>
    
  <p>Made by Gerran</p>

  <div style="position:relative;bottom:100px;z-index:1;" class="w3-tooltip w3-right">
    <span class="w3-text w3-padding w3-teal w3-hide-small">Go To Top</span>   
    <a class="w3-button w3-theme" href="#myPage"><span class="w3-xlarge">
    <i class="fa fa-chevron-circle-up"></i></span></a>
  </div>
</footer>

<script>
    // Script for side navigation
    function w3_open() {
        var x = document.getElementById("mySidebar");
        x.style.width = "300px";
        x.style.paddingTop = "10%";
        x.style.display = "block";
    }

    // Close side navigation
    function w3_close() {
        document.getElementById("mySidebar").style.display = "none";
    }

    // Used to toggle the menu on smaller screens when clicking on the menu button
    function openNav() {
        var x = document.getElementById("navDemo");
        if (x.className.indexOf("w3-show") == -1) {
            x.className += " w3-show";
        } else {
            x.className = x.className.replace(" w3-show", "");
        }
    }

</script>

    </form>

</body>
</html>


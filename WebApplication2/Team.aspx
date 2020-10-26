<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Team.aspx.cs" Inherits="WebApplication2.WebForm4" %>

<!DOCTYPE html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.container {
  position: relative;
  width: 100%;
}

.image {
  display: block;
  width: 100%;
  height: auto;
}

.overlay {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  height: 100%;
  width: 100%;
  opacity: 0;
 /* transition: .5s ease; */
  /*background-color: #008CBA;*/
}

.container .overlay {
  opacity: 1;
}

.first {
  color: white;
  font-size: 30px;
  position: absolute;
  top: 10%;
  left: 17%;
  -webkit-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  text-align: left;
  font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    
}
.last {
  color: white;
  font-size: 30px;
  position: absolute;
  top: 20%;
  left: 17%;
  -webkit-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  text-align: left;
  font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif
}
</style>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<body style="background-color:black;">
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
 <form id="form1" runat="server">

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
        <div>
        </div>
    
    <div class="w3-container w3-padding-64 w3-center" id="team">
<h2>OUR TEAM</h2>
<p>Meet the team - our office rats:</p>

<div class="w3-row"><br>

<div class="w3-third">
  <div class="container">
  <img src="Images\Player Images\BREAKERS_01_TomAbercrombie_1267.png" alt="Tom Abercrombie" class="image" style="width:80%; height: 550px;border:groove 2px cornflowerblue;">
     <div class="overlay">
    <div class="first">Tom </div>
         <div class="last">Abercrombie </div>

  </div>

</div>
</div>

<div class="w3-third">
  <div class="container">
  <img src="Images\Player Images\BREAKERS_02_CoreyWebster_2813.png" alt="Corey Webster" style="width:80%; height: 550px;border:groove 2px cornflowerblue;">
<h2 style="color:black;font-size:xx-large;border:2px solid cornflowerblue;">Corey Webster</h2>
</div>
</div>

<div class="w3-third">
  <div class="container">
  <img src="Images\Player Images\BREAKERS_03_FinnDelany_3065.png" alt="Finn Delany" style="width:80%; height: 550px;border:groove 2px black;">
<h2 style="color:black;font-size:xx-large;border:2px solid cornflowerblue;">Finn Delany</h2>
</div>
</div>

<div class="w3-third">
  <div class="container">
  <img src="Images\Player Images\BREAKERS_04_TomVodanovich_5271.png" alt="Tom Vodanovich" style="width:80%; height: 550px;border:groove 2px black;">
<h2 style="color:black;font-size:xx-large;border:2px solid cornflowerblue;">Tom Vodanovich</h2>
</div>
</div>

    <div class="w3-third">
  <div class="container">
  <img src="Images\Player Images\BREAKERS_05_JordanNgatai_6592.png" alt="Jordan Ngatai" style="width:80%; height: 550px;border:groove 2px black;">
<h2 style="color:black;font-size:xx-large;border:2px solid cornflowerblue;">Jordan Ngatai</h2>
</div>
</div>

    <div class="w3-third">
  <div class="container">
  <img src="C:\Users\ac94093\source\repos\WebApplication2\WebApplication2\Images\Player Images\BREAKERS_06_RobLoe_7860.png" alt="Rob Loe" style="width:80%; height: 550px;border:groove 2px black;">
<h2 style="color:black;font-size:xx-large;border:2px solid cornflowerblue;">Rob Loe</h2>
</div>
</div>


</div>
</div>
    </form>
</body>
</html>

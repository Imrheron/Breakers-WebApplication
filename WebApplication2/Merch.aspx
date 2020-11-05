<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Merch.aspx.cs" Inherits="WebApplication2.WebForm6" %>

<!DOCTYPE html>
    <form id="form1" runat="server">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Merchandise</title>
    <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>


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

 <div class="w3-quarter">
<div class="w3-card w3-white">
  <div class="w3-container">
  <h3>Breakers Hoodie</h3>
      <a href="https://shop.nzbreakers.basketball/collections/clearance/products/weeks-97-2019-20-nz-breakers-official-player-singlet">
  <img width="610" height="675" style="padding-right:70px;" src="https://cdn.shopify.com/s/files/1/2198/1987/products/weeks_b_540x.jpg?v=1583981061"/>
          </a>
      <h2 style="color:black;font-size:xx-large;">NZ Breakers basketball official #97 player singlet 2019/20</h2>
  </div>
  </div>
</div>
                 <div class="w3-quarter">
<div class="w3-card w3-white">
  <div class="w3-container">
  <h3>Basketball Rules</h3>
  <a href="https://shop.nzbreakers.basketball/collections/clearance/products/2019-20-nz-breakers-official-player-singlets">
  <img width="610" height="675" style="padding-right:70px;" src="https://cdn.shopify.com/s/files/1/2198/1987/products/sky_f_540x.jpg?v=1583977710"/>
          </a>
      <h2 style="color:black;font-size:xx-large;">2019/20 NZ Breakers Official Player Jersey</h2>
  </div>
  </div>
</div>

    <div class="w3-quarter">
<div class="w3-card w3-white">
  <div class="w3-container">
  <h3>Basketball Rules</h3>
      <a href="https://shop.nzbreakers.basketball/collections/clearance/products/2019-20-nz-breakers-official-player-singlets">
  <img width="610" height="675" style="padding-right:70px;" src="https://cdn.shopify.com/s/files/1/2198/1987/products/sky_f_540x.jpg?v=1583977710"/>
          </a>
      <h2 style="color:black;font-size:xx-large;">2019/20 NZ Breakers Official Player Jersey</h2>
  </div>
  </div>
</div>

    <div class="w3-quarter">
<div class="w3-card w3-white">
  <div class="w3-container">
  <h3>Basketball Rules</h3>
  <a href="https://shop.nzbreakers.basketball/collections/clearance/products/2019-20-nz-breakers-official-player-singlets">
  <img width="610" height="675" style="padding-right:70px;" src="https://cdn.shopify.com/s/files/1/2198/1987/products/sky_f_540x.jpg?v=1583977710"/>
          </a>
      <h2 style="color:black;font-size:xx-large;">2019/20 NZ Breakers Official Player Jersey</h2>
  </div>
  </div>
</div>


    
</body>
</html>
        </form>

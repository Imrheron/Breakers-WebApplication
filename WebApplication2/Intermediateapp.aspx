<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Intermediateapp.aspx.cs" Inherits="WebApplication2.Intermediateapp" %>
<!DOCTYPE html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    h3 {
        font-family: "Arial Black", Gadget, sans-serif;
    }
    formatlabel{
        
    }
</style>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <nav class="w3-sidebar w3-bar-block w3-white w3-card w3-animate-left w3-xxlarge" style="display: none; z-index: 2" id="mySidebar">
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
            <a href="/Merch.aspx" class="w3-bar-item w3-button w3-hide-small w3-hover-#00a3cc">Tickets</a>
            <asp:HyperLink ID="HyperLink1" href="/Sign in" runat="server" class="w3-bar-item w3-button w3-hide-small w3-hover-#00a3cc">Sign in</asp:HyperLink>

            <asp:Label runat="server" ID="profile" class="w3-right w3-dropdown-hover w3-hide-small" Visible="false">
    <button class="w3-button" title="Notifications">Profile <i class=" fa fa-caret-down"></i></button>     
    <div class="w3-dropdown-content w3-card-4 w3-bar-block">
      <a href="#" class="w3-bar-item w3-button">Link</a>
      <a href="#" class="w3-bar-item w3-button">Link</a>
      <a href="#" class="w3-bar-item w3-button">Link</a>
    </div>
            </asp:Label>

            <a href="#" class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-teal" title="Search"><i class="fa fa-search"></i></a>
        </div>
    </div>
    <form id="form1" runat="server">

        <div class="w3-row-padding w3-padding-64 w3-theme-l1" id="work">

            <asp:Label ID="Label2" class="w3-quarter" runat="server" Visible="true" Text="">
<h2>Learn to play like the breakers!</h2>
<p>Fine tune your basketball skills to become a basketball legend with these easy to learn basketball tips and tricks!. 
    <br />
    <br />
    <br />
    <br />
</p>
            </asp:Label>

            <asp:Button ID="Start" runat="server" OnClick="Button1_click" Text="lets start!" Style="background-color: white; color: dodgerblue; border: 2px solid dodgerblue;" class="w3-button w3-left" />
            <asp:Label ID="Points" class="w3-half" runat="server" Visible="false" Text="Points:" Font-Size="X-Large"></asp:Label>
            <asp:Label ID="Format" Class="w3-half" runat="server" Visible="false" Text="Test" ForeColor="#333333" Font-Size="X-Large"></asp:Label>
            <asp:Label ID="Label1" class="w3-quarter" runat="server" Visible="false" Text="">
<h2>First stretches</h2>
<p>start by doing lunges, spend at least 10 seconds on one leg, then swap to the other leg.</p>
            </asp:Label> 

            <asp:Image class="w3-quarter" ID="Image1" ImageUrl="~/Images/lunge clipart.jpg" Visible="false" runat="server" Height="370px" Width="425px" />

            <asp:Label ID="Label3" class="w3-quarter" runat="server" Visible="false" Text="">
<p>Then move on to a quad stretch, while standing, make sure to keep your back straight, and hold each leg for at least 10 seconds.</p>
            </asp:Label>

            <asp:Image class="w3-quarter" ID="Image2" ImageUrl="~/Images/Quad stretch.jpg" Visible="false" runat="server" Height="370px" Width="455px" />

            <asp:Button ID="Button2" runat="server" OnClick="Button2_click" Text="Next" Style="background-color: white; color: dodgerblue; border: 2px solid dodgerblue;" class="w3-button w3-right" Visible="false" />

            <asp:Label ID="Label4" class="w3-quarter" runat="server" Visible="false" Text="">
<p>Now start jogging, either on the spot, or around the room. <br />Do this for a minute.</p>
            </asp:Label>

            <asp:Image class="w3-quarter" ID="Image3" ImageUrl="~/Images/Jogging silhouette 2.png" Visible="false" runat="server" Height="370px" Width="425px" />

            <asp:Label ID="Label5" class="w3-quarter" runat="server" Visible="false" Text="">
<p>Watch this video to get a better understanding of the basketball rules <br />Or click next if you already understand</p>
            </asp:Label>

            <asp:Label ID="Label6" runat="server" Style="width: 455px; height: 340px;" Visible="false" class="w3-quarter">
<div class="w3-card w3-white">
  <div class="w3-container">
  <h3>Top 3 basketball crossovers</h3>
  <iframe width="410" height="270" src="https://www.youtube.com/embed/IUYELufJ1AM" frameborder="0" allowfullscreen="true" ></iframe>
  </div>
</div>
            </asp:Label>

            <asp:Label ID="Label7" runat="server" Visible="false" class="w3-third">
<div class="w3-card w3-white">
  <div class="w3-container">
  <h3 class="w3-center">Beginners tips for Passing</h3>
  <iframe width="580" height="345" src="https://www.youtube.com/embed/PukmYnApL2Y" frameborder="0" allowfullscreen="true" ></iframe>
  </div>
</div>
            </asp:Label>
            <asp:Label ID="Label8" runat="server" Visible="false" class="w3-third">
<div class="w3-card w3-white">
  <div class="w3-container">
  <h3 class="w3-center">Beginners tips for Passing</h3>
  <iframe width="580" height="345" src="https://www.youtube.com/embed/PukmYnApL2Y" frameborder="0" allowfullscreen="true" ></iframe>
  </div>
</div>
            </asp:Label>
            <asp:Label ID="Label9" runat="server" Visible="false" class="w3-third">
<div class="w3-card w3-white">
  <div class="w3-container">
  <h3 class="w3-center">Beginners tips for Passing</h3>
  <iframe width="580" height="345" src="https://www.youtube.com/embed/PukmYnApL2Y" frameborder="0" allowfullscreen="true" ></iframe>
  </div>
</div>
            </asp:Label>
    </form>

</body>
</html>

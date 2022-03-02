<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>Electronics</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
.w3-bar-block .w3-bar-item {padding:20px}
</style>
<body>

<!-- Sidebar (hidden by default) -->
<nav class="w3-sidebar w3-bar-block w3-card w3-top w3-xlarge w3-animate-left" style="display:none;z-index:2;width:40%;min-width:300px" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()"
  class="w3-bar-item w3-button">Close Menu</a>
  <a href="tools.jsp" onclick="w3_close()" class="w3-bar-item w3-button">Electronics</a>
<a href="Security.jsp" onclick="w3_close()" class="w3-bar-item w3-button">Security</a>  
  <a href="loginsuccess.html" onclick="w3_close()" class="w3-bar-item w3-button">Back</a>
</nav>

<!-- Top menu -->
<div class="w3-top">
  <div class="w3-white w3-xlarge" style="max-width:1200px;margin:auto">
    <div class="w3-button w3-padding-16 w3-left" onclick="w3_open()">☰</div>
    
    <div class="w3-center w3-padding-16">My Electronics</div>
  </div>
</div>
  
<!-- !PAGE CONTENT! -->
<div class="w3-main w3-content w3-padding" style="max-width:1200px;margin-top:100px">

  <!-- First Photo Grid-->
  <div class="w3-row-padding w3-padding-16 w3-center" id="food">
    <div class="w3-quarter">
      <img src="https://images.unsplash.com/photo-1581092162384-8987c1d64718?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=thisisengineering-raeng-Bg0Geue-cY8-unsplash.jpg" alt="Sandwich" style="width:100%">
      <h3>Tab's</h3>
      
    </div>
    <div class="w3-quarter">
      <img src="https://images.unsplash.com/photo-1606340670695-ec5b4f47f521?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=sigmund-uS_MT4wUXf0-unsplash.jpg" alt="Steak" style="width:100%">
      <h3>Water System</h3>
      
    </div>
    <div class="w3-quarter">
      <img src="https://images.unsplash.com/photo-1532788411214-25d48ce9275a?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=amy-elting-OopPIi_A428-unsplash.jpg" alt="Cherries" style="width:100%">
      <h3>electric polls</h3>
      
    </div>
    <div class="w3-quarter">
      <img src="https://images.unsplash.com/photo-1603031751711-3f5a1afa0471?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=daniel-bernard-s67PZz8Xt3c-unsplash.jpg" alt="Pasta and Wine" style="width:100%">
      <h3>Fence</h3>
      
    </div>
  </div>
  
  <!-- Second Photo Grid-->
  <div class="w3-row-padding w3-padding-16 w3-center">
    <div class="w3-quarter">
      <img src="https://images.unsplash.com/photo-1635335874521-7987db781153?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=mostafa-mahmoudi-47jO5Y8nsYo-unsplash.jpg" alt="Popsicle" style="width:100%">
      <h3>Fuse</h3>
      
    </div>
    <div class="w3-quarter">
      <img src="https://images.unsplash.com/photo-1601460822853-a44cf92b162b?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=ilya-ilford-e72RC4v3Qgk-unsplash.jpg" alt="Salmon" style="width:100%">
      <h3>Bicycle</h3>
      
    </div>
    <div class="w3-quarter">
      <img src="https://images.unsplash.com/photo-1458007683879-47560d7e33c3?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=thomas-kelley-xVptEZzgVfo-unsplash.jpg" alt="Sandwich" style="width:100%">
      <h3>Meter's</h3>
      
    </div>
    <div class="w3-quarter">
      <img src="https://images.unsplash.com/photo-1625276254563-f0fbbf66a5e7?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=ryutaro-uozumi-9vQG6v1md1s-unsplash.jpg" alt="Croissant" style="width:100%">
      <h3>Wire's</h3>
      
    </div>
  </div>

  <!-- Pagination -->
  <div class="w3-center w3-padding-32">
    <div class="w3-bar">
      <a href="tools.jsp" class="w3-bar-item w3-button w3-hover-black">«</a>
      <a href="electronics.jsp" class="w3-bar-item w3-black w3-button">1</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">2</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">3</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">4</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">»</a>
    </div>
  </div>
  
  

<!-- End page content -->
</div>

<script>
// Script to open and close sidebar
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
}
 
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
}
</script>

</body>
</html>
    
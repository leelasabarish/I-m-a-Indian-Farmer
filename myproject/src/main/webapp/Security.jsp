<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>Security</title>
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
  <a href="tools.jsp" onclick="w3_close()" class="w3-bar-item w3-button">Tools</a>
  <a href="electronics.jsp" onclick="w3_close()" class="w3-bar-item w3-button">Electronics</a>
  <a href="Security.jsp" onclick="w3_close()" class="w3-bar-item w3-button">Security</a>
  <a href="loginsuccess.html" onclick="w3_close()" class="w3-bar-item w3-button">Back</a>
</nav>

<!-- Top menu -->
<div class="w3-top">
  <div class="w3-white w3-xlarge" style="max-width:1200px;margin:auto">
    <div class="w3-button w3-padding-16 w3-left" onclick="w3_open()">☰</div>
    
    <div class="w3-center w3-padding-16">Security</div>
  </div>
</div>
  
<!-- !PAGE CONTENT! -->
<div class="w3-main w3-content w3-padding" style="max-width:1200px;margin-top:100px">

  <!-- First Photo Grid-->
  <div class="w3-row-padding w3-padding-16 w3-center" id="food">
    <div class="w3-quarter">
      <img src="https://images.unsplash.com/photo-1496368077930-c1e31b4e5b44?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=scott-webb-yekGLpc3vro-unsplash.jpg" alt="Sandwich" style="width:100%">
      <h3>CC Cams</h3>
      
    </div>
    <div class="w3-quarter">
      <img src="https://images.unsplash.com/photo-1582139329536-e7284fece509?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=jason-dent-3wPJxh-piRw-unsplash.jpg" alt="Steak" style="width:100%">
      <h3>Safe's</h3>
      
    </div>
    <div class="w3-quarter">
      <img src="https://images.unsplash.com/photo-1614064745560-e556fef374b0?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=fly-d-4Tu-sIOXeA0-unsplash.jpg" alt="Cherries" style="width:100%">
      <h3>Locks</h3>
      
    </div>
    <div class="w3-quarter">
      <img src="https://images.unsplash.com/photo-1577784933312-84961dbe18fd?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=possessed-photography-NwpSBZMhc-M-unsplash.jpg" alt="Pasta and Wine" style="width:100%">
      <h3>Chains</h3>
      
    </div>
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
    
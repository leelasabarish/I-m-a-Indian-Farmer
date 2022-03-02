<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<title>tools</title>
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
.w3-bar-block .w3-bar-item {padding:20px}
</style>
</head>
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
<%
try{
	Connection con = null;
	Class.forName("com.mysql.cj.jdbc.Driver");
	  System.out.println("Driver Class Loaded");
	  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp","root","190030757");
   Statement st = con.createStatement();
   String sql ="select * from project";
   ResultSet resultset =st.executeQuery(sql);
   

%>
<div class="w3-top">
  <div class="w3-white w3-xlarge" style="max-width:1200px;margin:auto">
    <div class="w3-button w3-padding-16 w3-left" onclick="w3_open()">☰</div>
    
    <div class="w3-center w3-padding-16">My Tools</div>
  </div>
</div>

<div class ='home'>

<%while (resultset.next()){ %>
<div class="w3-main w3-content w3-padding" style="max-width:1200px;margin-top:100px">



  <!-- First Photo Grid-->
  <div class="w3-row-padding w3-padding-16 w3-center" id="food">
    <div class="w3-quarter">
      <img src="https://images.unsplash.com/photo-1614977645540-7abd88ba8e56?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=julia-koblitz-SPzzE4TYxZ0-unsplash.jpg" alt="Sandwich" style="width:100%">
      <h3>Name:</h3><%= resultset.getString(1) %>
      <h3>Price:</h3><%=resultset.getString(2) %>
      <a href="AddToCart.jsp?name=<%=resultset.getString(1) %>">Add to cart</a>
      
    </div>
    <div class="w3-quarter">
      <img src="https://images.unsplash.com/photo-1598715559054-bd95409cc2a2?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=timothy-eberly-5JF5Bur-xfg-unsplash.jpg" alt="Steak" style="width:100%">
      <h3>Name:</h3><%= resultset.getString(1) %>
      <h3>Price:</h3><%=resultset.getString(2) %>
      <a href="AddToCart.jsp?name=<%=resultset.getString(1) %>">Add to cart</a>
      </div>
    <div class="w3-quarter">
      <img src="https://images.unsplash.com/photo-1635947160528-79e4027467f9?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=mirko-fabian-YoWVd6bTJaA-unsplash.jpg" alt="Cherries" style="width:100%">
      <h3>Name:</h3><%= resultset.getString(1) %>
      <h3>Price:</h3><%=resultset.getString(2) %>
      <a href="AddToCart.jsp?name=<%=resultset.getString(1) %>">Add to cart</a>
       </div>
    <div class="w3-quarter">
      <img src="https://images.unsplash.com/photo-1604080072035-62c13170e5dd?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=jo-anne-mcarthur-ttmzLDS3wkU-unsplash.jpg" alt="Pasta and Wine" style="width:100%">
      <h3>Name:</h3><%= resultset.getString(1) %>
      <h3>Price:</h3><%=resultset.getString(2) %>
      <a href="AddToCart.jsp?name=<%=resultset.getString(1) %>">Add to cart</a>
      </div>
  </div>
  
  <!-- Second Photo Grid-->
  <div class="w3-row-padding w3-padding-16 w3-center">
    <div class="w3-quarter">
      <img src="https://images.unsplash.com/photo-1631389851191-2e3ad60220b1?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=jude-mack-EW5yZbioFZY-unsplash.jpg" alt="Popsicle" style="width:100%">
      h3>Name:</h3><%= resultset.getString(1) %>
      <h3>Price:</h3><%=resultset.getString(2) %>
      <a href="AddToCart.jsp?name=<%=resultset.getString(1) %>">Add to cart</a>
      
    </div>
    <div class="w3-quarter">
      <img src="https://images.unsplash.com/photo-1627232826792-c5e753b1e985?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=maxim-zhavoronko-nu8rym-lx6M-unsplash.jpg" alt="Salmon" style="width:100%">
      h3>Name:</h3><%= resultset.getString(1) %>
      <h3>Price:</h3><%=resultset.getString(2) %>
      <a href="AddToCart.jsp?name=<%=resultset.getString(1) %>">Add to cart</a>
      
    </div>
    <div class="w3-quarter">
      <img src="https://images.unsplash.com/photo-1508096103415-2cda61a74118?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=pedro-kummel-ryGu_SPR1rs-unsplash.jpg" alt="Sandwich" style="width:100%">
      h3>Name:</h3><%= resultset.getString(1) %>
      <h3>Price:</h3><%=resultset.getString(2) %>
      <a href="AddToCart.jsp?name=<%=resultset.getString(1) %>">Add to cart</a>
      
    </div>
    <div class="w3-quarter">
      <img src="https://images.unsplash.com/photo-1615018997980-610ffc167e1b?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=marius-karotkis-K7zrVuKWMhw-unsplash.jpg" alt="Croissant" style="width:100%">
      h3>Name:</h3><%= resultset.getString(1) %>
      <h3>Price:</h3><%=resultset.getString(2) %>
      <a href="AddToCart.jsp?name=<%=resultset.getString(1) %>">Add to cart</a>
      
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



<%} %>
<%
}catch(ClassNotFoundException e){
	e.printStackTrace();
}catch(SQLException e){
	e.printStackTrace();
}
%>

</body>	
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart page</title>
</head>
<body>
<h2> cart page</h2>
<%
try{
	Connection con = null;
	Class.forName("com.mysql.cj.jdbc.Driver");
	  System.out.println("Driver Class Loaded");
	  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp","root","190030757");
	  String name = request.getParameter("name"); 
   Statement st = con.createStatement();
   String sql ="select * from project where name =?";
   PreparedStatement pst = con.prepareStatement(sql);
   pst.setString(1, name);
   ResultSet resultset =pst.executeQuery();
   %>
   <table border="1">
   <tr>
   <th>Name</th>
   <th>price</th>
   <%while (resultset.next()){ %>
   <tr>
   <td><%=resultset.getString(1) %></td>
   <td><%=resultset.getString(2) %></td>
   <td><input type ="number" value ="1" min="1"></td>
   
   </tr>
   </table>
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
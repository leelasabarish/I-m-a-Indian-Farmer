<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>skill</title>
</head>
<body>
<table border="1">
<tr>
<td>Name</td>
<td>price</td>
</tr>
<%
Connection con = null;
	Class.forName("com.mysql.cj.jdbc.Driver");
 System.out.println("Driver Class Loaded");
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp","root","190030757");
System.out.println(con);
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from project");
while(rs.next()){
%>
<tr>
<td><%=rs.getString("name") %></td>
<td><%=rs.getString("price") %></td>
</tr>
<%} %>
</table>
</body>
</html>
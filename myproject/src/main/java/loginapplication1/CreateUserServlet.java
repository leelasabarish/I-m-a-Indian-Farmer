package loginapplication1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
* Servlet implementation class CreateUserServlet
*/
@WebServlet("/CreateUserServlet")
public class CreateUserServlet extends HttpServlet
{
private static final long serialVersionUID = 1L;

/**
* @see HttpServlet#HttpServlet()
*/
public CreateUserServlet()
{
super();
// TODO Auto-generated constructor stub
}

/**
* @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
*/
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
{
// TODO Auto-generated method stub
response.getWriter().append("Served at: ").append(request.getContextPath());
}

/**
* @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
*/
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
{
// TODO Auto-generated method stub
String un=request.getParameter("username");
String em=request.getParameter("email");
String gen=request.getParameter("gender");
String ph=request.getParameter("phone");
String pa=request.getParameter("pass");
//verify in database

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp","root","190030757");
String sql="insert into userlogin1 values(?,?,?,?,?) ";
PreparedStatement pstmt=((java.sql.Connection) con).prepareStatement(sql);
pstmt.setString(1, un);
pstmt.setString(2, em);
pstmt.setString(3, gen);
pstmt.setString(4, ph);
pstmt.setString(5, pa);
int count=pstmt.executeUpdate();



if(count>0)
{
//successful creation
RequestDispatcher d=request.getRequestDispatcher("createsuccess.html");
d.forward(request, response);
}
else
{
//creation failed
RequestDispatcher d=request.getRequestDispatcher("createfail.html");
d.forward(request, response);
}


}
catch(ClassNotFoundException e)
{
e.printStackTrace();
}
catch(SQLException e)
{
e.printStackTrace();
}

}

}
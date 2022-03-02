package loginapplication1;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			String uname = request.getParameter("uname");    
		    String pass = request.getParameter("pass");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp\",\"root\",\"190030757");
			System.out.println("Connected to Admin database");
			 Statement st = con.createStatement();
			 
			 String sql = "select * from admin where username = ? and pass = ?";
			 PreparedStatement pst = con.prepareStatement(sql);
			   
			    pst.setString(1, uname);
			    pst.setString(2, pass);
			    ResultSet resultSet = pst.executeQuery();
			    if(resultSet.next()) {
			    	HttpSession  session = request.getSession(true);
			    	session.setAttribute("un", uname);
					session.setAttribute("pw", pass);
			    	RequestDispatcher rd = request.getRequestDispatcher("lginadminsuccess.html");
			    	rd.forward(request, response);
			    }else {
			    	RequestDispatcher rd = request.getRequestDispatcher("loginfail.html");
			    	rd.forward(request, response);
			    }
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
}

private PreparedStatement prepareStatement(String string) {
	// TODO Auto-generated method stub
	return null;
}

}
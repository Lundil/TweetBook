import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/servlet/AppelAjax")
public class AppelAjax extends HttpServlet {
  	public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{ 

	    Connection c = null;

	    try{
	    	PrintWriter out = res.getWriter();
			Class.forName("org.postgresql.Driver");
			c = DriverManager.getConnection("jdbc:postgresql://psqlserv/da2i", "lamarqux", "moi");
			Statement st = c.createStatement();
			ResultSet rs =st.executeQuery("select COUNT(*) AS nb from personne");
			rs.next();
			String nbLine = rs.getString("nb");

			out.println("<html><head><title>AppelAjax</title></head><body><center>");
			out.println("Il y a actuellement " + nbLine + " enregistrements dans la table personne");
			out.println("</center></body></html>");

		} catch(SQLException e){
	      e.printStackTrace();
	    } catch(ClassNotFoundException e){
	      e.printStackTrace();
	    } finally{
			try{
	        	c.close();
	      	} catch (SQLException e) {
	        	e.printStackTrace();
	      	}
	    }
  	}
}
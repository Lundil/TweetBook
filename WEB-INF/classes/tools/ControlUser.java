package tools;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

/**	servlet gérant l'authentification ou l'inscription d'un utilisateur */

@WebServlet("/tools/ControlUser")
public class ControlUser extends HttpServlet{
	public void service( HttpServletRequest request, HttpServletResponse response){
		try{
			

			Model list = new Model();
			list.initialize();
			String login = (String) request.getAttribute("login");
			String password = (String) request.getAttribute("password");
			if(request.getAttribute("new") == null)
				list.execute(login, password);
			else{
				list.createUser(
				(String) request.getAttribute("firstName"), (String) request.getAttribute("lastName"),
				(String) request.getAttribute("mail"), (String) request.getAttribute("phoneNumber"),
				(String) request.getAttribute("date"), (String) request.getAttribute("place"),
				(String) request.getAttribute("address"), (String) request.getAttribute("inputLogin"),
				(String) request.getAttribute("inputPassword"));
			}
			request.setAttribute("list", list);
			ServletContext servletContext = getServletContext();
			RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/index.html");
			dispatcher.forward(request, response);
		} catch (Exception e){
			e.printStackTrace();
		}
	}
}
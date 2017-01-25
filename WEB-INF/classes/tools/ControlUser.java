package tools;
import javax.servlet.*;
import javax.servlet.http.*;

/**	servlet gérant l'authentification ou l'inscription d'un utilisateur */

public class ControlUser extends HttpServlet{
	public void service( HttpServletRequest request, HttpServletResponse response){
		try{
			

			ModelUser list = new ModelUser();
			list.initialize();
			String login = (String) request.getAttribute("login");
			String password = (String) request.getAttribute("password");
			if(request.getAttribute("new") == null)
				list.execute(login, password);
			else{
				list.create((String) request.getAttribute("firstName"), (String) request.getAttribute("lastName"),
				(String) request.getAttribute("mail"), (String) request.getAttribute("phoneNumber"),
				(String) request.getAttribute("date"), (String) request.getAttribute("place"),
				(String) request.getAttribute("address"), (String) request.getAttribute("login"),
				(String) request.getAttribute("password"));
			}
			request.setAttribute("list", list);
			ServletContext servletContext = getServletContext();
			RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/welcome.jsp");
			dispatcher.forward(request, response);
		} catch (Exception e){
			e.printStackTrace();
		}
	}
}
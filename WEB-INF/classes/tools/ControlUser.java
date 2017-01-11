package tools;
import javax.servlet.*;
import javax.servlet.http.*;

/**	servlet gérant l'authentification ou l'inscription d'un utilisateur */

public class ControlUser extends HttpServlet{
	public void service( HttpServletRequest request, HttpServletResponse response){
		try{
			

			ModelUser list = new ModelUser();
			list.initialize();
			String login = request.getAttribute("login");
			String password = request.getAttribute("password");
			if(request.getAttribute("new") == null)
				list.execute(login, password);
			else{
				String firstName = request.getAttribute("firstName");
				Stirng lastName = request.getAttribute("lastName");
				String phoneNumber = request.getAttribute("phoneNumber");
				Stirng date = request.getAttribute("date");
				String place = request.getAttribute("place");
				Stirng address = request.getAttribute("address");
				Stirng mail = request.getAttribute("mail");
				list.create(firstName, lastName, mail, phoneNumber, date, place, address, login, password);
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
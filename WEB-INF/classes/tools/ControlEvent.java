import tools.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

/**	servlet gérant l'authentification ou l'inscription d'un utilisateur */

@WebServlet("/servlet/ControlEvent")
public class ControlEvent extends HttpServlet{
	public void service( HttpServletRequest request, HttpServletResponse response){
		try{
			
			Model list = new Model();
			list.initialize();

			list.createEvent((String) request.getAttribute("title"), (String) request.getAttribute("description"),
			(String) request.getAttribute("place"), (String) request.getAttribute("date"),
			(String) request.getAttribute("login"));

			request.setAttribute("list", list);
		} catch (Exception e){
			e.printStackTrace();
		}
	}
}
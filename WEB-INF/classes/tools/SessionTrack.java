/**
 * SessionTrack
 *
 * implémentation du suivi d'une session
 *
 * @author Catrice Aurélia*/

package tools;

import javax.servlet.http.*;
import java.util.ArrayList;
import java.util.Iterator;

public class SessionTrack implements HttpSessionListener{

    private static int nb;
    private static ArrayList liste;

    public SessionTrack(){
    	this.nb = 0;
    	this.liste = new ArrayList();
    }

    public void sessionCreated(HttpSessionEvent event){
		nb ++;
		liste.add(event.getSession());
    }

    public void sessionDestroyed(HttpSessionEvent event){
		nb --;
		liste.remove(event.getSession());
    }

    public static int getSessionNumber(){
    	return nb;
    }

    public static String getSessionList(){
		String result = "";
		Iterator it = liste.iterator();

		while (it.hasNext()){
			HttpSession s = (HttpSession)(it.next());
			String num = s.getId();
			int tps = (int)((s.getLastAccessedTime()-s.getCreationTime())/1000);
			result = result + num + " " + tps + "(sec)<p>";
		}
		return result;
    }
}

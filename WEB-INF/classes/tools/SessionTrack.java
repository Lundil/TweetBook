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
		this.nb ++;
		this.liste.add(event.getSession());
    }

    public void sessionDestroyed(HttpSessionEvent event){
		this.nb --;
		this.liste.remove(event.getSession());
    }

    public static int getSessionNumber(){
    	return this.nb;
    }

    public static String getSessionList(){
		String result = "";
		Iterator it = this.liste.iterator();

		while (it.hasNext()){
			HttpSession s = (HttpSession)(it.next());
			String num = s.getId();
			int tps = (int)((s.getLastAccessedTime()-s.getCreationTime())/1000);
			result = result + num + " " + tps + "(sec)<p>";
		}
		return result;
    }
}

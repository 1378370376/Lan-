package ssm.listeners;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import ssm.utils.SessionContext;


@WebListener
public class SessionListener implements HttpSessionListener {

    private SessionContext context = SessionContext.getInstance();
   
    public void sessionCreated(HttpSessionEvent se)  { 
    	context.addSession(se.getSession());
    }

    public void sessionDestroyed(HttpSessionEvent se)  { 
    	context.delSession(se.getSession());
    }
	
}

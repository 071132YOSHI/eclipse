package work1;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;





public class Dao1 {



	public void getSession(HttpServletRequest request){


	    HttpSession session =request.getSession();
	    session.setAttribute("dao", "true");



	}





}

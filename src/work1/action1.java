package work1;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;




public class action1 {


	public void getSession(HttpServletRequest request){

	    HttpSession session =request.getSession();
	    session.setAttribute("action", "true");


	    Dao1 dao =new Dao1();
	    dao.getSession(request);



	}






}

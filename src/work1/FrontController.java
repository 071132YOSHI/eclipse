package work1;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("/FrontController")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);



	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub


		String buttonId=(String)request.getParameter("BUTTON_ID");
		String page="/work/two.jsp";

        if(buttonId==null){

        	System.out.println("ボタンＩＤ入ってないです。");
        	System.exit(1);

        }
		switch(buttonId){

		case "01":

		    HttpSession session =request.getSession();
		    session.setAttribute("get", "true");
		    String get2=(String)request.getParameter("get2");
		    session.setAttribute("get2", get2);

			page="/work/two.jsp";

			break;

		case "a2":
			break;








		}

	    RequestDispatcher dispatcher =
	    		request.getRequestDispatcher(page);

	    dispatcher.forward(request, response);












	}

}

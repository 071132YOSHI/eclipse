package rensyu;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 * Servlet implementation class Put2
 */
@WebServlet("/Put2")
public class Put2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Put2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {





		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());


		System.out.println(request.getParameter("name"));











	}






	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);


		//必ずパラメータを受け取る前にエンコードする

		request.setCharacterEncoding("Windows-31J");



		//リクエストの取得のやり方（リクエスト＝前のページのＩＤ＝値のセットのこと）
	    //name&valueをとにかく詰め込みまくる。
		//リクエストの取得のやり方は
		//request.getParameter("name")=return <String>;
		//request.getParameterValues("name")=return <String[]>;


		//


		System.out.println(request.getParameter("name"));
	    System.out.println(request.getParameter("age"));
	    System.out.println(request.getParameter("sex"));

	    //文字列から値の数値化

	    int number=Integer.parseInt(request.getParameter("age"));

	    //値のチェックはtry{}catch(){}で行う

	    //画面処理をフォワードする。一応リクエストも渡せてるらしい。

	    
	    HttpSession session=request.getSession();
	    session.setAttribute("number", 10);

	    RequestDispatcher dispatcher =
	    		request.getRequestDispatcher("/first_put.jsp");

	    dispatcher.forward(request, response);




	}

}

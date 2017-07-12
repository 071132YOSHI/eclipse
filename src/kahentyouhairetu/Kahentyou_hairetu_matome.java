package kahentyouhairetu;


import java.io.IOException;
//可変長配列はインポートが必要
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Kahentyou_hairetu_matome
 */
@WebServlet("/Kahentyou_hairetu_matome")
public class Kahentyou_hairetu_matome extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Kahentyou_hairetu_matome() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());


	//ここから：可変長配列まとめ




	    ArrayList<String> array = new ArrayList<String>();

	    array.add("日本");
	    array.add("ブラジル");
	    array.add("イングランド");
	    array.add("ポルトガル");
	    array.add("フランス");

	    String country = array.get(2);
	    System.out.println(country);







	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

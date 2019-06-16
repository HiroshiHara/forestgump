package jp.co.forestgump.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * このアプリケーションを実行したときに最初に呼ばれるサーブレット。
 * 通常はindex.jspへフォワードする。
 */
@WebServlet("/top")
public class ApplicationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApplicationServlet() {
        super();
    }

	/**
	 * このメソッドは2通りのパターンで呼び出される。
	 * ①アプリケーションを実行したとき ... そのままindex.jspへフォワードする。
	 * ②member.jspで戻るボタンを押下したとき ... そのままindex.jspへフォワードする。
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/index.jsp");
		dispatcher.forward(request, response);
	}

}

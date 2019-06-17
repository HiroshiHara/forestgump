package jp.co.forestgump.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.forestgump.beans.User;
import jp.co.forestgump.logic.LoginLogic;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
    }

	/**
	 * login.jspへフォワードするメソッド。
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/login.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * ログインフォームから送信されてきたID, Passwordが正しければadmin.jspへリダイレクトするメソッド。
	 * 認証に失敗すると再度login.jspへフォワードする。
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		User user = new User(id, password);
		
		if (LoginLogic.isValidUser(user)) {
			// ユーザ情報をセッションスコープに保存
			session.setAttribute("Admin", user);
			// admin.jspへリダイレクト
			response.sendRedirect("/WEB-INF/jsp/admin.jsp");
		} else {
			// 認証に失敗したらlogin.jspへフォワード
			this.doGet(request, response);
		}
	}

}

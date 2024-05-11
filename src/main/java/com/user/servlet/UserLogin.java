package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Db.DbConnect;
import com.dao.UserDao;
import com.entity.User;

@WebServlet("/userLogin")
public class UserLogin extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String email = req.getParameter("email");
			String password = req.getParameter("password");

			HttpSession session = req.getSession();

			UserDao dao = new UserDao(DbConnect.getConn());
			User user = dao.login(email, password);

			if (user != null) {
				session.setAttribute("userObj", user);
				resp.sendRedirect("index.jsp");
			} else {
				session.setAttribute("errorMsg", "Invalid email or password");
				resp.sendRedirect("users.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();

		}
	}
}

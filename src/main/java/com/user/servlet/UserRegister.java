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

@WebServlet("/user_register")
public class UserRegister extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			String fullname = req.getParameter("fullname");
			String email = req.getParameter("email");
			String paswword = req.getParameter("password");

			User u = new User(fullname, email, paswword);

			UserDao dao = new UserDao(DbConnect.getConn());
			
			HttpSession session= req.getSession();

			boolean f = dao.UserRegister(u);

			if (f) {
				session.setAttribute("succMsg", "Registered Successfully");
				resp.sendRedirect("signup.jsp");
			} else {
				session.setAttribute("errorMsg", "Something went wrong");
				resp.sendRedirect("signup.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

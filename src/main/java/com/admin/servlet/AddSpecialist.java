package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Db.DbConnect;
import com.Db.SpecialistDao;
import com.entity.User;

@WebServlet("/AddSpecialist")
public class AddSpecialist extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		String spec_name = req.getParameter("specName");

		SpecialistDao dao = new SpecialistDao(DbConnect.getConn());
		boolean f = dao.addSpecialist(spec_name);

		HttpSession session = req.getSession();

		if (f) {
			session.setAttribute("succMsg", "Specialist Added");
			res.sendRedirect("admin/index.jsp");
		} else {
			session.setAttribute("errorMsg", "Something went wrong");
			res.sendRedirect("admin.jsp");
		}
	}
}
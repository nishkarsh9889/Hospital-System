package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Db.DbConnect;
import com.dao.AppointmentDao;
import com.entity.Appointment;

@WebServlet("/AppointmentServlet")
public class AppointmentServlet extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int userId = Integer.parseInt(req.getParameter("userId"));
		String fullName = req.getParameter("fullname");
		String gender = req.getParameter("gender");
		String age = req.getParameter("age");
		String appointDate = req.getParameter("appointDate");
		String email = req.getParameter("email");
		String phNo = req.getParameter("phNo");
		String diseases = req.getParameter("diseases");
		int doctorId = Integer.parseInt(req.getParameter("doct"));

		Appointment ap = new Appointment(userId, fullName, gender, age, appointDate, email, phNo, diseases, doctorId,
				"Pending");

		AppointmentDao dao = new AppointmentDao(DbConnect.getConn());
		HttpSession session = req.getSession();

		if (dao.addAppointment(ap)) {
			session.setAttribute("succMsg", "Appointment successsful");
			resp.sendRedirect("user_appointments.jsp");
		} else {
			session.setAttribute("errorMsg", "Something went wrong");
			resp.sendRedirect("user_appointments.jsp");
		}
	}
}
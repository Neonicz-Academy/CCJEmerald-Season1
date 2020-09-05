package com.codingchallenge.bpms.signup.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.codingchallenge.bpms.signup.repository.SignupRepository;
import com.codingchallenge.bpms.signup.repository.RegisterJDBC;

/**
 * Servlet implementation class SignupServlet
 */
@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public SignupServlet() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher serve = request.getRequestDispatcher("register.jsp");
		serve.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String registerUsername = request.getParameter("registerUsername");
		String registerEmail = request.getParameter("registerEmail");
		String registerPassword = request.getParameter("registerPassword");
		RegisterJDBC member = new RegisterJDBC(registerUsername, registerEmail, registerPassword);
		SignupRepository su = new SignupRepository();
		String result = su.insert(member);
		response.getWriter().print(result);
		doGet(request, response);
	}

}

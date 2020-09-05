package com.codingchallenge.bpms.adminlogin.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.codingchallenge.bpms.adminlogin.repository.LoginRepository;

/**
 * 
 */

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		RequestDispatcher serve = null;
		Boolean autherized = (Boolean) session.getAttribute("isauthorized");
		
		if(autherized != null && autherized) {
			//System.out.println("Emp id in session" + session.getAttribute("empId"));			
			
			System.out.println("autherized");
			response.sendRedirect("createBusPass.jsp");
			
		}else {
			System.out.println("not autherized");
			serve =  request.getRequestDispatcher("admin_login.jsp");
			serve.forward(request, response);

		}
				
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String loginUserName= request.getParameter("username");
		String loginPassword = request.getParameter("password");
		RequestDispatcher serve = null;
		boolean authenticationFailed = true;
		
		if((loginUserName==null) ||(loginPassword!=null && loginPassword.isEmpty())) {
			System.err.println("Null values");
		}
		else {			
			System.err.println("No Null values");
			LoginRepository loginObj = new LoginRepository();
			boolean loginStatus = loginObj.findUser(loginUserName,loginPassword);
			System.out.println(loginStatus);
			if(loginStatus) {
				HttpSession session = request.getSession(true);
				session.setAttribute("isauthorized",true);
				authenticationFailed = false;
			}
			else {
//				System.out.println("authentication Failed");
				request.setAttribute("failed",authenticationFailed);
//				5ve.forward(request, response);

			}
				}
		
		doGet(request, response);
	}
}
package com.codingchallenge.bpms.list.admin.existingbuspasses.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.codingchallenge.bpms.util.AuthUtil;

/**
 * Servlet implementation class CreateBuspassServlet
 */
@WebServlet("/CreateBuspassServlet")
public class AdminExistingBusPassesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public AdminExistingBusPassesServlet() {
        // TODO Auto-generated constructor stub
    	super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher serve = null;				
		if(AuthUtil.isAuthenticated(request, response)) {
			
			HttpSession session = request.getSession(true);
			serve = request.getRequestDispatcher("createBusPass.jsp");
						
		}else {
			serve = request.getRequestDispatcher("accessdenied.jsp");
		}
		serve.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}



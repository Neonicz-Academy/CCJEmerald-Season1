package com.codingchallenge.bpms.buspass.edit.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.codingchallenge.bpms.buspass.edit.repository.EditBuspassFormRepository;
import com.codingchallenge.bpms.buspass.edit.repository.EditBuspassJDBC;

/**
 * Servlet implementation class EditBuspassFormServlet
 */
@WebServlet("/EditBuspassFormServlet")
public class EditBuspassFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    /**
     * Default constructor. 
     */
    public EditBuspassFormServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String action = request.getServletPath();
		System.out.println("Action: "+action);
		RequestDispatcher dispatcher = null;
		if((null != request.getAttribute("updated")) && (request.getAttribute("updated").equals("success"))) {
			dispatcher = request.getRequestDispatcher("createBusPass.jsp");
		}else{
			{
		    dispatcher = request.getRequestDispatcher("editBusPass.jsp");
			}
		}
		//RequestDispatcher serve = request.getRequestDispatcher("editBusPass.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String IDD=request.getParameter("id");
		String Price = request.getParameter("price");
		String Validity = request.getParameter("validity");
		String Desc = request.getParameter("desc");
        System.out.println("Hi Update"); 	
        System.out.println(Price);
        System.out.println(Validity);
        System.out.println(Desc);
		EditBuspassJDBC book = new EditBuspassJDBC(Integer.parseInt(Price),Integer.parseInt(Validity),Desc,Integer.parseInt(IDD));
		EditBuspassFormRepository adfp = new EditBuspassFormRepository();
		try {
			adfp.updateUser(Integer.parseInt(IDD), book);
		} catch (NumberFormatException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("updated", "success");
		doGet(request, response);
	}
	
	

	

}

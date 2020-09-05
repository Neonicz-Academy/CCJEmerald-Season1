
package com.codingchallenge.bpms.buspass.add.servlet;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.codingchallenge.bpms.buspass.add.repository.AddBuspassFormRepository;
import com.codingchallenge.bpms.buspass.add.repository.AddBusPassJDBC;

/**
 * Servlet implementation class AddBuspassFormServlet
 */

@WebServlet("/AddBuspassFormServlet")
public class AddBuspassFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */

	public AddBuspassFormServlet() {
		// TODO Auto-generated constructor stub }
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher dispatcher = null;
		if((null != request.getAttribute("created")) && (request.getAttribute("created").equals("success"))) {
			dispatcher = request.getRequestDispatcher("createBusPass.jsp");
		}else
			{
		    dispatcher = request.getRequestDispatcher("addBusPass.jsp");
			}
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//String buspassId = request.getParameter("buspassId");
		String Name = request.getParameter("name");
		String Price = request.getParameter("price");
		String Validity = request.getParameter("validity");
		String Description = request.getParameter("desc");
		System.out.println("name");
		
		AddBusPassJDBC member = new AddBusPassJDBC(Name, Integer.parseInt(Price), Integer.parseInt(Validity), Description);
		AddBuspassFormRepository adfp = new AddBuspassFormRepository();
		String res = adfp.insert(member);
		response.getWriter().print(res);
		System.out.println("Res:->"+res);
		request.setAttribute("created", "success");
		doGet(request, response);

	}

}

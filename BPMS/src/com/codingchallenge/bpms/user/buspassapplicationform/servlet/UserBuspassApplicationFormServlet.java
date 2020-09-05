package com.codingchallenge.bpms.user.buspassapplicationform.servlet;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.codingchallenge.bpms.user.buspassapplicationform.repository.UserApplicationJDBC;
import com.codingchallenge.bpms.user.buspassapplicationform.repository.UserBuspassApplicationFormRepository;

/**
 * Servlet implementation class UserBuspassApplicationFormServlet
 */
@WebServlet("/UserBuspassApplicationFormServlet")
public class UserBuspassApplicationFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public UserBuspassApplicationFormServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher dispatcher = null;
		if((null != request.getAttribute("created")) && (request.getAttribute("created").equals("success"))) {
			dispatcher = request.getRequestDispatcher("usertable.jsp");
		}else
			{
			dispatcher = request.getRequestDispatcher("userapplicationform.jsp");
			}
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//int requestId = Integer.parseInt(request.getParameter("requestId"));
		String Name = request.getParameter("name of applicant");
		String Gender = request.getParameter("gender");
		System.out.println("Hi"+request.getParameter("phone"));
		long Phone = Long.valueOf(request.getParameter("phone"));
		//int Phone = Integer.parseInt(request.getParameter("phone").trim());
		String Email = request.getParameter("email");
		String IdProofType=request.getParameter("id proof type");
		String IdProofNumber=request.getParameter("id proof number");
		String Occupation=request.getParameter("occupation");
		String BusPassType=request.getParameter("bpt");
		String DateOfTravel=request.getParameter("select date");
		
		//System.out.println(requestId);
		System.out.println(Name);
		System.out.println(Gender);
		System.out.println(Phone);
		System.out.println(Email);
		System.out.println(IdProofType);
		System.out.println(IdProofNumber);
		System.out.println(Occupation);
		System.out.println(BusPassType);
		System.out.println(DateOfTravel);
		
		
		UserApplicationJDBC ud=new UserApplicationJDBC(Name, Gender, Phone, Email, IdProofType, IdProofNumber, Occupation, BusPassType, DateOfTravel);
		UserBuspassApplicationFormRepository adfp = new UserBuspassApplicationFormRepository();
		long key = adfp.insert(ud);
		response.getWriter().print(key);
		System.out.println("Res:->"+key);
		request.setAttribute("key", key);
		request.setAttribute("created", "success");
		doGet(request, response);
	}

}

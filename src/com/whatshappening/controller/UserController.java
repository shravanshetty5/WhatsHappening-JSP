package com.whatshappening.controller;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.whatshappening.dao.UserDao;
import com.whatshappening.model.User;
import com.whatshappening.util.LoadDriver;

//import com.mysql.jdbc.Connection;
import java.sql.*;

/**
 * Servlet implementation class HelloWorld
 */
@WebServlet(name="UserController", urlPatterns={"/UserController"})
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Servlet file"+request.getParameter("firstName"));
		UserDao userDao = new UserDao();
		User user = null;
		HttpSession session=request.getSession();
		try{
			
		String hiddenVal=request.getParameter("HiddenForm");
		System.out.println("HiddenVal is "+hiddenVal);
		if (hiddenVal.equalsIgnoreCase("HiddenSignUp")){
		user=new User();
		user.setFirstName(request.getParameter("firstName"));
		user.setLastName(request.getParameter("lastName"));
		user.setEmail(request.getParameter("email"));
		user.setPassword(request.getParameter("password"));
		System.out.println("user."+user.getFirstName());
		userDao.addUser(user);	
		session.setAttribute("firstName", user.getFirstName());
		RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/HomePage.jsp");
		dispatcher.forward(request, response);
		}
		if(hiddenVal.equalsIgnoreCase("HiddenLogin")){
			System.out.println("username passed is"+request.getParameter("username")+ " password is "+request.getParameter("password"));
			user= userDao.login(request.getParameter("username"),request.getParameter("password"));
			if(user!=null){
				session.setAttribute("firstName", user.getFirstName());
				System.out.println("Going to login success homepage");
				RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/Home.jsp");
				dispatcher.forward(request, response);
			}
			else{
				RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/LoginFailure.jsp");
				dispatcher.forward(request, response);
			}
		}
		
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

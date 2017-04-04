package com.whatshappening.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.whatshappening.dao.EventsDao;
import com.whatshappening.dao.UserDao;
import com.whatshappening.model.Events;
import com.whatshappening.model.User;

/**
 * Servlet implementation class EventsController
 */

@WebServlet(name="EventsController", urlPatterns={"/EventsController"})

public class EventsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EventsController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			System.out.println("isnide events controller");
			EventsDao eventsDao = new EventsDao();
			List<Events> eventList=new ArrayList<Events>();
			Events event=null;
			System.out.println("Event1 value"+request.getParameter("hiddenName"));
			int eventDivID=Integer.parseInt(request.getParameter("hiddenName"));
			System.out.println("Hidden ID value name"+eventDivID);
			//category name div for future use
			String category=request.getParameter("hiddenCategoryName");
			event=eventsDao.loadEvent(eventDivID);
			int eventID=0;
			/*
			
			 switch (eventDivID) {
	            case "event1":  eventID = 1;
	            event=eventsDao.loadEvent(eventID);
	                     break;
	            case "event2":  eventID = 2;
	            event=eventsDao.loadEvent(eventID);
	                     break;
	            case "event3":  eventID = 3;
	            event=eventsDao.loadEvent(eventID);
	                     break;
	            case "event4":  eventID = 4;
	            event=eventsDao.loadEvent(eventID);
	                     break;
	            case "event5":  eventID = 5;
	            event=eventsDao.loadEvent(eventID);
	                     break;
	            case "event6":  eventID = 6;
	            event=eventsDao.loadEvent(eventID);
	                     break;
	        }
		
		*/	if(false){
				eventList=eventsDao.loadAllEvents();
			}
		if(false){
			eventList=eventsDao.loadCategoryBasedEvents(category);
		}
			//System.out.println("eventLits is"+eventList);
			request.setAttribute("eventClicked", event);
			System.out.println("eventCliked vlaye"+event);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/EventPage.jsp");
			dispatcher.forward(request, response);
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

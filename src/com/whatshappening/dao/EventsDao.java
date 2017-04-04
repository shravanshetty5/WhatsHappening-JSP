package com.whatshappening.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Blob;
import com.whatshappening.model.Events;
import com.whatshappening.util.LoadDriver;

public class EventsDao {
	private Connection connection;
	
	public EventsDao() throws Exception {
		connection = LoadDriver.connectToDB();
	}

	public List<Events> loadAllEvents(){
		List<Events> eventList=new ArrayList<Events>();
		PreparedStatement pst;
		ResultSet rs;
		try {
			System.out.println("Inside loadallevents");
			pst = connection.prepareStatement("SELECT * from whatshappening.events"); 
			rs = pst.executeQuery();     
			while (rs.next()) {   
				Events event = new Events(rs.getString("name"),rs.getString("date"),rs.getString("time"),rs.getString("location"),rs.getString("cost"),rs.getString("description"),(Blob) rs.getBlob("image"),rs.getString("category"),rs.getInt("id"),rs.getString("image_location"));
					eventList.add(event);
			}
					rs.close();                       
					pst.close();                        
             //System.out.println("After query"+eventList); 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		return eventList;
		
	}

	public Events loadEvent(int eventID) {
		PreparedStatement pst;
		ResultSet rs;
		Events event=null;
		try {
			System.out.println("EventID in DAO"+eventID);
		pst = connection.prepareStatement("SELECT * from whatshappening.events where ID=?"); 
		pst.setInt(1, eventID);
		rs = pst.executeQuery();   
		if(rs.next()){
		event = new Events(rs.getString("name"),rs.getString("date"),rs.getString("time"),rs.getString("location"),rs.getString("cost"),rs.getString("description"),(Blob) rs.getBlob("image"),rs.getString("category"),rs.getInt("id"),rs.getString("image_location"));
		}
				rs.close();                       
				pst.close();
		System.out.println("Displaying rs in DAO"+event);
		return event;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		return event;
	}

	public List<Events> loadCategoryBasedEvents(String category) {
		List<Events> eventList=new ArrayList<Events>();
		PreparedStatement pst;
		ResultSet rs;
		try {
			System.out.println("Inside loadallevents");
			pst = connection.prepareStatement("SELECT * from whatshappening.events where category=?"); 
			pst.setString(1, category);
			rs = pst.executeQuery();     
			while (rs.next()) {   
				Events event = new Events(rs.getString("name"),rs.getString("date"),rs.getString("time"),rs.getString("location"),rs.getString("cost"),rs.getString("description"),(Blob) rs.getBlob("image"),rs.getString("category"),rs.getInt("id"),rs.getString("image_location"));
					eventList.add(event);
			}
					rs.close();                       
					pst.close();                        
            
		} catch (SQLException e) {
			e.printStackTrace();
		}  
		return eventList;
		
	}
}

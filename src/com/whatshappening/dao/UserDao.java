package com.whatshappening.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Blob;
import com.whatshappening.model.Events;
import com.whatshappening.model.User;
import com.whatshappening.util.LoadDriver;

public class UserDao {
	
	private Connection connection;
	//private UserDao userDao;
	public UserDao() {
        try {
        //	userDao=new UserDao();
			connection = LoadDriver.connectToDB();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
	public void addUser(User user){
		PreparedStatement pst;
		try {
			pst = (PreparedStatement) connection.prepareStatement("insert into whatshappening.user(firstName,lastName,email,password) values(?,?,?,?)");
		System.out.println(user.getFirstName() + " "+ user.getLastName());
        pst.setString(1,user.getFirstName());  
        pst.setString(2,user.getLastName());        
        pst.setString(3,user.getEmail());
        pst.setString(4, user.getPassword());
        pst.executeUpdate();
              
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  

	}
	public User login(String username, String password) {
		PreparedStatement pst;
		ResultSet rs;
		User user=null;
		try {
		
		pst = connection.prepareStatement("SELECT * from whatshappening.user where email=? and password=?"); 
		pst.setString(1, username);
		pst.setString(2, password);
		rs = pst.executeQuery();   
		if(rs.next()){
		user = new User(rs.getString("firstName"),rs.getString("lastName"),rs.getString("email"),rs.getString("password"));
		}
		rs.close();                       
		pst.close();
		System.out.println("Displaying rs in DAO"+user);
		return user;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		return user;
	}


}

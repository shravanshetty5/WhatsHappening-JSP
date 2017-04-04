package com.whatshappening.util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;


public class LoadDriver {
	
	public static Connection connect = null;
  	public String checkconn = "";
	final private static String host = "localhost:3306";
    final private static String user = "root";
    final private static String passwd = "";
    final private static String database = "whatshappening";
	public static Connection connectToDB() throws Exception {
        try {
            // The newInstance() call is a work around for some
            // broken Java implementations
        	System.out.println("Inside loadriver");
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            connect = DriverManager.getConnection("jdbc:mysql://" + host + "/"
                    + database + "?" + "user=" + user + "&password=" + passwd);
            System.out.println("printing connect var"+connect);
           // return connect;
        } catch (Exception ex) {
        	System.out.println(ex.toString());
            // handle the error
        }
		return connect;
    }
}

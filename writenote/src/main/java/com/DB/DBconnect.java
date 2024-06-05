package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect{
	private static Connection con;
	public static Connection getcon()
	{
		try {
			if(con==null)
			{
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/enote","root","root");
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
	}
}
	
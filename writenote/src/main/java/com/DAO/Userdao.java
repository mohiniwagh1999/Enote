package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.User.User;

public class Userdao {

	private Connection con;
	
	public Userdao(Connection con)
	{
		super();
		this.con=con;
	}
	
	public boolean adduser(User us)
	{
		boolean f=false;
		
		try {
			String query="insert into enote(name,email,password) values(?,?,?)";
			PreparedStatement pstmt=con.prepareStatement(query);
		
			pstmt.setString(1, us.getName());
			pstmt.setString(2, us.getEmail());
			pstmt.setString(3, us.getPassword());
			int i=pstmt.executeUpdate();
			if(i==1)
			{
				f=true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return f;
		
	}
	
	public User loginuser(User us)
	{

	User user=null;
	try {
		
		String sql = "SELECT * FROM enote WHERE email = ? AND password = ?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, us.getEmail());
		pstmt.setString(2, us.getPassword());
		ResultSet rs = pstmt.executeQuery();
		if(rs.next())
		{
			 user=new User();
			user.setId(rs.getInt("id"));
			user.setName(rs.getString("name"));
			user.setEmail(rs.getString("email"));
			user.setPassword(rs.getString("password"));
		}
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return user;
	}
}

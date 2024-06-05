package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.User.Post;
import com.User.User;

public class PostDAO {

	private Connection con;
	
	public PostDAO(Connection con) {
		super();
		this.con = con;
	}
	public boolean addnotes(String ti,String co,int id)
	{
		boolean f=false;
		try {
			
			String query="insert into post(title,content,id) values(?,?,?)";
			PreparedStatement pstmt=con.prepareStatement(query);
			
			pstmt.setString(1, ti);
			
			pstmt.setString(2,co);
			pstmt.setInt(3, id);
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
	
	public List<Post> getData(int id)
	{
		List<Post> list =new ArrayList<>();
		Post po=null;
		
		try {
			
			String query="select * from post where id=?";
			PreparedStatement pstmt=con.prepareStatement(query);
			pstmt.setInt(1, id);
			ResultSet res=pstmt.executeQuery();
			while(res.next())
			{
				po=new Post();
				po.setId(res.getInt(1));
				po.setTitle(res.getString(2));
				po.setContent(res.getString(3));
				list.add(po);
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return list;
	}
	
}

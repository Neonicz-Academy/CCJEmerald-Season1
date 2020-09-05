package com.codingchallenge.bpms.adminlogin.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginRepository {
	public boolean findUser(String loginUserName,String loginPassword) {
		
		System.out.println("inside findUser");
		System.out.println(loginUserName);
		System.out.println(loginPassword);
				
		Connection con = null;
		boolean successful = false;
		
		try {
			System.out.println("inside try");
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/bpms_db";
			con = DriverManager.getConnection(url,"root", "Mysql@123");
			System.out.println("inside database");
			System.out.println(loginUserName);
			System.out.println(loginPassword);
			
			String selectQuery = "select * from adminlogin where username = ? and password = ?";

			PreparedStatement stmt = con.prepareStatement(selectQuery);
			stmt.setString(1,loginUserName);
			stmt.setString(2,loginPassword);
			

			int size = 0;
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				System.out.println(rs.getString("userName"));
//				rs.last();
				size = rs.getRow();
//				size++;
				if(rs.getString("userName") != null) {
					successful = true;
//					System.out.println("UseName" + rs.getString("userName"));
				}
				
			}
			
			
			if(successful == true)  {
				System.out.println("There is a user");
			}
			else {
				System.out.println("No user found.");
				successful = false;
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				con.close();
			}
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return successful;
		
			}
	

}
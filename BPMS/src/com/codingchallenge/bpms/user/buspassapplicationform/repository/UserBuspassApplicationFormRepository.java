package com.codingchallenge.bpms.user.buspassapplicationform.repository;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserBuspassApplicationFormRepository {
	private String dburl = "jdbc:mysql://localhost:3306/bpms_db";
	private String dbuname = "root";
	private String dbpassword = "Mysql@123";
	private String dbDriver = "com.mysql.cj.jdbc.Driver";
	public void loadDriver(String dbDriver) {
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) { // TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public Connection getConnection() {
		Connection con = null;
		try {
			con = DriverManager.getConnection(dburl, dbuname, dbpassword);
		} catch (SQLException e) { // TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	public long insert(UserApplicationJDBC user) {
		long key = 0L;
		loadDriver(dbDriver);
		Connection con = getConnection();
		String sql = "INSERT INTO bpms_db.userrequest(name,gender,phoneNumber,emailId,idProofType,idProofNumber,occupation,busPassType,dateOfTravel) values(?,?,?,?,?,?,?,?,?)";
		String res = "Data entered successfully";
		try {
		PreparedStatement ps = con.prepareStatement(sql,PreparedStatement.RETURN_GENERATED_KEYS);
		System.out.println("SQL:"+sql);
			
			ps.setString(1, user.getName());
			ps.setString(2,user.getGender());
			ps.setLong(3,user.getPhoneNumber());
			ps.setString(4,user.getEmailId());
			ps.setString(5, user.getIdProofType());
			ps.setString(6, user.getIdProofNumber());
			ps.setString(7, user.getOccupation());
			ps.setString(8, user.getBusPassType());
			ps.setString(9, user.getDateOfTravel());
			ps.executeUpdate();
			ResultSet rs = ps.getGeneratedKeys();

			if (rs.next()) {
			    key = rs.getLong(1);
			}
			
		}
		catch(SQLException e){
			e.printStackTrace();
			res = "Data entering failed";
		}
		System.out.println(res);
		System.out.println(key);
		return key;
		//return res;
	}
	public int delete(int id){
		int status=0;
		loadDriver(dbDriver);
		Connection con = getConnection();
		try{
			System.out.println("ID1:"+id);
			PreparedStatement ps=con.prepareStatement("delete from bpms_db.userrequest where requestId=?");
			ps.setInt(1,id);
			status=ps.executeUpdate();
		}catch(Exception e){System.out.println(e);}

		return status;
	}

}

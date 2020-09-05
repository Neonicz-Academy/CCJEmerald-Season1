package com.codingchallenge.bpms.signup.repository;

import java.sql.*;

public class SignupRepository {
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

	public String insert(RegisterJDBC adminlogin) {
		loadDriver(dbDriver);
		Connection con = getConnection();
		String sql = "insert into bpms_db.adminlogin values(?,?,?)";
		String result = "Registration Successful";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(3, adminlogin.getRegisterUsername());
			ps.setString(1, adminlogin.getRegisterEmail());
			ps.setString(2, adminlogin.getRegisterPassword());
			ps.executeUpdate();
		} catch (SQLException e) { // TODO Auto-generated catch block
			e.printStackTrace();
			result = "Registration Unsuccessful";
		}
		return result;
	}
}

package com.codingchallenge.bpms.buspass.edit.repository;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EditBuspassFormRepository {
	private String dburl = "jdbc:mysql://localhost:3306/bpms_db";
	private String dbuname = "root";
	private String dbpassword = "Mysql@123";
	private String dbDriver = "com.mysql.cj.jdbc.Driver";
	private static final String UPDATE_USERS_SQL = "update bpms_db.buspass set buspassPrice = ?,buspassValidity= ?, buspassDescription =? where buspassId = ?;";
	private static final String SELECT_ALL_USERS = "select * from bpms_db.buspass";
	private static final String SELECT_USER_BY_ID = "select * from buspass where buspassId =?";
	
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
	public boolean updateUser(int id,EditBuspassJDBC user) throws SQLException {
		boolean rowUpdated=false;
		loadDriver(dbDriver);
		
		Connection con = getConnection();
		try {
				PreparedStatement statement = con.prepareStatement(UPDATE_USERS_SQL);
			statement.setInt(1, user.getBuspassPrice());
			statement.setInt(2, user.getBuspassValidity());
			statement.setString(3, user.getBuspassDescription());
			statement.setInt(4, id);

			rowUpdated = statement.executeUpdate() > 0;
		}
		catch(SQLException e){
			e.printStackTrace();
			
		}
		return rowUpdated;
	}
	

	public List<EditBuspassJDBC> selectAllUsers() {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<EditBuspassJDBC> users = new ArrayList<>();
		// Step 1: Establishing a Connection
		loadDriver(dbDriver);
		Connection con = getConnection();
		try {

				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = con.prepareStatement(SELECT_ALL_USERS);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int id = rs.getInt("buspassId");
				System.out.println("buspassId"+id);
				int Price = rs.getInt("buspassPrice");
				int Validity = rs.getInt("buspassValidity");
				String Description = rs.getString("buspassDescription");
				users.add(new EditBuspassJDBC(Price,Validity,Description,id));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return users;
	}
	public EditBuspassJDBC selectUser(int id) {
		System.out.println("Id in Repository"+id);
		loadDriver(dbDriver);
		Connection con = getConnection();
		EditBuspassJDBC user = null;
		// Step 1: Establishing a Connection
		try {
				// Step 2:Create a statement using connection objec
				PreparedStatement preparedStatement = con.prepareStatement(SELECT_USER_BY_ID); 
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int id1 = rs.getInt("buspassId");
				int Price = rs.getInt("buspassPrice");
				int Validity = rs.getInt("buspassValidity");
				String Description = rs.getString("buspassDescription");
				user = new EditBuspassJDBC(Price,Validity,Description,id1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}




}

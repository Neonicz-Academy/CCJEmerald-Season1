package com.codingchallenge.bpms.list.admin.requesthistory.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.codingchallenge.bpms.buspass.add.repository.AddBusPassJDBC;
import com.codingchallenge.bpms.user.buspassapplicationform.repository.UserApplicationJDBC;

public class AdminRequestHistoryRepository {
	private String dburl = "jdbc:mysql://localhost:3306/bpms_db";
	private String dbuname = "root";
	private String dbpassword = "Mysql@123";
	private String dbDriver = "com.mysql.cj.jdbc.Driver";
	private static final String SELECT_ALL_USERS = "select * from bpms_db.userrequest";
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
	public List<UserApplicationJDBC> selectAllUsers() {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<UserApplicationJDBC> users = new ArrayList<>();
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
				int requestId=rs.getInt("requestId");
				String name=rs.getString("name");
				String gender=rs.getString("gender");
				long phoneNumber=rs.getLong("phoneNumber");
				String emailId=rs.getString("emailId");
				String idProofType=rs.getString("idProofType");
				String idProofNumber=rs.getString("idProofNumber");
				String occupation=rs.getString("occupation");
				String busPassType=rs.getString("busPassType");
				String dateOfTravel=rs.getString("dateOfTravel");
				users.add(new UserApplicationJDBC(requestId, name, gender, phoneNumber, emailId, idProofType, idProofNumber, occupation, busPassType, dateOfTravel));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return users;
	}

}

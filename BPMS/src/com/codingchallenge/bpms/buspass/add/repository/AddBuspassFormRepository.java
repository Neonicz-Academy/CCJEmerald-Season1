
package com.codingchallenge.bpms.buspass.add.repository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.codingchallenge.bpms.buspass.add.repository.AddBusPassJDBC;

public class AddBuspassFormRepository {
	private String dburl = "jdbc:mysql://localhost:3306/bpms_db";
	private String dbuname = "root";
	private String dbpassword = "Mysql@123";
	private String dbDriver = "com.mysql.cj.jdbc.Driver";
	private static final String SELECT_ALL_USERS = "select * from bpms_db.buspass";
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

	public String insert(AddBusPassJDBC buspass) {

		loadDriver(dbDriver);
		Connection con = getConnection();
		String sql = "INSERT INTO bpms_db.buspass(createdDate,modifiedDate,createdBy,modifiedBy,buspassName,buspassPrice,buspassValidity,buspassDescription) values(?,?,?,?,?,?,?,?)";
		String res = "Data entered successfully";
		try {
			PreparedStatement ps = con.prepareStatement(sql);			

			long millis=System.currentTimeMillis();  
			ps.setDate(1, new java.sql.Date(millis));
			ps.setDate(2, new java.sql.Date(millis));
			ps.setString(3, "Abhi");
			ps.setString(4, "Abhi");
			

			ps.setString(5, buspass.getName());
			ps.setInt(6, buspass.getPrice());
			ps.setInt(7, buspass.getValidity());
			ps.setString(8, buspass.getDescription());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			res = "Data entering failed";
		}
		System.out.println(res);
		return res;
	}
	public List<AddBusPassJDBC> selectAllUsers() {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<AddBusPassJDBC> users = new ArrayList<>();
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
				int buspassId = rs.getInt("buspassId");
				String Name = rs.getString("buspassName");
				int Price = rs.getInt("buspassPrice");
				int Validity = rs.getInt("buspassValidity");
				String Description = rs.getString("buspassDescription");
				users.add(new AddBusPassJDBC(buspassId,Name,Price,Validity,Description));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return users;
	}
	public int delete(int id){
		int status=0;
		loadDriver(dbDriver);
		Connection con = getConnection();
		try{
			System.out.println("ID1:"+id);
			PreparedStatement ps=con.prepareStatement("delete from bpms_db.buspass where buspassId=?");
			ps.setInt(1,id);
			status=ps.executeUpdate();
		}catch(Exception e){System.out.println(e);}

		return status;
	}


}

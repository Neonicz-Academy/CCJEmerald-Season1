package com.codingchallenge.bpms.buspass.add.repository;

public class AddBusPassJDBC {
	int buspassId;
	private String buspassName,buspassDescription;
	int buspassPrice;
	int buspassValidity;
	
	public AddBusPassJDBC() {
		super();
	}

	public AddBusPassJDBC(int Id, String name, int price, int validity, String description) {
		super();
		this.buspassId=Id;
		this.buspassName=name;
		this.buspassPrice=price;
		this.buspassValidity=validity;
		this.buspassDescription=description;
	}
	
	public AddBusPassJDBC(String name, int price, int validity, String description) {
		super();
		//this.buspassId=buspassId;
		this.buspassName=name;
		this.buspassPrice=price;
		this.buspassValidity=validity;
		this.buspassDescription=description;
	}
	
	public int getbuspassId() {
		return buspassId;
	}

	public String getName() {
		return buspassName;
	}

	

	public int getPrice() {
		return buspassPrice;
	}

	
	public int getValidity() {
		return buspassValidity;
	}

	public String getDescription() {
		return buspassDescription;
	}
	
}

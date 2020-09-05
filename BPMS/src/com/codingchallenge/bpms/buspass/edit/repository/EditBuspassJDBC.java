package com.codingchallenge.bpms.buspass.edit.repository;

public class EditBuspassJDBC {

	private int buspassPrice;
	private int buspassValidity;
	private String buspassDescription;
	private int buspassId;
	public EditBuspassJDBC(int buspassPrice, int buspassValidity, String buspassDescription,int Id) {
		super();
		this.buspassPrice = buspassPrice;
		this.buspassValidity = buspassValidity;
		this.buspassDescription = buspassDescription;
		this.buspassId=Id;
	}
	public EditBuspassJDBC() {
		super();
	}
	public int getBuspassPrice() {
		return buspassPrice;
	}
	public int getId() {
		return buspassId;
	}
	public void setBuspassPrice(int buspassPrice) {
		this.buspassPrice = buspassPrice;
	}
	public int getBuspassValidity() {
		return buspassValidity;
	}
	public void setBuspassValidity(int buspassValidity) {
		this.buspassValidity = buspassValidity;
	}
	public String getBuspassDescription() {
		return buspassDescription;
	}
	public void setBuspassDescription(String buspassDescription) {
		this.buspassDescription = buspassDescription;
	}
	


}

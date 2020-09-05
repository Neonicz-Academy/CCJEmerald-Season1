package com.codingchallenge.bpms.signup.repository;

public class RegisterJDBC {
	private String registerUsername, registerEmail, registerPassword;

	public RegisterJDBC() {
		super();
	}

	public RegisterJDBC(String registerUsername, String registerEmail, String registerPassword) {
		super();
		this.registerUsername = registerUsername;
		this.registerEmail = registerEmail;
		this.registerPassword = registerPassword;
	}

	public String getRegisterUsername() {
		return registerUsername;
	}

	public void setRegisterUsername(String registerUsername) {
		this.registerUsername = registerUsername;
	}

	public String getRegisterEmail() {
		return registerEmail;
	}

	public void setRegisterEmail(String registerEmail) {
		this.registerEmail = registerEmail;
	}

	public String getRegisterPassword() {
		return registerPassword;
	}

	public void setRegisterPassword(String registerPassword) {
		this.registerPassword = registerPassword;
	}

}

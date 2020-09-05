package com.codingchallenge.bpms.user.buspassapplicationform.repository;

import java.util.Date;
import java.util.*;

public class UserApplicationJDBC {
			int requestId;
			String name;
			String gender;
			long phoneNumber;
			String emailId;
			String idProofType;
			String idProofNumber;
			String occupation;
			String busPassType;
			String dateOfTravel;
			public UserApplicationJDBC() {
				super();
			}
			public UserApplicationJDBC(int requestId, String name, String gender, long phoneNumber, String emailId, String idProofType,
					String idProofNumber, String occupation, String busPassType, String dateOfTravel) {
				super();
				this.requestId = requestId;
				this.name = name;
				this.gender = gender;
				this.phoneNumber = phoneNumber;
				this.emailId = emailId;
				this.idProofType = idProofType;
				this.idProofNumber = idProofNumber;
				this.occupation = occupation;
				this.busPassType = busPassType;
				this.dateOfTravel = dateOfTravel;
			}
			public UserApplicationJDBC(String name, String gender, long phoneNumber, String emailId, String idProofType,
					String idProofNumber, String occupation, String busPassType, String dateOfTravel) {
				super();
				this.name = name;
				this.gender = gender;
				this.phoneNumber = phoneNumber;
				this.emailId = emailId;
				this.idProofType = idProofType;
				this.idProofNumber = idProofNumber;
				this.occupation = occupation;
				this.busPassType = busPassType;
				this.dateOfTravel = dateOfTravel;
			}
			public int getrequestId() {
				return requestId;
			}
			public void setrequestId(int requestId) {
				this.requestId = requestId;
			}
			public String getName() {
				return name;
			}
			public void setName(String name) {
				this.name = name;
			}
			public String getGender() {
				return gender;
			}
			public void setGender(String gender) {
				this.gender = gender;
			}
			public long getPhoneNumber() {
				return phoneNumber;
			}
			public void setPhoneNumber(long phoneNumber) {
				this.phoneNumber = phoneNumber;
			}
			public String getEmailId() {
				return emailId;
			}
			public void setEmailId(String emailId) {
				this.emailId = emailId;
			}
			public String getIdProofType() {
				return idProofType;
			}
			public void setIdProofType(String idProofType) {
				this.idProofType = idProofType;
			}
			public String getIdProofNumber() {
				return idProofNumber;
			}
			public void setIdProofNumber(String idProofNumber) {
				this.idProofNumber = idProofNumber;
			}
			public String getOccupation() {
				return occupation;
			}
			public void setOccupation(String occupation) {
				this.occupation = occupation;
			}
			public String getBusPassType() {
				return busPassType;
			}
			public void setBusPassType(String busPassType) {
				this.busPassType = busPassType;
			}
			public String getDateOfTravel() {
				return dateOfTravel;
			}
			public void setDateOfTravel(String dateOfTravel) {
				this.dateOfTravel = dateOfTravel;
			}
			
}

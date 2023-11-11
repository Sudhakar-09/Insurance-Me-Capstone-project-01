package com.staragile.insurance.policy;

import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class Policy {

	@Id
	String policyId;
	String customerName;
	String customerAddress;
	String contactNumber;
	
	
	@Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Policy policy = (Policy) o;
        return Objects.equals(getPolicyId(), policy.getPolicyId()) &&
               Objects.equals(getCustomerName(), policy.getCustomerName()) &&
               Objects.equals(getCustomerAddress(), policy.getCustomerAddress()) &&
               Objects.equals(getContactNumber(), policy.getContactNumber());
    }
	
	@Override
	public String toString() {
	    return "Policy ID: " + getPolicyId() +
	           ", Customer Name: " + getCustomerName() +
	           ", Customer Address: " + getCustomerAddress() +
	           ", Contact Number: " + getContactNumber();
	}


    @Override
    public int hashCode() {
        return Objects.hash(getPolicyId(), getCustomerName(), getCustomerAddress(), getContactNumber());
    }
    
	public Policy() {
		super();
	}
	
	
	public Policy(String policyId, String customerName, String customerAddress, String contactNumber) {
		super();
		this.policyId = policyId;
		this.customerName = customerName;
		this.customerAddress = customerAddress;
		this.contactNumber = contactNumber;
	}
	
	public String getPolicyId() {
		return policyId;
	}
	public void setPolicyId(String policyId) {
		this.policyId = policyId;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getCustomerAddress() {
		return customerAddress;
	}
	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}
	public String getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	
}

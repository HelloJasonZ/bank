package com.vivebest.erp.entity;

import java.math.BigDecimal;
import java.util.Date;



public class Transactions {
	private int trId; // 流水id
	private String trNumber; // 交易流水号
	private Customer customer; // 客户信息
	private int cusId; // 客户Id
	private String acNumber; // 账户号
	private BigDecimal trBalance; // 交易金额
	private Date trTime; // 交易时间
	private int trType; // 交易类型
	private String trAddress; // 交易地点
	private boolean isDelete; // 软删除

	public Transactions() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Transactions(int trId, String trNumber, Customer customer,
			int cusId, String acNumber, BigDecimal trBalance, Date trTime,
			int trType, String trAddress, boolean isDelete) {
		super();
		this.trId = trId;
		this.trNumber = trNumber;
		this.customer = customer;
		this.cusId = cusId;
		this.acNumber = acNumber;
		this.trBalance = trBalance;
		this.trTime = trTime;
		this.trType = trType;
		this.trAddress = trAddress;
		this.isDelete = isDelete;
	}

	public int getTrId() {
		return trId;
	}

	public void setTrId(int trId) {
		this.trId = trId;
	}

	public String getTrNumber() {
		return trNumber;
	}

	public void setTrNumber(String trNumber) {
		this.trNumber = trNumber;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public int getCusId() {
		return cusId;
	}

	public void setCusId(int cusId) {
		this.cusId = cusId;
	}

	public String getAcNumber() {
		return acNumber;
	}

	public void setAcNumber(String acNumber) {
		this.acNumber = acNumber;
	}

	public BigDecimal getTrBalance() {
		return trBalance;
	}

	public void setTrBalance(BigDecimal acBalance) {
		this.trBalance = acBalance;
	}

	public Date getTrTime() {
		return trTime;
	}

	public void setTrTime(Date trTime) {
		this.trTime = trTime;
	}

	public int getTrType() {
		return trType;
	}

	public void setTrType(int trType) {
		this.trType = trType;
	}

	public String getTrAddress() {
		return trAddress;
	}

	public void setTrAddress(String trAddress) {
		this.trAddress = trAddress;
	}

	public boolean isDelete() {
		return isDelete;
	}

	public void setDelete(boolean isDelete) {
		this.isDelete = isDelete;
	}

	@Override
	public String toString() {
		return "Transaction [trId=" + trId + ", trNumber=" + trNumber
				+ ", customer=" + customer + ", cusId=" + cusId + ", acNumber="
				+ acNumber + ", trBalance=" + trBalance + ", trTime=" + trTime
				+ ", trType=" + trType + ", trAddress=" + trAddress
				+ ", isDelete=" + isDelete + "]";
	}

}

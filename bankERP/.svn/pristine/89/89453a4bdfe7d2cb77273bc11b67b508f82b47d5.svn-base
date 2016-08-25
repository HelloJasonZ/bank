package com.vivebest.erp.entity;

import java.math.BigDecimal;
import java.util.Date;

public class Account {
	private int acId;// 账户id
	private String acPassword;// 账户密码
	private BigDecimal acBalance;// 账户余额
	private Date acCreateTime;// 账户创建时间
	private String acCreateAddress;// 账户创建地点
	private Boolean acState;// 账户状态
	private int cusId;// 客户的id
	private Customer customer;// 账户中客户信息
	private String acNumber;// 账户号
	private String acCurrency;// 账户货币类型
	private int tId;// 柜员的id
	private Teller teller;// 账户操作人即由哪个柜员办理的
	private Boolean isDelete;

	private String noShowNumber;//屏蔽
	
	
	private String noShowMoney;//屏蔽金钱

	
	
	public String getNoShowMoney() {
		return noShowMoney;
	}

	public void setNoShowMoney(String noShowMoney) {
		this.noShowMoney = noShowMoney;
	}

	public String getNoShowNumber() {
		return noShowNumber;
	}

	public void setNoShowNumber(String noShowNumber) {
		this.noShowNumber = noShowNumber;
	}

	public BigDecimal getAcBalance() {
		return acBalance;
	}

	public void setAcBalance(BigDecimal acBalance) {
		this.acBalance = acBalance;
	}

	public void setCusId(int cusId) {
		this.cusId = cusId;
	}

	public void settId(int tId) {
		this.tId = tId;
	}

	public int getAcId() {
		return acId;
	}

	public void setAcId(int acId) {
		this.acId = acId;
	}

	public String getAcPassword() {
		return acPassword;
	}

	public void setAcPassword(String acPassword) {
		this.acPassword = acPassword;
	}

	public BigDecimal getAcBalence() {
		return acBalance;
	}

	public void setAcBalence(BigDecimal acBalance) {
		this.acBalance = acBalance;
	}

	public Date getAcCreateTime() {
		return acCreateTime;
	}

	public void setAcCreateTime(Date acCreateTime) {
		this.acCreateTime = acCreateTime;
	}

	public String getAcCreateAddress() {
		return acCreateAddress;
	}

	public void setAcCreateAddress(String acCreateAddress) {
		this.acCreateAddress = acCreateAddress;
	}

	public Boolean getAcState() {
		return acState;
	}

	public void setAcState(Boolean acState) {
		this.acState = acState;
	}

	public int getCusId() {
		return cusId;
	}

	public int gettId() {
		return tId;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
		this.cusId = this.customer.getCusId();
	}

	public String getAcNumber() {
		return acNumber;
	}

	public void setAcNumber(String acNumber) {
		this.acNumber = acNumber;
	}

	public String getAcCurrency() {
		return acCurrency;
	}

	public void setAcCurrency(String acCurrency) {
		this.acCurrency = acCurrency;
	}

	public Teller getTeller() {
		return teller;
	}

	public void setTeller(Teller teller) {
		this.teller = teller;
		this.tId = this.teller.gettId();
	}

	public Boolean getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(Boolean isDelete) {
		this.isDelete = isDelete;
	}

	@Override
	public String toString() {
		return "Account [acId=" + acId + ", acPassword=" + acPassword
				+ ", acBalence=" + acBalance + ", acCreateTime=" + acCreateTime
				+ ", acCreateAddress=" + acCreateAddress + ", acState="
				+ acState + ", acNumber=" + acNumber + ", acCurrency="
				+ acCurrency + "]";
	}

}

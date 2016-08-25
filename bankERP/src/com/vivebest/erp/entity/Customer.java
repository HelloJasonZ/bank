package com.vivebest.erp.entity;

import java.util.Date;


public class Customer {
	    private int cusId;//客户id
	    private String cusName;//用户名
	    private String cusPassword;//客户密码
	    private String cusPhone;//客户手机
	    private String cusIdCard;//客户身份证
	    private String cusEmail;//客户邮件
	    private String cusAddress;//客户地址
	    private boolean cusState;//客户状态
	    private Date cusCreateTime;//创建客户时间
	    private Date cusLoginTime;//客户登陆时间
	    private int tId;//开户柜员id
	    private boolean isDelete;//软删除
	    private Teller teller;//开户柜员
	    
	    
	    
		public Customer() {
			super();
		}


		public Customer(int cusId, String cusName, String cusPassword,
				String cusPhone, String cusIdCard, String cusEmail,
				String cusAddress, boolean cusState, Date cusCreateTime,
				Date cusLoginTime, int tId, boolean isDelete) {
			super();
			this.cusId = cusId;
			this.cusName = cusName;
			this.cusPassword = cusPassword;
			this.cusPhone = cusPhone;
			this.cusIdCard = cusIdCard;
			this.cusEmail = cusEmail;
			this.cusAddress = cusAddress;
			this.cusState = cusState;
			this.cusCreateTime = cusCreateTime;
			this.cusLoginTime = cusLoginTime;
			this.tId = tId;
			this.isDelete = isDelete;
		}


		public Customer(int cusId, String cusName, String cusPassword,
				String cusPhone, String cusIdCard, String cusEmail,
				String cusAddress, boolean cusState, Date cusCreatTime,
				Date cusLoginTime, int tId, boolean isDelete, Teller teller) {
			super();
			this.cusId = cusId;
			this.cusName = cusName;
			this.cusPassword = cusPassword;
			this.cusPhone = cusPhone;
			this.cusIdCard = cusIdCard;
			this.cusEmail = cusEmail;
			this.cusAddress = cusAddress;
			this.cusState = cusState;
			this.cusCreateTime = cusCreateTime;
			this.cusLoginTime = cusLoginTime;
			this.tId = tId;
			this.isDelete = isDelete;
			this.teller = teller;
		}


		public int getCusId() {
			return cusId;
		}
		public void setCusId(int cusId) {
			this.cusId = cusId;
		}
		public String getCusName() {
			return cusName;
		}
		public void setCusName(String cusName) {
			this.cusName = cusName;
		}
		public String getCusPassword() {
			return cusPassword;
		}
		public void setCusPassword(String cusPassword) {
			this.cusPassword = cusPassword;
		}
		public String getCusPhone() {
			return cusPhone;
		}
		public void setCusPhone(String cusPhone) {
			this.cusPhone = cusPhone;
		}
		public String getCusIdCard() {
			return cusIdCard;
		}
		public void setCusIdCard(String cusIdCard) {
			this.cusIdCard = cusIdCard;
		}
		public String getCusEmail() {
			return cusEmail;
		}

		public void setDelete(boolean isDelete) {
			this.isDelete = isDelete;
		}


		public void setCusEmail(String cusEmail) {
			this.cusEmail = cusEmail;
		}
		public String getCusAddress() {
			return cusAddress;
		}
		public void setCusAddress(String cusAddress) {
			this.cusAddress = cusAddress;
		}
		public boolean getCusState() {
			return cusState;
		}
		public void setCusState(boolean cusState) {
			this.cusState = cusState;
		}
		public Date getCusCreateTime() {
			return cusCreateTime;
		}
		public void setCusCreateTime(Date cusCreateTime) {
			this.cusCreateTime = cusCreateTime;
		}
		public Date getCusLoginTime() {
			return cusLoginTime;
		}
		public void setCusLoginTime(Date cusLoginTime) {
			this.cusLoginTime = cusLoginTime;
		}
		public Teller getTeller() {
			return teller;
		}
		public void setTeller(Teller teller) {
			this.teller = teller;
			
		}
		
		public int gettId() {
			return tId;
		}


		public boolean getIsDelete() {
			return isDelete;
		}


		public void settId(int tId) {
			this.tId = tId;
		}


		public void setIsDelete(boolean isDelete) {
			this.isDelete = isDelete;
		}


		@Override
		public String toString() {
			return "Customer [cusId=" + cusId + ", cusName=" + cusName
					+ ", cusPassword=" + cusPassword + ", cusPhone=" + cusPhone
					+ ", cusIdCard=" + cusIdCard + ", cusEmail=" + cusEmail
					+ ", cusAddress=" + cusAddress + ", cusState=" + cusState
					+ ", cusCreateTime=" + cusCreateTime + ", cusLoginTime="
					+ cusLoginTime + ", tId=" + tId + ", isDelete=" + isDelete
					+ ", teller=" + teller + "]";
		}

	    
	    
}

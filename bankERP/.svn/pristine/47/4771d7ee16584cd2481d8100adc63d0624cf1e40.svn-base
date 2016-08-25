package com.vivebest.erp.service;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import com.vivebest.erp.entity.Account;
import com.vivebest.erp.entity.Customer;
import com.vivebest.erp.entity.Page;

public interface AccountService {
	/**
	 * 插入账户到account数据库中
	 * @param account
	 */
	public abstract void insertAccount(Account account);
	
	/**
	 * 查询数据库中所有的账户
	 * @param 
	 * @return
	 */
	public abstract List<Account> selectAllAccounts();

	/**
	 *取款
	 * @param account
	 * @param opernum
	 * @return
	 */
	public abstract Boolean getMoney(Account account,BigDecimal opernum);

	/**
	 * 
	 * 存款
	 * @param account
	 * @param opernum
	 */
	public abstract void saveMoney(Account account,BigDecimal opernum);
	
	/**
	 * 转账方法中---账户扣钱
	 * @param account
	 * @param opernum
	 * @param date
	 * @param trNumber
	 * @return
	 */
	public abstract Boolean plusMoney(Account account,BigDecimal opernum, Date date, String trNumber);

	
	/**
	 * 转账方法中---账户加钱
	 * @param account
	 * @param opernum
	 * @param date
	 * @param trNumber
	 */
	public abstract void addMoney(Account account,BigDecimal opernum, Date date, String trNumber);

	
	/**
	 * 转账
	 * @param account
	 * @param opernum
	 * @param otheraccount
	 * @return
	 */
	public abstract Boolean updateTransferMoney(Account account,BigDecimal opernum,Account otheraccount);

	
	/**
	 * 更新账户信息，如余额等
	 * @param account
	 */
	public abstract void updateAccount(Account account);
	
	/**
	 * 检查用户输入的密码与数据库中密码是否相同
	 * @param account
	 * @return
	 */
	public abstract Boolean checkAccountPassword(Account account);
	
	
	/**
	 * 软删除账户
	 * @param account
	 */
	public abstract void deleteAccount(Account account);
	
	/**
	 * 通过用户id查询该用户所有的账户
	 * @param cusId
	 * @return
	 */
	public List<Account> getAccountsOfCustomer(int cusId);

	
	/**
	 * 通过传入部分账户信息，从数据库中查询完整账户信息
	 * @param account
	 * @return
	 */
	public Account selectFromAccount(Account account);
	
	/**
	 * 通过页码查询相应的account
	 * @param pageNumber
	 * @param pageSize
	 * @param account
	 * @return
	 */
	public abstract Page<Account> getAllAccount2(String pageNumber,
			int pageSize, Account account,Customer customer);
	
	/**
	 * 插入账户信息到数据库中
	 * @param account
	 */
	public void insertToAccount(Account account);
}

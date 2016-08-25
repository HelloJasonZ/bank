package com.vivebest.erp.mapper;

import java.util.HashMap;
import java.util.List;

import com.vivebest.erp.entity.Account;

public interface AccountMapper {
	/**
	 * 插入账户信息到数据库中
	 * @param account
	 */
	public  void insertToAccount(Account account);
	/**
	 * 从数据库中查询账户信息
	 * @param account
	 * @return
	 */
	public Account selectFromAccount(Account account);

	/**
	 * 传入部分账户信息，更新账户其他信息
	 * @param account
	 */
	public abstract void updateAccount(Account account);

	/**
	 * 软删除某个账户
	 * @param account
	 */
	public abstract void deleteAccount(Account account);
	
	/**
	 * 查看所有账户信息
	 * @return
	 */
	public abstract List getAllAccounts();
	

	//public abstract List getAccountsOfCustomer(int cusId);

	/**
	 * 传入一个客户id查询该客户所有的账户
	 * @param cusId
	 * @return
	 */
	public List<Account> getAccountsOfCustomer(int cusId);

	/**
	 * 查询数据库中所有的记录数
	 * @param account
	 * @return
	 */
	public abstract int selectTotalRecord(HashMap<String, Object> map);

	public abstract List<Account> getAllAccount2(HashMap<String, Object> map);
}

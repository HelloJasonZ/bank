package com.vivebest.erp.service.impl;

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vivebest.erp.entity.Account;
import com.vivebest.erp.entity.Customer;
import com.vivebest.erp.entity.Page;
import com.vivebest.erp.entity.Transactions;
import com.vivebest.erp.entity.TransferInfo;
import com.vivebest.erp.mapper.AccountMapper;
import com.vivebest.erp.mapper.TransactionsMapper;
import com.vivebest.erp.mapper.TransferInfoMapper;
import com.vivebest.erp.service.AccountService;

@Service
public class AccountServiceImpl implements AccountService {
	@Autowired
	private AccountMapper accountMapper;
	@Autowired
	private TransactionsMapper transactionsMapper;
	@Autowired
	private TransferInfoMapper transferInfoMapper;

	@Override
	public void insertAccount(Account account) {
		// TODO Auto-generated method stub
		accountMapper.insertToAccount(account);
	}

	@Override
	public List<Account> selectAllAccounts() {
		// TODO Auto-generated method stub
		List<Account> list = accountMapper.getAllAccounts();
		return list;
	}

	/**
	 * 
	 */
	@Override
	public Boolean getMoney(Account account, BigDecimal opernum) {
		// TODO Auto-generated method stub
		Account acc = accountMapper.selectFromAccount(account);
		BigDecimal bd = acc.getAcBalance();
		if (bd.compareTo(opernum) == 1 || bd.compareTo(opernum) == 0) {
			BigDecimal tmp = bd.subtract(opernum);
			Account updateacc = new Account();
			updateacc.setAcId(acc.getAcId());
			updateacc.setAcBalance(tmp);
			accountMapper.updateAccount(updateacc);
			
			String trNumber = account.getAcNumber().substring(15)
					+ System.currentTimeMillis();
			Transactions transactions = new Transactions();
			transactions.setAcNumber(acc.getAcNumber());
			transactions.setCusId(acc.getCusId());
			transactions.setDelete(true);
			transactions.setTrAddress("广东省深圳市");
			transactions.setTrBalance(opernum);
			transactions.setTrTime(new Date());
			transactions.setTrType(1);
			transactions.setTrNumber(trNumber);
			transactionsMapper.insertToTransactions(transactions);
			return true;
		} else {
			System.out.println("对不起，您的账户余额不足，无法转账");
			return false;
		}
	}

	@Override
	public void saveMoney(Account account, BigDecimal opernum) {
		// TODO Auto-generated method stub
		Account acc = accountMapper.selectFromAccount(account);
		BigDecimal bd = acc.getAcBalance();
		acc.setAcBalance(bd.add(opernum));
		Account updateacc = new Account();
		updateacc.setAcId(acc.getAcId());
		updateacc.setAcBalance(acc.getAcBalance());
		accountMapper.updateAccount(updateacc);
		
		Transactions transactions = new Transactions();
		transactions.setAcNumber(acc.getAcNumber());
		transactions.setCusId(acc.getCusId());
		transactions.setDelete(true);
		transactions.setTrAddress("广东省深圳市");
		transactions.setTrBalance(opernum);
		transactions.setTrTime(new Date());
		transactions.setTrType(2);
		String trNumber = account.getAcNumber().substring(15)
				+ System.currentTimeMillis();
		transactions.setTrNumber(trNumber);
		System.out.println(transactions.toString());
		transactionsMapper.insertToTransactions(transactions);
	}

	@Override
	public void addMoney(Account account, BigDecimal opernum, Date trTime,
			String trNumber) {
		// TODO Auto-generated method stub
		System.out.println(account.getAcNumber());
		System.out.println(account.toString());
		Account acc = accountMapper.selectFromAccount(account);
		BigDecimal bd = acc.getAcBalance();
		acc.setAcBalance(bd.add(opernum));
		
		Account updateacc = new Account();
		updateacc.setAcId(acc.getAcId());
		updateacc.setAcBalance(acc.getAcBalance());
		accountMapper.updateAccount(updateacc);
		
		
		Transactions transactions = new Transactions();
		transactions.setAcNumber(acc.getAcNumber());
		transactions.setCusId(acc.getCusId());
		transactions.setDelete(true);
		transactions.setTrAddress("广东省深圳市");
		transactions.setTrBalance(opernum);
		transactions.setTrTime(trTime);
		transactions.setTrType(3);
		transactions.setTrNumber(trNumber);
		transactionsMapper.insertToTransactions(transactions);
	}

	@Override
	public Boolean plusMoney(Account account, BigDecimal opernum, Date trTime,
			String trNumber) {
		// TODO Auto-generated method stub
		System.out.println(account.getAcNumber());
		System.out.println(account.toString());
		Account acc = accountMapper.selectFromAccount(account);
		BigDecimal bd = acc.getAcBalance();
		if (bd.compareTo(opernum) == 1 || bd.compareTo(opernum) == 0) {
			BigDecimal tmp = bd.subtract(opernum);
			Account updateacc = new Account();
			updateacc.setAcId(acc.getAcId());
			updateacc.setAcBalance(tmp);
			accountMapper.updateAccount(updateacc);
			
			Transactions transactions = new Transactions();
			transactions.setAcNumber(acc.getAcNumber());
			transactions.setCusId(acc.getCusId());
			transactions.setDelete(true);
			transactions.setTrAddress("广东省深圳市");
			transactions.setTrBalance(opernum);
			transactions.setTrTime(trTime);
			transactions.setTrType(4);
			transactions.setTrNumber(trNumber);
			transactionsMapper.insertToTransactions(transactions);
			return true;
		} else {
			System.out.println("对不起，您的账户余额不足，无法转账");
			return false;
		}
	}

	
	@Override
	public Boolean updateTransferMoney(Account account, BigDecimal opernum,
			Account otheraccount) {
		// TODO Auto-generated method stub
		String trNumber = account.getAcNumber().substring(15)
				+ System.currentTimeMillis();
		Date trTime = new Date();
		
		Boolean flag = plusMoney(account, opernum, trTime, trNumber);
		TransferInfo transferInfo = new TransferInfo();
		transferInfo.setTiBalance(opernum);
		transferInfo.setTiInNum(otheraccount.getAcNumber());
		transferInfo.setTiOutNum(account.getAcNumber());
		transferInfo.setDelete(true);
		transferInfo.setTiTime(new Date());
		transferInfo.setTrNumber(trNumber);
		if (flag) {
			transferInfo.setTiState(true);
			transferInfo.setTiResult("转账成功");
			addMoney(otheraccount, opernum, trTime, trNumber);
			transferInfoMapper.insertToTransferInfo(transferInfo);
			return true;
		} else {
			transferInfo.setTiState(false);
			transferInfo.setTiResult("转账失败");
			transferInfoMapper.insertToTransferInfo(transferInfo);
			return false;
		}
	}

	@Override
	public void updateAccount(Account account) {
		// TODO Auto-generated method stub
		accountMapper.updateAccount(account);
	}

	@Override
	public Boolean checkAccountPassword(Account account) {
		// TODO Auto-generated method stub
		Boolean flag = true;
		Account acc = accountMapper.selectFromAccount(account);
		if (acc == null) {
			System.out.println("账户密码或者账户错误，请重新输入");
			flag = false;
		}
		return flag;
	}

	@Override
	public void deleteAccount(Account account) {
		// TODO Auto-generated method stub
		accountMapper.deleteAccount(account);
	}

	@Override
	public List<Account> getAccountsOfCustomer(int cusId) {
		// TODO Auto-generated method stub
		return accountMapper.getAccountsOfCustomer(cusId);
	}

	@Override
	public Page<Account> getAllAccount2(String pageNumber, int pageSize,
			Account account,Customer customer) {

		int pn = 1;

		try {
			// 一旦出现类型转换异常，则不会复制，pn为1
			pn = Integer.parseInt(pageNumber);
		} catch (NumberFormatException e) {
		}

		// 创建一个Page对象
		Page<Account> page = new Page<Account>();
		page.setPageNumber(pn);
		page.setPageSize(pageSize);

		HashMap<String, Object> map0 = new HashMap<>();
		map0.put("account", account);
		map0.put("customer", customer);
		if(accountMapper.selectTotalRecord(map0)==0){
			return page;
		}
		
		page.setTotalRecord(accountMapper.selectTotalRecord(map0));

		System.out.println(accountMapper.selectTotalRecord(map0)+"<<<<<<<<<<<<");
	
		HashMap<String, Object> map = new HashMap<>();
		map.put("page", page); 
		map.put("account", account);
		map.put("customer",customer);
		List<Account> data = accountMapper.getAllAccount2(map);

		page.setData(data);
		// return userMapper.getAllTradeInfo(page, accountId);
		return page;
	}

	@Override
	public Account selectFromAccount(Account account) {
		// TODO Auto-generated method stub
		return accountMapper.selectFromAccount(account);
	}

	@Override
	public void insertToAccount(Account account) {
		// TODO Auto-generated method stub
		accountMapper.insertToAccount(account);
	}

}

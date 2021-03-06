package com.vivebest.erp.service;

import java.io.ByteArrayOutputStream;
import java.util.List;

import com.vivebest.erp.entity.Page;
import com.vivebest.erp.entity.Transactions;

public interface TransactionsService {

	/**
	 * 向交易流水表插入数据
	 * 
	 * @param transactions
	 */
	public void InsertToTransactions(Transactions transactions);

	/**
	 * 获取所有的流水信息
	 * 
	 * @param transactions
	 * @return
	 */
	/*
	 * public List<Transactions> selectAllTransactions(Transactions
	 * transactions);
	 */

	/**
	 * 获取所有的流水信息分页
	 * 
	 * @param pageNumber
	 * @param pageSize
	 * @param transactions
	 * @return
	 */
	public Page<Transactions> selectAllTransactions(String pageNumber,
			int pageSize, Transactions transactions);

	/**
	 * 带查询条件的流水信息分页
	 * 
	 * @param pageNumber
	 * @param pageSize
	 * @param transactions
	 * @param minDate
	 * @param maxDate
	 * @return
	 */
	public Page<Transactions> getAllTransactionsByCondition(String pageNumber,
			int pageSize, Transactions transactions, String idCardString, String minDate,
			String maxDate);

	public List<Transactions> selectAllTransactionsTen(Transactions transactions);
	
	/**
	 * 生成excel文件
	 * @param transactions
	 * @return
	 */
	public ByteArrayOutputStream getDownFileOutStream(Transactions transactions);
}

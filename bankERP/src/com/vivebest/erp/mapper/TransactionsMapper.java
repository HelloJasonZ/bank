package com.vivebest.erp.mapper;

import java.util.List;
import java.util.Map;

import com.vivebest.erp.entity.Transactions;

public interface TransactionsMapper {
	
	/**
	 * 向流水表中添加记录
	 * @param transactions
	 */
	public void insertToTransactions(Transactions transactions);
	/**
	 * 更新流水表
	 * @param transactions
	 */
	public void updateTransactions(Transactions transactions);
	

	/**
	 * 普通分页时获取总记录数
	 * @param transactions
	 * @return
	 */
	public int selectTotalRecord2(Transactions transactions);
	
	/**
	 * 普通分页时获取data
	 * @param map
	 * @return
	 */
	public List<Transactions> selectAllTransactions2(Map<String, Object> map);
	
	/**
	 * 带查询条件分页时获取总记录数
	 * @param transactions
	 * @return
	 */
	public int selectTotalRecord3(Map<String, Object> map);
	
	/**
	 * 带查询条件分页时获取data
	 * @param map
	 * @return
	 */
	public List<Transactions> getAllTransactionsByCondition(
			Map<String, Object> map);
	
	
	public List<Transactions> selectAllTransactionsTen(Transactions transactions);

}

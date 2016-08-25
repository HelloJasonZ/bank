package com.vivebest.erp.service;

import java.util.List;

import com.vivebest.erp.entity.Page;
import com.vivebest.erp.entity.TransferInfo;

public interface TransferInfoService {
	
	/**
	 * 向数据插入转账流水信息
	 * @param transferInfo
	 */
	public void insertTransferInfo(TransferInfo transferInfo);
	
	/**
	 * 根据条件查询相关的转账信息
	 * @param transferInfo
	 * @return
	 */
	public List<TransferInfo> selectAllTransferInfo(TransferInfo transferInfo);

	/**
	 * 通过分页查询所有的记录
	 * @param pageNumber
	 * @param pageSize
	 * @param transferInfo
	 * @return
	 */
	public Page<TransferInfo> selectAllTransferInfo2(String pageNumber, int pageSize,
			TransferInfo transferInfo);
	
	/**
	 * 带查询条件的分页
	 * @param pageNumber
	 * @param pageSize
	 * @param transferInfo
	 * @param minDate
	 * @param maxDate
	 * @return
	 */
	public Page<TransferInfo> getAllTransferInfoByCondition(String pageNumber,
			int pageSize, TransferInfo transferInfo, String minString,
			String maxString);
	
	
}

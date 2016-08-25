package com.vivebest.erp.mapper;

import java.util.HashMap;
import java.util.List;

import com.vivebest.erp.entity.TransferInfo;

public interface TransferInfoMapper {
	/**
	 * 向数据库插入一条转账的记录
	 * @param transferInfo
	 */
	public void insertToTransferInfo(TransferInfo transferInfo);
	/**
	 * 更新转账的记录
	 * @param transferInfo
	 */
	public void updateTransferInfo(TransferInfo transferInfo);
	/**
	 * 查找全部的转账流水信息
	 * @param transferInfo
	 * @return
	 */
	public List<TransferInfo> selectAllTransferInfo(TransferInfo transferInfo);
	/**
	 * 分页查询总记录数
	 * @param transferInfo
	 * @return
	 */
	public int selectTotalRecord(TransferInfo transferInfo);
	
	/**
	 * 查询分页的数据
	 * @param map
	 * @return
	 */
	public List<TransferInfo> selectAllTransferInfo2(HashMap<String, Object> map);
	
	/**
	 * 带查询条件时的分页总记录数
	 * @param map
	 * @return
	 */
	public int selectTotalRecord2(HashMap<String, Object> map);
	
	/**
	 * 带查询条件时的分页数据
	 * @param map
	 * @return
	 */
	public List<TransferInfo> selectAllTransferInfo3(HashMap<String, Object> map);

}

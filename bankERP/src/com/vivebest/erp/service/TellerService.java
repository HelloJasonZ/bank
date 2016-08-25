package com.vivebest.erp.service;

import java.util.List;

import com.vivebest.erp.entity.Teller;

public interface TellerService {
	
	/**
	 * 添加柜员
	 * @param teller
	 * @return
	 */
	public boolean insertTeller(Teller teller);
	
	/**
	 * 修改柜员信息
	 * @param tid
	 * @return
	 */
	public boolean updateTeller(Teller teller);
	
	/**
	 * 查询柜员信息
	 * @param teller
	 * @return
	 */
	public Teller selectTeller(Teller teller);
	
	/**
	 * 修改柜员（软删除）
	 * @param teller
	 * @return
	 */
	public boolean deleteTeller(Teller teller);
	
	/**
	 * 柜员登录
	 * @param teller
	 * @return
	 */
	public Teller tellerLogin(Teller teller);
	
	/**
	 * 显示全部柜员信息
	 * @return
	 */
	public List<Teller> getAllTeller(Teller teller);

	
	/**
	 * 获取柜员信息
	 * @param teller
	 * @return
	 */
	public Teller getTellerMessage(Teller teller) ;
	
	/**
	 * 查找当前最大的工号
	 */
	public long getMaxTNumber();
}

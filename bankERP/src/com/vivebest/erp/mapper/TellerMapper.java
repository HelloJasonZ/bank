package com.vivebest.erp.mapper;

import java.util.List;

import com.vivebest.erp.entity.Teller;

public interface TellerMapper {
	/**
	 * 增加柜员
	 * @param teller
	 * @return
	 */
	public boolean insertTeller(Teller teller);
	
	/**
	 * 修改柜员信息
	 * @param teller
	 * @return
	 */
	public boolean updateTeller(Teller teller);
	
	/**
	 * 查询柜员信息selectTeller
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
	 * 显示全部故柜员信息
	 * @return
	 */
	public List<Teller> getAllTeller(Teller teller);
	
	/**
	 * 获取柜员信息
	 * @param teller
	 * @return
	 */
	public Teller getTellerMessage(Teller teller) ;

	
	public long getMaxTNumber();
	
}

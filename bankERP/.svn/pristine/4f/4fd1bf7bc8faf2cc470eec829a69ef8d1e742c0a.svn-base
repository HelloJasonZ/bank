package com.vivebest.erp.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.vivebest.erp.entity.Customer;
import com.vivebest.erp.entity.Transactions;

@Repository
public interface CustomerMapper {
	
	/**
	 * 增加客户信息
	 * @param customer
	 * @return 
	 * 
	 */
	public boolean addCustomer(Customer customer);
	
	/**
	 * 修改客户信息
	 * @param customer
	 * 
	 */
	public boolean updateCustomer(Customer customer);
	
	/**
	 * 修改客户软删除
	 * @param customer
	 */
	public boolean deleteCustomer(Customer customer);
	
	/**
	 * 得到所有客户信息
	 *
	 */
	public List<Customer> getAllCustomer();
	
	/**
	 * 通过用户名得到客户信息
	 * @param customer
	 * 
	 */
	public Customer getCustomerByCname(Customer customer);
	
	/**
	 * 通过多种途径得到客户信息(使用状态是必须添加其他字段来判断)
	 * @param customer
	 * @return
	 */
	public Customer getCustomer(Customer customer);
	
	/**
	 * 通过客户id得到客户信息
	 * @param customer
	 * @return
	 */
	public Customer getCustomerByCid(Customer customer);
	
	/**
	 * 客户登陆
	 * @param customer
	 * @param 
	 * @return
	 */
	public Customer customerLogin(Customer customer);
	/**
	 *  得到总页数
	 * @param customer
	 * @return
	 */
	public  int selectTotalRecord(); 
	/**
	 * 分页获取数据
	 * @param map
	 * @return
	 */
	public  List<Customer> getPartCustomer(HashMap<String, Object> map);
	

}


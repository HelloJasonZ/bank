package com.vivebest.erp.service;

import java.util.List;
import java.util.Map;

import com.vivebest.erp.entity.Customer;
import com.vivebest.erp.entity.Page;
import com.vivebest.erp.entity.Transactions;

public interface CustomerService {
	/**
	 * 增加客户信息
	 * @param customer
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
	 * 修改客户(软删除)
	 * @param customer
	 * 
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
	 * 通过id得到客户信息
	 * @param customer
	 * 
	 */
	
	public Customer getCustomerByCid(Customer customer);
	/**
	 * 客户登陆
	 * @param customer
	 * @return
	 */
	public Customer customerLogin(Customer customer);
	/**
	 * 通过多种途径得到客户信息
	 * @param customer
	 * @return
	 */
	public Customer getCustomer(Customer customer);
	
	/**
	 * 分页得到客户信息
	 * @param pageNumber
	 * @param pageSize
	 * @param customer
	 * @return
	 */
	public Page<Customer> getPartCustomer(String pageNumber, int pageSize);
	
	/**
	 * 带查询条件分页时获取data
	 * @param map
	 * @return
	 */
	public Page<Customer> getPartCustomerByCusId(
			String pageNumber, int pageSize,int	 cusId);


}

package com.vivebest.erp.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mysql.jdbc.jdbc2.optional.SuspendableXAConnection;
import com.vivebest.erp.entity.Customer;
import com.vivebest.erp.entity.Page;
import com.vivebest.erp.mapper.CustomerMapper;
import com.vivebest.erp.service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerMapper customerMapper;

	@Override
	/**
	 * 增加客户
	 */
	public boolean addCustomer(Customer customer) {
		return customerMapper.addCustomer(customer);
	}

	@Override
	/**
	 * 修改客户
	 */
	public boolean updateCustomer(Customer customer) {
		return customerMapper.updateCustomer(customer);

	}

	@Override
	/**
	 * 得到所有客户信息
	 */
	public List<Customer> getAllCustomer() {
		List<Customer> customerList = new ArrayList<>();
		 customerList=customerMapper.getAllCustomer();
		return customerList;
	}

	@Override
	/**
	 * 通过用户名得到客户信息
	 */
	public Customer getCustomerByCname(Customer customer) {
		Customer cu = customerMapper.getCustomerByCname(customer);
		return cu;
	}

	@Override
	/**
	 * 客户登陆
	 */
	public Customer customerLogin(Customer customer) {
		// TODO Auto-generated method stub
		Customer cu = customerMapper.customerLogin(customer);
		return cu;
	}

	@Override
	/**
	 * 软删除
	 */
	public boolean deleteCustomer(Customer customer) {
		return customerMapper.deleteCustomer(customer);

	}

	@Override
	/**
	 * 通过Cid得到客户信息
	 */
	public Customer getCustomerByCid(Customer customer) {
		// TODO Auto-generated method stub
		return customerMapper.getCustomerByCid(customer);
	}

	/**
	 * 通过多种途径得到客户信息
	 * 
	 * @param customer
	 * @return
	 */
	@Override
	public Customer getCustomer(Customer customer) {
		// TODO Auto-generated method stub
		return customerMapper.getCustomer(customer);
	}

	/**
	 * 分页得到客户信息
	 */
	@Override
	public Page<Customer> getPartCustomerByCusIdCard(String pageNumber, int pageSize,Customer customer) {
		int pn = 1;
		try {
			// 一旦出现类型转换异常，则不会复制，pn为1
			pn = Integer.parseInt(pageNumber);
		} catch (NumberFormatException e) {
		}
		// 创建一个Page对象
		Page<Customer> page = new Page<Customer>();
		page.setPageNumber(pn);
		page.setPageSize(pageSize);
		HashMap<String, Object> map0 =new HashMap<>();
		map0.put("customer", customer);
		if (customerMapper.selectTotalRecord(map0)==0) {
			return page;
		}
		page.setTotalRecord(customerMapper.selectTotalRecord(map0 ));
		HashMap<String, Object> map = new HashMap<>();
		map.put("page", page);
		map.put("customer", customer);
		List<Customer> data = customerMapper.getPartCustomerByCusIdCard(map);
		page.setData(data);
		return page;
	}

	@Override
	public Page<Customer> getPartCustomer(String pageNumber, int pageSize) {
		// TODO Auto-generated method stub
		return null;
	}


}

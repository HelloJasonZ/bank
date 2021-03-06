package com.vivebest.erp.service.impl;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vivebest.erp.entity.Page;
import com.vivebest.erp.entity.TransferInfo;
import com.vivebest.erp.mapper.TransferInfoMapper;
import com.vivebest.erp.service.TransferInfoService;

@Service
public class TransferInfoServiceImpl implements TransferInfoService {

	@Autowired
	private TransferInfoMapper transferInfoMapper;

	/**
	 * 向数据插入转账流水信息
	 * 
	 * @param transferInfo
	 */
	@Override
	public void insertTransferInfo(TransferInfo transferInfo) {
		// TODO Auto-generated method stub
		transferInfoMapper.insertToTransferInfo(transferInfo);
	}

	/**
	 * 根据条件查询相关的转账信息
	 * 
	 * @param transferInfo
	 * @return
	 */
	@Override
	public List<TransferInfo> selectAllTransferInfo(TransferInfo transferInfo) {
		// TODO Auto-generated method stub
		return transferInfoMapper.selectAllTransferInfo(transferInfo);
	}
	
	/**
	 * 分页
	 */
	@Override
	public Page<TransferInfo> selectAllTransferInfo2(String pageNumber,
			int pageSize, TransferInfo transferInfo) {
		// 为pn设置一个默认值
		int pn = 1;

		try {
			// 一旦出现类型转换异常，则不会复制，pn为1
			pn = Integer.parseInt(pageNumber);
		} catch (NumberFormatException e) {
		}
		// 创建一个Page对象
		Page<TransferInfo> page = new Page<TransferInfo>();
		page.setPageNumber(pn);
		page.setPageSize(pageSize);
		
		page.setTotalRecord(transferInfoMapper.selectTotalRecord(transferInfo));

		HashMap<String, Object> map = new HashMap<>();
		map.put("page", page);
		map.put("transferInfo", transferInfo);

		List<TransferInfo> data = transferInfoMapper
				.selectAllTransferInfo2(map);

		page.setData(data);
		// return userMapper.getAllTradeInfo(page, accountId);
		return page;
	}

	@Override
	/**
	 * 带查询条件的分页
	 */
	public Page<TransferInfo> getAllTransferInfoByCondition(String pageNumber,
			int pageSize, TransferInfo transferInfo, String minString,
			String maxString) {
		// 为pn设置一个默认值
		int pn = 1;

		try {
			// 一旦出现类型转换异常，则不会复制，pn为1
			pn = Integer.parseInt(pageNumber);
		} catch (NumberFormatException e) {
		}

		// 创建一个Page对象
		Page<TransferInfo> page = new Page<TransferInfo>();
		page.setPageNumber(pn);
		page.setPageSize(pageSize);

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		Date minDate = null;
		
		HashMap<String, Object> map = new HashMap<>();
		try {
			minDate = sdf.parse(minString);
		} catch (Exception e) {
		//	minDate = sdf.parse("1970-1-1 00:00:00");
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Date maxDate = null;
		try {
			maxDate = sdf.parse(maxString);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		Calendar c = Calendar.getInstance();
		if((minDate != null)&&(maxDate == null)){
			maxDate = new Date();
			System.out.println("最大时间：>>>>>>>>>>>>"+maxDate);
		}
		
		if((minDate == null)&&(maxDate != null)){
			c.setTime(maxDate);
			System.out.println("最大时间：<<<<<<<<<<<<<<"+maxDate);
			int day = c.get(Calendar.DATE);  
		    c.set(Calendar.DATE, day - 1);  
			minDate = c.getTime();
			System.out.println("最小时间：<<<<<<<<<<<<<<"+minDate);
		}
		
		map.put("minDate", minDate);
		map.put("maxDate", maxDate);
		
		map.put("transferInfo", transferInfo);
		
		if(transferInfoMapper.selectTotalRecord2(map) ==0){
			page.setData(null);
			return page;
		}
		page.setTotalRecord(transferInfoMapper.selectTotalRecord2(map));
		map.put("page", page);

		List<TransferInfo> data = transferInfoMapper.selectAllTransferInfo3(map);

		page.setData(data);
		// return userMapper.getAllTradeInfo(page, accountId);
		return page;
	}

}

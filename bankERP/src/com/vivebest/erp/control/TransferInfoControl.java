package com.vivebest.erp.control;


import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.vivebest.erp.entity.Page;
import com.vivebest.erp.entity.Teller;
import com.vivebest.erp.entity.TransferInfo;
import com.vivebest.erp.service.TransferInfoService;

@Controller
@RequestMapping("/transferInfo")
public class TransferInfoControl {
	
	@Autowired
	private TransferInfoService transferInfoService;
	
	/**
	 * 带查询条件的分页
	 * @param request
	 * @param map
	 * @return
	 */
	@RequestMapping(value="listByDate.do",method = RequestMethod.GET)
	public String selectAllTransferInfoByCondition(HttpServletRequest request,Map<String, Object> map){
		String pageNumber = request.getParameter("pageNumber");
		HttpSession session = request.getSession();
		Teller teller = (Teller) session.getAttribute("teller");
		if(teller == null){
			return "teller/login";
		}
		String minDate = request.getParameter("minDate");
		String maxDate = request.getParameter("maxDate");
		String tiOutNum = request.getParameter("tiOutNum");
		System.out.println(minDate+"-------"+maxDate);
		System.out.println("kkkkkkkkkkkkkkkk"+tiOutNum);
		int pageSize = 10;
		TransferInfo transferInfo = new TransferInfo();
		if(tiOutNum.equals("")){
			transferInfo.setTiOutNum(null);
		}else {
			transferInfo.setTiOutNum(tiOutNum);			
		}
		Page<TransferInfo> page = transferInfoService.getAllTransferInfoByCondition(pageNumber,
				pageSize, transferInfo, minDate, maxDate);
//		List<TransferInfo> list = transferInfoService.selectAllTransferInfo(transferInfo);
		page.setPath("/bankERP/transferInfo/listByDate.do?tiOutNum="+tiOutNum+"&minDate="+minDate+"&maxDate="+maxDate+"&");
		map.put("page", page);
		return "page/transferInfo_list";
	}
	/**
	 * 普通分页
	 * @param request
	 * @param map
	 * @return
	 */
	@RequestMapping(value="/list.do",method = RequestMethod.GET)
	public String selectAllTransferInfo(HttpServletRequest request,Map<String, Object> map){
		HttpSession session = request.getSession();
		Teller teller = (Teller) session.getAttribute("teller");
		if(teller == null){
			return "teller/login";
		}
		String pageNumber = request.getParameter("pageNumber");
		int pageSize = 10;
		TransferInfo transferInfo = new TransferInfo();
	//	transferInfo.setTiOutNum("622202151");
		transferInfo.setTiOutNum(null);
		Page<TransferInfo> page = transferInfoService.selectAllTransferInfo2(pageNumber,
				pageSize, transferInfo);
		System.out.println(page.toString());
		page.setPath("/bankERP/transferInfo/list.do?");
		map.put("page", page);
		return "page/transferInfo_list";
	}
}

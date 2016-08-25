package com.vivebest.erp.control;


import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.vivebest.erp.entity.Page;
import com.vivebest.erp.entity.Teller;
import com.vivebest.erp.entity.Transactions;
import com.vivebest.erp.service.TransactionsService;

@Controller
@RequestMapping("/transactions")
public class TransactionsControl {
	
	@Autowired
	private TransactionsService transactionsService;
	
	/**
	 * 带查询条件的分页
	 * @param request
	 * @param map
	 * @return
	 */
	@RequestMapping(value = "/listByDate.do", method = RequestMethod.GET)
	public String selectAllTransactionsByCondition(HttpServletRequest request,
			Map<String, Object> map) {
		HttpSession session = request.getSession();
		Teller teller = (Teller) session.getAttribute("teller");
		if (teller == null) {
			return "teller/login";
		}
		String pageNumber = request.getParameter("pageNumber");
		System.out.println(pageNumber + "<<<<<<<<<<<<");
		String minDate = request.getParameter("minDate");
		String maxDate = request.getParameter("maxDate");
		String acNumber = request.getParameter("acNumber");
		String idCard = request.getParameter("cus_idcard");
		System.out.println("<<<<<<<<<<<<<<<<<<<<<<<<<" + acNumber);
		int pageSize = 10;
		Transactions transactions = new Transactions();
		if (acNumber.equals("")) {
			transactions.setAcNumber(null);
		} else {
			transactions.setAcNumber(acNumber);
		}
		Page<Transactions> page = transactionsService
				.getAllTransactionsByCondition(pageNumber, pageSize,
						transactions, idCard, minDate, maxDate);
		page.setPath("/bankERP/transactions/listByDate.do?acNumber=" + acNumber
				+ "&minDate=" + minDate + "&maxDate=" + maxDate + "&");
		map.put("page", page);
		return "page/transactions_list";
	}
	/**
	 * 普通分页
	 * @param request
	 * @param map
	 * @return
	 */
	@RequestMapping(value="/list.do",method = RequestMethod.GET)
	public String selectAllTransactions(HttpServletRequest request,Map<String, Object> map){
		HttpSession session = request.getSession();
		Teller teller = (Teller) session.getAttribute("teller");
		if(teller == null){
			return "teller/login";
		}
		String pageNumber = request.getParameter("pageNumber");
		int pageSize = 10;
		Transactions transactions = new Transactions();
		transactions.setAcNumber(null);
		Page<Transactions> page = transactionsService.selectAllTransactions(pageNumber,
				pageSize, transactions);
		
		page.setPath("/bankERP/transactions/list.do?");
		map.put("page", page);
		return "page/transactions_list";
	}
	/**
	 * 普通分页
	 * 
	 * @param request
	 * @param map
	 * @return
	 */
	// ${ctx}/transactions/readTransactions?account_number=${account.acNumber}
	@RequestMapping(value = "/list_ten.do", method = RequestMethod.GET)
	public String selectAllTransactionsTen(HttpServletRequest request,HttpSession session,
			Map<String, Object> map) {
	
		
		 Teller teller = (Teller) session.getAttribute("teller");
		 if(teller == null)
		 { 
			 System.out.println("用户失效");
			 return "teller/login"; 
		}
		 else
		 {
		String acNumber = request.getParameter("account_number");
		System.out.println("<<<<<<<<<<<<<<<<<<<<<" + acNumber);
		Transactions transactions = new Transactions();
		transactions.setAcNumber(acNumber);
		List<Transactions> transactionsMap = transactionsService
				.selectAllTransactionsTen(transactions);
		
		map.put("transactionsMap", transactionsMap);
		return "page/transactions_list_ten";
		 }
}

	@RequestMapping(value = "/downToExcel.do", method = RequestMethod.GET)
	public String downTransactionsToExcel(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String acNumber = request.getParameter("DownNumber");
		Transactions transactions = new Transactions();
		transactions.setAcNumber(acNumber);
		String fileName = System.currentTimeMillis()+".xls";
	
		ByteArrayOutputStream os = transactionsService.getDownFileOutStream(transactions);
		
		byte[] content = os.toByteArray();
		InputStream is = new ByteArrayInputStream(content);
		// 设置response参数，可以打开下载页面
		response.reset();
		response.setContentType("application/vnd.ms-excel;charset=utf-8");
		response.setHeader("Content-Disposition", "attachment;filename="
				+ new String((fileName).getBytes(), "UTF-8"));
		ServletOutputStream out = response.getOutputStream();
		BufferedInputStream bis = null;
		BufferedOutputStream bos = null;
		try {
			bis = new BufferedInputStream(is);
			bos = new BufferedOutputStream(out);
			byte[] buff = new byte[2048];
			int bytesRead;
			// Simple read/write loop.
			while (-1 != (bytesRead = bis.read(buff, 0, buff.length))) {
				bos.write(buff, 0, bytesRead);
			}
		} catch (final IOException e) {
			throw e;
		} finally {
			if (bis != null)
				bis.close();
			if (bos != null)
				bos.close();
		}
		return "page/println_success";
	}
}

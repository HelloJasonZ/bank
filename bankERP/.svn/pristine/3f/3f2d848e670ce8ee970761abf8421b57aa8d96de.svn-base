package com.vivebest.erp.control;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;

import org.junit.runners.Parameterized.Parameter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.vivebest.erp.entity.Account;
import com.vivebest.erp.entity.Authority;
import com.vivebest.erp.entity.Customer;
import com.vivebest.erp.entity.Page;
import com.vivebest.erp.entity.Teller;
import com.vivebest.erp.service.AccountService;
import com.vivebest.erp.service.AuthorityService;
import com.vivebest.erp.service.CustomerService;
import com.vivebest.erp.service.impl.CustomerServiceImpl;
import com.vivebest.erp.utils.MD5;

@Controller
@RequestMapping("/customer")
public class CustomerControl {

	@Autowired
	private CustomerService customerService;

	@Autowired
	private AccountService accountService;

	@Autowired
	private AuthorityService authorityService;


	/**
	 * 客户注册
	 * @param model
	 * @param cusName
	 * @param cusPassword
	 */
	@RequestMapping(value = "/addCustomer", method = RequestMethod.POST)
	public String registerCustomer(Model model, HttpServletRequest req) {
		Object obj = req.getSession().getAttribute("register");
		if(null != obj){
			req.getSession().setAttribute("register", new Date());
			String cusName = req.getParameter("cusName");
			String password = req.getParameter("cusPassword");
			String phone = req.getParameter("cusPhone");
			String email = req.getParameter("cusEmail");
			String cusAddress = req.getParameter("cusAddress");
			String cusIdCard = req.getParameter("cusIdCard");
			Customer customer = new Customer();
			customer.setCusName(cusName);
			customer.setCusPassword(MD5.encode(password.trim()));
			customer.setCusPhone(phone);
			customer.setCusEmail(email);
			customer.setCusAddress(cusAddress);
			customer.setCusIdCard(cusIdCard);
			customer.setCusCreateTime(new Date());
			customer.setCusState(true);
			HttpSession session = req.getSession();
			Teller teller = (Teller) session.getAttribute("teller");
			customer.settId(teller.gettId());
			customer.setIsDelete(true);
			customer.setCusLoginTime(new Date());
			boolean ok = customerService.addCustomer(customer);
			//System.out.println(customer);
			if (ok) {
				//model.addAttribute("customer", customer);
				req.getSession().removeAttribute("register");
				Authority authority = new Authority();
				authority.setDelete(true);
				List<Authority> authorities = authorityService.getAllAu(authority);
				req.setAttribute("au_list", authorities);
				return "teller/home";
			} else {
				model.addAttribute("message", "注册失败");
				req.getSession().removeAttribute("register");
				return "teller/home";
			}
		}else{
			return "teller/home";
		}
	}

	/**
	 * 客户登陆
	 * @param model
	 * @param cusName
	 * @param cusPassword
	 */
	@RequestMapping(value = "/customerLogin", method = RequestMethod.POST)
	@ResponseBody
	public Customer customerLogin(@RequestParam String cusName,
			@RequestParam String cusPassword, HttpSession session) {
		// 判断柜员是否登陆
		Teller teller = (Teller) session.getAttribute("teller");
		if (teller == null) {
			// 柜员信息失效
			return null;
		} else {
			Customer customer = new Customer();
			customer.setCusPhone(cusName);
			customer.setCusPassword(MD5.encode(cusPassword.trim()));
			Customer newCu = customerService.customerLogin(customer);
			if (newCu != null) {
				if (newCu.getIsDelete() && newCu.getCusState()) {
					// 修改用户登陆时间
					session.setAttribute("customer", newCu);
					newCu.setCusLoginTime(new Date());
					customerService.updateCustomer(newCu);
					// 存在登陆成功
					System.out.println(">>>>>>>>>>>>修改成功");
					return newCu;
				} else {
					// 不存在
					System.out.println(">>>>>>>>>>>客户名失效");
					return null;
				}
			} else {
				System.out.println(">>>>>>>>>>>登陆失败");
				return null;
			}
		}
	}

	/**
	 * 判断用户 管理员 是否失效
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/customerLoginOut", method = RequestMethod.POST)
	@ResponseBody
	public String customerLoginOut(HttpSession session) {
		Customer customer = (Customer) session.getAttribute("customer");
		Teller teller = (Teller) session.getAttribute("teller");
		if (customer == null && teller == null) {
			// 用户失效重新登陆
			return "1";
		} else {
			// 查询客户处理事件数，等待写
			session.removeAttribute("customer");
			return "0";
		}
	}

	/**
	 * 校准手机号
	 * @param cusPhone
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/checkCusPhone", method = RequestMethod.POST)
	@ResponseBody
	public String checkCusPhone(@RequestParam String cusPhone, HttpSession session) {

		Customer customer = new Customer();
		customer.setCusPhone(cusPhone);
		Customer cus = customerService.getCustomer(customer);
		//System.out.println(cus);
		if (cus == null) {
			return "1";
		} else {
			return "0";
		}
	}

	/**
	 * 校准邮件
	 * @param cusEmail
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/checkEmail", method = RequestMethod.POST)
	@ResponseBody
	public String checkEmail(@RequestParam String cusEmail, HttpSession session) {

		Customer customer = new Customer();
		customer.setCusEmail(cusEmail);
		Customer cus = customerService.getCustomer(customer);
		//System.out.println(cus);
		if (cus == null) {
			return "1";
		} else {
			return "0";
		}
	}
	/**
	 * 校准身份证
	 * @param cusIdCard
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/checkCusIdCard", method = RequestMethod.POST)
	@ResponseBody
	public String checkCusIdCard(@RequestParam String cusIdCard, HttpSession session) {
		
		Customer customer = new Customer();
		customer.setCusIdCard(cusIdCard);
		Customer cus = customerService.getCustomer(customer);
		//System.out.println(cus);
		if (cus == null) {
			return "1";
		} else {
			return "0";
		}
	}
	/**
	 * 校准密码
	 * @param cusPassword
	 * @param cusPassword_1
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/check_againpassword", method = RequestMethod.POST)
	@ResponseBody
	public String check_againpassword(@RequestParam String cusPassword,
			@RequestParam String cusPassword_1, HttpSession session) {

		if (cusPassword.equals(cusPassword_1)) {
			return "1";
		} else {
			return "0";
		}
	}

	/**
	 * 修改客户信息
	 * @param model
	 * @param cusId
	 * @param cusName
	 * @param cusPassword
	 * @param phone
	 * @param email
	 * @param cusIdCard
	 * @param cusAddress
	 * @param states 
	 * @return
	 */
	@RequestMapping(value = "/updateCustomer", method = RequestMethod.POST)
	public String updateCustomer(Model model, 
			@RequestParam String cusName, @RequestParam String cusPassword,
			@RequestParam String cusPhone, @RequestParam String cusEmail,
			@RequestParam String cusIdCard, @RequestParam String cusAddress,
			HttpServletRequest req,HttpSession session) {
		List<Account> list = new ArrayList<>();
		//得到当前柜员信息  和  客户信息
		Teller teller=(Teller) session.getAttribute("teller");
		Customer c=(Customer) session.getAttribute("customer");
		Customer customer = new Customer();
		customer.setCusName(cusName);
		customer.setCusPassword(MD5.encode(cusPassword.trim()));
		customer.setCusPhone(cusPhone);
		customer.setCusEmail(cusEmail);
		customer.setCusIdCard(cusIdCard);
		customer.setCusAddress(cusAddress);
		customer.setCusState(true);
		//判断柜员 和 客户  是否失效
		if(c==null&&teller==null)
		{
			return"teller/home";
		}
		else if(teller==null&&c==null)
		{
			return "teller/login";
		}
		else
		{
		//判断是否修改成功
		boolean ok = customerService.updateCustomer(customer);
		if (ok) {
			Customer cus=new Customer();
			cus.setCusIdCard(cusIdCard);
			Customer custoList=customerService.getCustomer(cus);
			//判断管理员权限
			if(teller.getAutId()==1)
			{
				session.removeAttribute("customer");
				session.setAttribute("customer", custoList);
			}
			else
			{
				req.setAttribute("customer", custoList);
			}
			
			Customer s=(Customer) session.getAttribute("customer");
			list = accountService.getAccountsOfCustomer(s.getCusId());
			req.setAttribute("list", list);
			return "customer/base_customer";
		} else {
			model.addAttribute("message", "更新失败");
			return "customer/base_customer";
		}
		}
	}
	/**
	 * 修改客户权限
	 * @param model
	 * @param cusState
	 * @return
	 */
	@RequestMapping(value = "/backupdateCustomer", method = RequestMethod.POST)
	public String backupdateCustomer(Model model, @RequestParam String cusIdCard,
			@RequestParam String cusState,HttpServletRequest req,HttpSession session){
		//验证柜员是否登录
		Teller teller =(Teller) session.getAttribute("teller");
		if(teller==null)
		{
			return "teller/login";
		}
		else
		
		{
			Customer customer = new Customer();
			customer.setCusIdCard(cusIdCard);
			Customer cu=customerService.getCustomer(customer);
			if ("true".equals(cusState)) {
				cu.setCusState(true);
				boolean ok=customerService.updateCustomer(cu);
				Customer cus=new Customer();
				cus.setCusIdCard(cusIdCard);
				Customer custoList=customerService.getCustomer(cus);
				if(teller.getAutId()==1)
				{
					session.removeAttribute("customer");
					session.setAttribute("customer", custoList);
				}
				else
				{
					req.setAttribute("customer", custoList);
				}
				return "customer/getOneCustomer";
			}else if("false".equals(cusState)){
				cu.setCusState(false);
				boolean ok=customerService.updateCustomer(cu);
				Customer cus=new Customer();
				cus.setCusIdCard(cusIdCard);
				Customer custoList=customerService.getCustomer(cus);
				//System.out.println(custoList);
				if(teller.getAutId()==1)
				{
					session.removeAttribute("customer");
					session.setAttribute("customer", custoList);
				}
				else
				{
					req.setAttribute("customer", custoList);
				}
				return "customer/getOneCustomer";
			}
		}
		return null;
	}


	/**
	 * 得到客户详细信息
	 * @param model
	 * @param cusId
	 * @param isDelete
	 * @return
	 */
	@RequestMapping(value = "/showCustomer", method = RequestMethod.GET)
	public String showCustomer(Model model, HttpSession session) {
		Object customer = session.getAttribute("customer");
		Teller teller = (Teller) session.getAttribute("teller");
		List<Account> list = new ArrayList<>();
		//验证客户 与 管理员 是否都登录 
		if(customer==null&&teller!=null)
		{
			return "teller/home";
		}
		else if (customer == null && teller == null) {
			// 用户失效重新登陆
			return "teller/login";
		} 
		else {
			// 通过用户查询卡号
			Customer c=(Customer) session.getAttribute("customer");
			list = accountService.getAccountsOfCustomer(c.getCusId());
			model.addAttribute("list", list);
			return "customer/base_customer";
		}
	}

	/**
	 * 分页得到客户信息
	 * @param model
	 * @param cusId
	 * @param isDelete
	 * @return
	 */
	@RequestMapping(value = "/customerlist.do", method = RequestMethod.GET)
	public String selectAllTransferInfo(HttpServletRequest req,
			Map<String, Object> map) {
		String pageNumber = req.getParameter("pageNumber");//每次得到当前页数
		int pageSize = 5;//设定每页显示的条数
		Page<Customer> page = customerService.getPartCustomer(pageNumber,
				pageSize);
		page.setPath("/bankERP/customer/customerlist.do?");
		map.put("page", page);
		return "back/customer_list";
	}

	/**
	 * 得到用户详细信息
	 * @param model
	 * @param req
	 * @param rsp
	 * @return
	 * @throws UnsupportedEncodingException
	 */
	@RequestMapping(value = "/getOneCustomer", method = RequestMethod.GET)
	public String getOneCustomer(Model model, HttpServletRequest req,
			HttpServletResponse rsp) throws UnsupportedEncodingException {
		String cusIdCard = req.getParameter("cusIdCard");
		if("".equals(cusIdCard)){
			req.setAttribute("message", "用户身份证不能为空");
			return "customer/nullCustomer";

		}
		if (cusIdCard!=null) {
			Customer customer = new Customer();
			customer.setCusIdCard(cusIdCard);
			Customer cu = customerService.getCustomer(customer);
			if (cu != null) {
				HttpSession session = req.getSession();
				session.setAttribute("customer", cu);
				return "customer/getOneCustomer";
			} else {
				req.setAttribute("message", "无此用户");
				return "customer/nullCustomer";
			}
		} else {
			req.setAttribute("message", "用户身份证不能为空");
			return "customer/nullCustomer";
		}
	}
	/**
		 * 通过id得到客户信息进行详细查询
		 * @param model
		 * @param req
		 * @param rsp
		 * @return
		 */
	@RequestMapping(value = "/get_customer", method = RequestMethod.GET)
	public String get_customer(Model model, HttpServletRequest req,
			HttpServletResponse rsp) {
		int cid = Integer.parseInt(req.getParameter("cusId"));
		Customer customer = new Customer();
		customer.setCusId(cid);
		Customer cu = customerService.getCustomerByCid(customer);
		//System.out.println(cu);
		if (cu != null) {
			HttpSession session = req.getSession();
			session.setAttribute("customer", cu);
			return "customer/getOneCustomer";
		} else {
			req.setAttribute("message", " 无此用户");
			return "customer/getOneCustomer";
		}
	}
	/**
	 * 修改客户权限
	 * @param model
	 * @param req
	 * @param rsp
	 * @return
	 */
	@RequestMapping(value = "/getCustomerState", method = RequestMethod.GET)
	public String getCustomerState(Model model, HttpServletRequest req,
			HttpServletResponse rsp) {
		int cid = Integer.parseInt(req.getParameter("cusId"));
		Customer customer = new Customer();
		customer.setCusId(cid);
		Customer cu = customerService.getCustomerByCid(customer);
		if (cu != null) {
			HttpSession session = req.getSession();
			session.setAttribute("customer", cu);
			return "back/back_update_customer";
		} else {
			req.setAttribute("message", " 无此用户");
			return "back/back_update_customer";
		}
	}
	
	/**
	 * doubleSubmit问题处理
	 * @param model
	 * @param req
	 * @param rsp
	 * @return
	 */
	@RequestMapping(value = "/returnTakenSumbit", method = RequestMethod.GET)
	public String returnTakenSumbit(Model model, HttpServletRequest req,
			HttpServletResponse rsp) {
		Teller teller=(Teller) req.getSession().getAttribute("teller");
		if(teller==null)
		{
			return "teller/login";
		}
		else
		{
			req.getSession().setAttribute("register", new Date());
			return "customer/add_customer";
		}
	}
	
}



package com.vivebest.erp.control;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/test")
public class TestControl {

	
	@RequestMapping(value="/tPage", method = RequestMethod.GET)
	public String tPage()
	{
		System.out.println(">>>>>>>>>>>>>>>>>>>>>>>");
		return "/teller/login";
	}
}

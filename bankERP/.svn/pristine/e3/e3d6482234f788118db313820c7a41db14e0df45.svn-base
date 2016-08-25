package com.vivebest.erp.utils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.ws.rs.core.Application;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

public class AutoCollect  implements ServletContextListener{

	public AutoCollect(){
		super();
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		
		new AutoThread(arg0).start();
	}
	
	/**
	 * 开线程进程进行采集
	 * @author Jason_Z
	 *
	 */
	class AutoThread extends Thread {
		private ServletContextEvent sv;
		
		public AutoThread(ServletContextEvent s)
		{
			this.sv=s;
		}

		@Override
		public void run() {
			// TODO Auto-generated method stub
			SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			for(int i=1;1>0;i++)
			{
				try {
					System.out.println(">>>>>>>>>>第"+i+"次采集");
					System.out.println(">>>>>>>>>>更新时间"+sd.format(new Date()));
					//将数据采集放入Application
					Map<Integer,Integer> map=ReusltTeller.getMuner();
					ServletContext application = sv.getServletContext();   
					//遍历
					for (Integer key : map.keySet()) {
						   System.out.println("key= "+ key + " and value= " + map.get(key));
						   application.setAttribute(""+key, map.get(key));   
						  }
					Thread.sleep(20*1000);//二十秒采集一次
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
	}

}

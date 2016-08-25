package com.vivebest.erp.utils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sun.mail.handlers.message_rfc822;

/**
 * 时间辅助类
 * @author Jason_Z
 *
 */
public class TimeUtils {
	
	public static String all()
	{
		Date time=new Date();
		 SimpleDateFormat sFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		 System.out.println("时间格式化后"+sFormat.format(time)); 
		
		 return sFormat.format(time);
	}
	//通过前台得到的时间
	public static  Map<String,Integer> getMess(String time)
	{
		
		Map<String,  Integer> map=new HashMap<>();
		//List<Map<String,Integer>> list=new ArrayList<>();
		String sql="select ac_create_time from account where Date(ac_create_time)='"+time+"'";
		try {
			Connection con=DBConnection.openDB();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery(sql);
			while(rs.next())
			{
				String content=String.valueOf(rs.getString("ac_create_time"));
				String account_time=CutTime(content);//获取时间进行截取
				//当不存的时候，初始化为1
				if(map.get(account_time)==null)
				{
					map.put(account_time, 1);
				}
				else
				{
					//存在的时候累加
					int result=map.get(account_time);
					int add=result+1;
					map.put(account_time, add);
				}
				
				//在处理00,01,02，03,04,05的时间段
				//list.add(map);//加载数据
			}
			String[] str = new String[]{"00:00","01:00","02:00","03:00","04:00","05:00","06:00","07:00","08:00","09:00","10:00","11:00","12:00",
					"13:00","14:00","15:00","16:00","17:00","18:00","19:00","20:00","21:00","22:00","23:00"};
				for(String s:str)
				{
					//
					if(map.get(s)!=null)
					{
						int result=map.get(s);
						int add=result+1;
						map.put(s, add);
					}
					else
					{
						map.put(s, 0);
					}
				}
				//修改排序问题
				
				List<String> list_time=new ArrayList<>();
				SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
				for(String key:map.keySet())
				{
					list_time.add(key);
				}
				System.out.println(">>>>>>>>>>>>>>>信息"+list_time);
				for(String k:list_time)
				{
					
				}
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return map;
		
	}
	

	public static String CutTime(String time)
	{
		//String part1 = str.substring(0, 5);
		String part1 = time.substring(time.length() - 10, time.length());
		String part =part1.substring(0, 5);
		System.out.println(">>>>>>>>>>>"+part);
		return part;
	}
	public static void main(String[] args) {
		System.out.println(">>>>>>>>>>>>>>"+getMess("2016-08-15"));
	}
}

package com.vivebest.erp.utils;

/**
 * 银行卡号屏蔽类
 * 
 * @author Administrator
 * 
 */
public class AccountUtils {

	public static String transferString(String str) {
		StringBuilder resultBuilder = new StringBuilder();
		String part1 = str.substring(0, 5);
		String part2 = str.substring(str.length() - 4, str.length());
		resultBuilder.append(part1);
		resultBuilder.append("******");
		resultBuilder.append(part2);
		return resultBuilder.toString();

	}

	public static void main(String[] args) {
		System.out.println(">" + transferString("6226020160809145104"));
	}
}

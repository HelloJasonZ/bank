package com.vivebest.erp.utils;



import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/** 
 * @ClassName: MD5 
 * @Description: TODO
 * @author pluto 
 *  
 */
public class MD5 {
	public static String encode(String text){
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(text.getBytes());
			byte b[] = md.digest();
			int i;
			StringBuffer buf = new StringBuffer("");
			for(int offset = 0; offset < b.length; offset++){
				i=b[offset];
				if(i<0) i+=256;
				if(i<16) buf.append("0");
				buf.append(Integer.toHexString(i));
			}
			return buf.toString().substring(8, 24);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return null;
	}
	
}

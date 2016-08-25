package com.vivebest.erp.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;


/**
 * 采集类
 * @author Jason_Z
 *
 */
public class ReusltTeller {
	
	public static  Map<Integer,  Integer> getMuner()
	{
		Map<Integer,  Integer> map=new HashMap<>();
		String sql="SELECT t_id,COUNT(t_id) FROM customer group by t_id";
		String sql_c="select t_id,COUNT(t_id) from account group by t_id";
		try {
			Connection con=DBConnection.openDB();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery(sql);
			while(rs.next())
			{
				map.put(rs.getInt(1), rs.getInt(2));
			}
			rs=st.executeQuery(sql_c);
			while(rs.next())
			{
				if(map.get(rs.getInt(1))!=null)
				{
					//如果值一样，累加
					int result=(int) map.get(rs.getInt(1));
					int add=result+rs.getInt(2);
					map.put(rs.getInt(1), add);
				}
				else
				{
					map.put(rs.getInt(1), rs.getInt(2));
				}
			}
			rs.close();
			st.close();
			con.close();
			return map;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	public static void main(String[] args) throws SQLException {
		getMuner();
	}
}

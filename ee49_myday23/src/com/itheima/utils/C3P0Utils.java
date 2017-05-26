package com.itheima.utils;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class C3P0Utils {
	/**
	 * 1.私有化数据源
	 * 2.提供对外的数据源
	 * 3.提供对外的连接
	 */
	private static ComboPooledDataSource dataSource = new ComboPooledDataSource();
	
	public static DataSource getDataSource(){
		return dataSource;
	}
	
	public static Connection getConnection () throws SQLException{
		return dataSource.getConnection();
				
	}
	
}

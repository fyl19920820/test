package com.itheima.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.itheima.domain.PageBean;
import com.itheima.domain.Product;
import com.itheima.utils.C3P0Utils;

public class ProductDao {

	public List<Product> findProduct(int startIndex, int pageSize) throws SQLException {
		QueryRunner qr = new QueryRunner(C3P0Utils.getDataSource());
		String sql = "select * from product limit ?,?";
		Object[] params = {startIndex,pageSize};
		
		return qr.query(sql, new BeanListHandler<Product>(Product.class), params);
	}

	public int findAllCount() throws SQLException {
		QueryRunner qr = new QueryRunner(C3P0Utils.getDataSource());
		String sql = "select count(*) from product";
		Object[] params = {};
		Object object = qr.query(sql, new ScalarHandler(), params);
		return Integer.valueOf(object.toString());
	}


}

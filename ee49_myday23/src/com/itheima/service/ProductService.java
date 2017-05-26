package com.itheima.service;

import java.sql.SQLException;
import java.util.List;

import com.itheima.dao.ProductDao;
import com.itheima.domain.PageBean;
import com.itheima.domain.Product;

public class ProductService {


	public PageBean findProduct(int pageNumber, int pageSize) throws SQLException {
		int startIndex = (pageNumber-1)*pageSize;
		ProductDao dao = new ProductDao();
		List<Product> list =  dao.findProduct(startIndex,pageSize);
		int total = dao.findAllCount();
		PageBean bean = new PageBean();
		bean.setRows(list);
		bean.setT(total);
		return bean;
	}

}

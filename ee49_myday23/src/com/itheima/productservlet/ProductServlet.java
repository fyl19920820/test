package com.itheima.productservlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.itheima.domain.PageBean;
import com.itheima.service.ProductService;

import net.sf.json.JSONObject;

public class ProductServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			response.setHeader("content-type", "text/html;charset=utf-8");
			
			String pageNumberstr = request.getParameter("page");
			String pageSizestr = request.getParameter("rows");
			
			int pageNumber = Integer.valueOf(pageNumberstr);
			int pageSize = Integer.valueOf(pageSizestr);
			
			ProductService service = new ProductService();
			PageBean bean = service.findProduct(pageNumber,pageSize);
			
			Gson gson = new Gson();
			String string = gson.toJson(bean);
			System.out.println(string);
			
			response.getWriter().print(string);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

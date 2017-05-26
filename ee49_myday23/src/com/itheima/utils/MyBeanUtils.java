package com.itheima.utils;

import java.lang.reflect.InvocationTargetException;
import java.util.Map;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;

public class MyBeanUtils {
	/**
	 * 封装数据
	 * @param object
	 * @param map
	 * @throws IllegalAccessException
	 * @throws InvocationTargetException
	 */
	public static void populate(Object object,Map<String, String[]> map) throws IllegalAccessException, InvocationTargetException{
		
		
		//创建时间转换器
		DateConverter dateConverter = new DateConverter();
		//设置需要转换的时间格式
		dateConverter.setPattern("yyyy-MM-dd");
		//将时间转换器注册给BeanUtils 同时需要传入类型
		ConvertUtils.register(dateConverter, java.util.Date.class);
		//将数据封装
		BeanUtils.populate(object, map);
		
	}
	
	/**
	 * 泛型(了解)
	 * @param clazz
	 * @param map
	 * @return
	 * @throws IllegalAccessException
	 * @throws InvocationTargetException
	 * @throws InstantiationException
	 */
	public static <T> T populate(Class<T> clazz,Map<String, String[]> map) throws IllegalAccessException, InvocationTargetException, InstantiationException{
		//反射new 对象
		T bean = clazz.newInstance();
		//创建时间转换器
		DateConverter dateConverter = new DateConverter();
		//设置需要转换的时间格式
		dateConverter.setPattern("yyyy-MM-dd");
		//将时间转换器注册给BeanUtils 同时需要传入类型
		ConvertUtils.register(dateConverter, java.util.Date.class);
		//将数据封装
		BeanUtils.populate(bean, map);
		return bean;
	}
}

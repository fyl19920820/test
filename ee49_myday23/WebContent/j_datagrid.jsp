<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="/ee49_myday23/css/easyui.css">
	<link rel="stylesheet" type="text/css" href="/ee49_myday23/css/icon.css">
	<link rel="stylesheet" type="text/css" href="/ee49_myday23/css/demo.css">
	<script type="text/javascript" src="/ee49_myday23/js/jquery.min.js"></script>
	<script type="text/javascript" src="/ee49_myday23/js/jquery.easyui.min.js"></script>
</head>
<body>
	<table class="easyui-datagrid" data-options="url:'datagrid_data.json',fitColumns:true,singleSelect:true">   
	    <thead>   
	        <tr>   
	            <th data-options="field:'code'">编码</th>   
	            <th data-options="field:'name'">名称</th>   
	            <th data-options="field:'price'">价格</th>
	            <th data-options="field:'pimage',formatter:function(value){return '<img src='+value+'>'}">图片</th>  
	        </tr>   
	    </thead>   
	    <tbody>   
	         
	    </tbody>   
	</table>  
</body>
</html>
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
	<script type="text/javascript">
	$(function(){
		$('#dg').datagrid({    
		    url:'datagrid_data.json',    
		    columns:[[    
		        {field:'code',title:'Code',width:100},    
		        {field:'name',title:'Name',width:100},    
		        {field:'price',title:'Price',width:100,align:'right'},
		        {field:'pimage',title:'Pimage',width:100,formatter:function(value){
		        	return " <img src= "+value+" /> ";
		        }}
		       
		    ]],
		    toolbar: [{
				iconCls: 'icon-edit',
				handler: function(){alert('编辑按钮')}
			},'-',{
				iconCls: 'icon-help',
				handler: function(){alert('帮助按钮')}
			}],
			pagination:true,//显示工具栏
			pageNumber:1, //设置默认显示的页数
			pageSize:5,//初始化时显示的个数5
			pageList:[5,10,15,20]

		}); 
	})
	</script>
</head>
<body>
	<table id="dg"></table>   
</body>
</html>
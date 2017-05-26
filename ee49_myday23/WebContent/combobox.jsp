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
			$('#cc').combobox({    
			    url:'combobox_data.json',    
			    valueField:'id',    
			    textField:'text',
			    value:"请选择",
			    panelHeight:'auto'
			}); 
		})
	</script>
</head>
<body>
	<!-- <select id="cc" class="easyui-combobox" name="dept" style="width:200px;">   
	    <option value="aa">aitem1</option>   
	    <option>bitem2</option>   
	    <option>bitem3</option>   
	    <option>ditem4</option>   
	    <option>eitem5</option>   
	</select>  -->
	<input id="cc" name="dept" value="aa">  

	
</body>
</html>
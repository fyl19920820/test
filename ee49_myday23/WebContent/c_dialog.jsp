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
			$('#dd').dialog({    
			    title: 'My Dialog',    
			    width: 400,    
			    height: 200,    
			    closed: false,    
			    cache: false,    
			    modal: false,
			    content:'abcd',
			    toolbar:[{
					text:'编辑',
					iconCls:'icon-edit',
					handler:function(){alert('edit')}
				},{
					text:'帮助',
					iconCls:'icon-help',
					handler:function(){alert('help')}
				}],
				buttons:[{
					text:'保存',
					handler:function(){}
				},{
					text:'关闭',
					handler:function(){}
				}]
			}); 
		})
		function btnClose(){
			$("#dd").dialog("close");
		}
		function btnOpen(){
			$("#dd").dialog("open");
		}
	</script>
</head>
<body>
	<!-- <div id="dd" class="easyui-dialog" title="My Dialog" style="width:400px;height:200px;"   
        data-options="iconCls:'icon-save',resizable:true,modal:true">   
    	Dialog Content.    
	</div>  -->
	<div id="dd">Dialog Content.</div>  
	<input type="button" value="点我关闭窗口" onClick="btnClose()"/>
	<input type="button" value="点我打开窗口" onClick="btnOpen()"/>
	
</body>
</html>
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
		$('#win').window({    
		    width:600,    
		    height:400,    
		    modal:false,
		    title:"wudi",
		    iconCls:'icon-save',
		    content:'还有谁',
		    /* fit:true, */
		    tools:[
					{
						iconCls:'icon-add',
						handler:function(){alert('add')}
					},{
						iconCls:'icon-edit',
						handler:function(){alert('edit')}
					}],
			onBeforeClose:function(){
				alert("关闭");
			}
		});
	})
	function changeText(){
			alert(1);
			$("#win").window("setTitle","jimo");
		}
	</script>
</head>
<body>
	<!-- <div id="win" class="easyui-window" title="My Window" style="width:600px;height:400px"   
        data-options="iconCls:'icon-save',modal:true">   
    Window Content    
	</div> -->
	<input type="button" name="u" value="点我改变文本" onclick="changeText()" />
	<div id="win"></div>
	
</body>
</html>
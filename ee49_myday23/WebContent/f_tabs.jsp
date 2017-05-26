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
		function addTabs(){
			var flag = $("#tt").tabs("exists","New Tab");
			if(flag) {
				$("#tt").tabs("select","New Tab");				
			}else {
				$('#tt').tabs('add',{    
				    title:'New Tab',    
				    content:'Tab Body',    
				    closable:true,    
				    tools:[{    
				        iconCls:'icon-mini-refresh',    
				        handler:function(){    
				            alert('refresh');    
				        }    
				    }]    
				});
			}
			 
		}
	</script>
</head>
<body>
	<input value="点我添加选项卡" onclick="addTabs()" type="button" />
	<div id="tt" class="easyui-tabs" style="width:500px;height:250px;">   
    <div title="Tab1" style="padding:20px;">   
        tab1    
    </div>   
    <div title="Tab2" data-options="closable:true" style="overflow:auto;padding:20px;">   
        tab2    
    </div>   
    <div title="Tab3" data-options="iconCls:'icon-reload',closable:true" style="padding:20px;">   
        tab3    
    </div>   
</div>
</body>
</html>
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
			$.messager.alert('警告','警告消息');    
			$.messager.confirm('确认','您确认想要删除记录吗？',function(r){    
			    if (r){    
			        alert('确认删除');    
			    }    
			});
			$.messager.show({
				title:'我的消息',
				msg:'消息将在1秒后关闭。',
				timeout:1000,
				showType:'fade'
			});

		})
	</script>
</head>
<body>
	
</body>
</html>
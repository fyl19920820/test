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
			$('#ff').form({    
			    url:"/ee49_myday23/FromServlet",    
			    onSubmit: function(p){    
			        // do some check    
			        // return false to prevent submit;    
			        p.pname = "long";
			        p.password = "1234";
			    },    
			    success:function(data){    
			        alert(data)    
			    }    
			});
		})
	</script>
</head>
<body>
<form id="ff" method="post">   
    <div>   
        <label for="name">Name:</label>   
        <input class="easyui-validatebox" type="text" name="name" data-options="required:true" />   
    </div>   
    <div>   
        <label for="email">Email:</label>   
        <input class="easyui-validatebox" type="text" name="email" data-options="validType:'email'" />   
    </div> 
    <input class="easyui-textbox" data-options="iconCls:'icon-man',type:'password'" style="width:300px"> 
    <input type="submit"/>     
</form> 
</body>
</html>
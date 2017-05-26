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
				    content:"<iframe src='/ee49_myday23/product_list.jsp' style='width:99%;height:99%;border:0px'>",    
				    closable:true,
				    select:true
				});
			}
			 
		}
	</script>
</head>
<body>
	<div id="cc" class="easyui-layout" data-options="fit:true" style="width:600px;height:400px;">   
    <div data-options="region:'north',title:'North Title',split:false" style="height:100px;"></div>   
    <div data-options="region:'west',title:'West',split:false" style="width:200px;">
    	<div id="aa" class="easyui-accordion" data-options="fit:true" style="width:300px;height:200px;">   
		    <div title="Title1" data-options="iconCls:'icon-save'" style="overflow:auto;padding:10px;">   
		        <h3 style="color:#0099FF;">Accordion for jQuery</h3>   
		        <p>Accordion is a part of easyui framework for jQuery.     
		        It lets you define your accordion component on web page more easily.</p>   
		    </div>   
		    <div title="Title2" data-options="iconCls:'icon-reload',selected:true" style="padding:10px;">   
		        <ul id="bb" class="easyui-tree">   
			    <li>   
			        <span>Folder</span>   
			        <ul>   
			            <li>   
			                <span>Sub Folder 1</span>   
			                <ul>   
			                    <li>   
			                        <span><a href="javascript:void(0)" onclick="addTabs()">显示商品</a></span>   
			                    </li>   
			                    <li>   
			                        <span>File 12</span>   
			                    </li>   
			                    <li>   
			                        <span>File 13</span>   
			                    </li>   
			                </ul>   
			            </li>   
			            <li>   
			                <span>File 2</span>   
			            </li>   
			            <li>   
			                <span>File 3</span>   
			            </li>   
			        </ul>   
			    </li>   
			    <li>   
			        <span>File21</span>   
			    </li>   
			</ul>      
		    </div>   
		    <div title="Title3">   
		        content3    
		    </div>  
	    </div>
	</div>   
    <div data-options="region:'center',title:'center title'" style="padding:0px;background:#eee;">
    	<div id="tt" data-options="fit:true" class="easyui-tabs" style="width:500px;height:250px;">   
	    <div title="Tab1" style="padding:0px;">   
	        tab1    
	    </div>   
	    <div title="Tab2" data-options="closable:true" style="overflow:auto;padding:0px;">   
	        tab2    
	    </div>   
	    <div title="Tab3" data-options="iconCls:'icon-reload',closable:true" style="padding:0px;">   
	        tab3    
	    </div>   
		</div>
    </div>  
</body>
</html>
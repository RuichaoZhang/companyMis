<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>品类表</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="cuxCategoryController.do?doAdd" tiptype="1" >
					<input id="id" name="id" type="hidden" value="${cuxCategoryPage.id }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							种类:
						</label>
					</td>
					<td class="value">
					     	 <input id="zhonglei" name="zhonglei" type="text" style="width: 150px" class="inputxt" >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">种类</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							品类:
						</label>
					</td>
					<td class="value">
					     	 <input id="pinlei" name="pinlei" type="text" style="width: 150px" class="inputxt" >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">品类</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							价格:
						</label>
					</td>
					<td class="value">
					     	 <input id="jiage" name="jiage" type="text" style="width: 150px" class="inputxt" >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">价格</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							录入时间:
						</label>
					</td>
					<td class="value">
							   <input id="lurushijian" name="lurushijian" type="text" style="width: 150px" 
					      						class="Wdate" onClick="WdatePicker()"
>    
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">录入时间</label>
						</td>
				</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/com/jeecg/category/cuxCategory.js"></script>		

<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>公告表</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="gonggaoController.do?doAdd" tiptype="1" >
					<input id="id" name="id" type="hidden" value="${gonggaoPage.id }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							公告名称:
						</label>
					</td>
					<td class="value">
					     	 <input id="gonggaoName" name="gonggaoName" type="text" style="width: 150px" class="inputxt" >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">公告名称</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							发布部门:
						</label>
					</td>
					<td class="value">
							  <t:dictSelect field="fabuDept" type="list"
									dictTable="t_s_depart" dictField="departname" dictText="" defaultVal="${gonggaoPage.fabuDept}" hasLabel="false"  title="发布部门"></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">发布部门</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							公告内容:
						</label>
					</td>
					<td class="value" style="width: 500px; height: 100px;">
						<textarea id="gonggaoNeirong" style="width: 500px; height: 100px;" name="gonggaoNeirong" type="text"
								  class="inputxt"></textarea>
						<span class="Validform_checktip"></span>
						<label class="Validform_label" style="display: none;">公告内容</label>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							发布时间:
						</label>
					</td>
					<td class="value">
							   <input id="gabuShijian" name="gabuShijian" type="text" style="width: 150px" 
					      						 class="Wdate" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})"
>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">发布时间</label>
						</td>
				</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/com/jeecg/gonggao/gonggao.js"></script>		

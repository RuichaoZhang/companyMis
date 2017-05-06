<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>顾客信息表</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
		<t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="cuxGukeController.do?doUpdate" tiptype="1" >
					<input id="id" name="id" type="hidden" value="${cuxGukePage.id }">
					<input id="createName" name="createName" type="hidden" value="${cuxGukePage.createName }">
					<input id="createBy" name="createBy" type="hidden" value="${cuxGukePage.createBy }">
					<input id="createDate" name="createDate" type="hidden" value="${cuxGukePage.createDate }">
					<input id="attribute1" name="attribute1" type="hidden" value="${cuxGukePage.attribute1 }">
					<input id="attribute2" name="attribute2" type="hidden" value="${cuxGukePage.attribute2 }">
					<input id="attribute3" name="attribute3" type="hidden" value="${cuxGukePage.attribute3 }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
					<tr>
						<td align="right">
							<label class="Validform_label">
								顾客名称:
							</label>
						</td>
						<td class="value">
						     	 <input id="gukeName" name="gukeName" type="text" style="width: 150px" class="inputxt"  value='${cuxGukePage.gukeName}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">顾客名称</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								顾客手机:
							</label>
						</td>
						<td class="value">
						     	 <input id="gukeShouji" name="gukeShouji" type="text" style="width: 150px" class="inputxt"  value='${cuxGukePage.gukeShouji}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">顾客手机</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								顾客地址:
							</label>
						</td>
						<td class="value">
						     	 <input id="gukeDizhi" name="gukeDizhi" type="text" style="width: 150px" class="inputxt"  value='${cuxGukePage.gukeDizhi}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">顾客地址</label>
						</td>
					</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/com/jeecg/cuxgukexinxi/cuxGuke.js"></script>		

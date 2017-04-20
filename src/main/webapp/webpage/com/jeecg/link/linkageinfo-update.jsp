<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>友情连接表</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
		<t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="linkageinfoController.do?doUpdate" tiptype="1" >
					<input id="id" name="id" type="hidden" value="${linkageinfoPage.id }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
					<tr>
						<td align="right">
							<label class="Validform_label">
								链接名称:
							</label>
						</td>
						<td class="value">
						     	 <input id="linkageName" name="linkageName" type="text" style="width: 150px" class="inputxt"  value='${linkageinfoPage.linkageName}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">链接名称</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								地址:
							</label>
						</td>
						<td class="value">
						     	 <input id="linkageAddr" name="linkageAddr" type="text" style="width: 150px" class="inputxt"  value='${linkageinfoPage.linkageAddr}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">地址</label>
						</td>
					</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/com/jeecg/link/linkageinfo.js"></script>		

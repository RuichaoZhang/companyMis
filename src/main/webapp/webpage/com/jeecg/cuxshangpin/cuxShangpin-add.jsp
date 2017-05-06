<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>商品表</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="cuxShangpinController.do?doAdd" tiptype="1" >
					<input id="id" name="id" type="hidden" value="${cuxShangpinPage.id }">
					<input id="createName" name="createName" type="hidden" value="${cuxShangpinPage.createName }">
					<input id="createBy" name="createBy" type="hidden" value="${cuxShangpinPage.createBy }">
					<input id="createDate" name="createDate" type="hidden" value="${cuxShangpinPage.createDate }">
					<input id="updateName" name="updateName" type="hidden" value="${cuxShangpinPage.updateName }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							商品名称:
						</label>
					</td>
					<td class="value">
					     	 <input id="shangpinMingcheng" name="shangpinMingcheng" type="text" style="width: 150px" class="inputxt" >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">商品名称</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							商品入库价格:
						</label>
					</td>
					<td class="value">
					     	 <input id="shangpinRukjiage" name="shangpinRukjiage" type="text" style="width: 150px" class="inputxt" >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">商品入库价格</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							商品单价:
						</label>
					</td>
					<td class="value">
					     	 <input id="shangpinDanjia" name="shangpinDanjia" type="text" style="width: 150px" class="inputxt" >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">商品单价</label>
						</td>
				</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/com/jeecg/cuxshangpin/cuxShangpin.js"></script>		

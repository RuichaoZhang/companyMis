<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>订货单表</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="cuxRukudanController.do?doAdd" tiptype="1" >
					<input id="id" name="id" type="hidden" value="${cuxRukudanPage.id }">
					<input id="createName" name="createName" type="hidden" value="${cuxRukudanPage.createName }">
					<input id="createBy" name="createBy" type="hidden" value="${cuxRukudanPage.createBy }">
					<input id="createDate" name="createDate" type="hidden" value="${cuxRukudanPage.createDate }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							商品编号:
						</label>
					</td>
					<td class="value">
					     	 <input id="shangpinBianhao" name="shangpinBianhao" type="text" style="width: 150px" class="inputxt" >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">商品编号</label>
						</td>
				</tr>
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
							入库商品数量:
						</label>
					</td>
					<td class="value">
					     	 <input id="shangpinShuliang" name="shangpinShuliang" type="text" style="width: 150px" class="inputxt" >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">入库商品数量</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							入库价格:
						</label>
					</td>
					<td class="value">
					     	 <input id="shangpinRukujiage" name="shangpinRukujiage" type="text" style="width: 150px" class="inputxt" >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">入库价格</label>
						</td>
				</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/com/jeecg/cuxrukudan/cuxRukudan.js"></script>		

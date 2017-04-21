<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>公司产品表</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
		<t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="productInfoController.do?doUpdate" tiptype="1" >
					<input id="id" name="id" type="hidden" value="${productInfoPage.id }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
					<tr>
						<td align="right">
							<label class="Validform_label">
								产品名称:
							</label>
						</td>
						<td class="value">
						     	 <input id="productName" name="productName" type="text" style="width: 150px" class="inputxt"  value='${productInfoPage.productName}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">产品名称</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								发布时间:
							</label>
						</td>
						<td class="value">
									  <input id="productTime" name="productTime" type="text" style="width: 150px" class="Wdate" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" value='<fmt:formatDate value='${productInfoPage.productTime}' type="date" pattern="yyyy-MM-dd hh:mm:ss"/>'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">发布时间</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								发布部门:
							</label>
						</td>
						<td class="value">
									<t:dictSelect field="productType" type="list"
										dictTable="t_s_depart" dictField="departname" dictText="" defaultVal="${productInfoPage.productType}" hasLabel="false"  title="发布部门"></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">发布部门</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								发布内容:
							</label>
						</td>
						<td class="value">
						     	 <input id="productContent" name="productContent" type="text" style="width: 150px" class="inputxt"  value='${productInfoPage.productContent}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">发布内容</label>
						</td>
					</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/com/jeecg/product/productInfo.js"></script>		

<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>留言板表</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
		<t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="boardInfoController.do?doUpdate" tiptype="1" >
					<input id="id" name="id" type="hidden" value="${boardInfoPage.id }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
					<tr>
						<td align="right">
							<label class="Validform_label">
								留言单号:
							</label>
						</td>
						<td class="value">
						     	 <input id="boadrId" name="boadrId" type="text" style="width: 150px" class="inputxt"  value='${boardInfoPage.boadrId}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">留言单号</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								处理人:
							</label>
						</td>
						<td class="value">
									<t:dictSelect field="boadrDeal" type="list"
										typeGroupCode="" defaultVal="${boardInfoPage.boadrDeal}" hasLabel="false"  title="处理人"></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">处理人</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								留言人姓名:
							</label>
						</td>
						<td class="value">
						     	 <input id="boadrPerson" name="boadrPerson" type="text" style="width: 150px" class="inputxt"  value='${boardInfoPage.boadrPerson}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">留言人姓名</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								电话:
							</label>
						</td>
						<td class="value">
									  <input id="boadrTel" name="boadrTel" type="text" style="width: 150px" class="Wdate" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" value='<fmt:formatDate value='${boardInfoPage.boadrTel}' type="date" pattern="yyyy-MM-dd hh:mm:ss"/>'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">电话</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								qq:
							</label>
						</td>
						<td class="value">
						     	 <input id="boadrQq" name="boadrQq" type="text" style="width: 150px" class="inputxt"  value='${boardInfoPage.boadrQq}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">qq</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								留言内容:
							</label>
						</td>
						<td class="value">
						     	 <input id="boadrContent" name="boadrContent" type="text" style="width: 150px" class="inputxt"  value='${boardInfoPage.boadrContent}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">留言内容</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								留言时间:
							</label>
						</td>
						<td class="value">
						     	 <input id="boadrTime" name="boadrTime" type="text" style="width: 150px" class="inputxt"  value='${boardInfoPage.boadrTime}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">留言时间</label>
						</td>
					</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/com/jeecg/board/boardInfo.js"></script>		

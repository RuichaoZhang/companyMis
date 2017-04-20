<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>公司通知表</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
		<t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="noticeInfoController.do?doUpdate" tiptype="1" >
					<input id="id" name="id" type="hidden" value="${noticeInfoPage.id }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
					<tr>
						<td align="right">
							<label class="Validform_label">
								通知名称:
							</label>
						</td>
						<td class="value">
						     	 <input id="noticeName" name="noticeName" type="text" style="width: 150px" class="inputxt"  value='${noticeInfoPage.noticeName}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">通知名称</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								通知时间:
							</label>
						</td>
						<td class="value">
						     	 <input id="noticeTime" name="noticeTime" type="text" style="width: 150px" class="inputxt"  value='${noticeInfoPage.noticeTime}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">通知时间</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								发布部门编号:
							</label>
						</td>
						<td class="value">
						     	 <input id="noticeType" name="noticeType" type="text" style="width: 150px" class="inputxt"  value='${noticeInfoPage.noticeType}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">发布部门编号</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								发布部门:
							</label>
						</td>
						<td class="value">
						     	 <input id="noticeDept" name="noticeDept" type="text" style="width: 150px" class="inputxt"  value='${noticeInfoPage.noticeDept}'>
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
						     	 <input id="noticeContent" name="noticeContent" type="text" style="width: 150px" class="inputxt"  value='${noticeInfoPage.noticeContent}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">发布内容</label>
						</td>
					</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/com/jeecg/notice/noticeInfo.js"></script>		

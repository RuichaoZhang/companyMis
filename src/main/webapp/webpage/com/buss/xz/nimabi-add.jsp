<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>dsad</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="nimabiController.do?doAdd" tiptype="1">
					<input id="id" name="id" type="hidden" value="${nimabiPage.id }">
					<input id="createName" name="createName" type="hidden" value="${nimabiPage.createName }">
					<input id="createBy" name="createBy" type="hidden" value="${nimabiPage.createBy }">
					<input id="updateName" name="updateName" type="hidden" value="${nimabiPage.updateName }">
					<input id="updateBy" name="updateBy" type="hidden" value="${nimabiPage.updateBy }">
					<input id="createDate" name="createDate" type="hidden" value="${nimabiPage.createDate }">
					<input id="updateDate" name="updateDate" type="hidden" value="${nimabiPage.updateDate }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/com/buss/xz/nimabi.js"></script>		
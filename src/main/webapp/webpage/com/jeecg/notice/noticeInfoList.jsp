<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
	<div region="center" style="padding: 0px; border: 0px">
		<t:datagrid name="noticeInfoList" checkbox="true" fitColumns="false"
			title="公司通知表" actionUrl="noticeInfoController.do?datagrid"
			idField="id" fit="true" queryMode="group">
			<t:dgCol title="主键" field="id" hidden="true" queryMode="single"
				width="120"></t:dgCol>
			<t:dgCol title="通知名称" field="noticeName" queryMode="single"
				width="120"></t:dgCol>
			<t:dgCol title="通知时间" field="noticeTime"
				formatter="yyyy-MM-dd hh:mm:ss" queryMode="single" width="120"></t:dgCol>
			<t:dgCol title="发布部门" field="noticeDept" queryMode="single"
				dictionary="t_s_depart,departname," width="120"></t:dgCol>
			<t:dgCol title="发布内容" field="noticeContent" queryMode="single"
				width="120"></t:dgCol>
			<t:dgCol title="操作" field="opt" width="100"></t:dgCol>
			<t:dgDelOpt title="删除" url="noticeInfoController.do?doDel&id={id}"
				urlclass="ace_button" urlfont="fa-trash-o" />
			<c:if test="${role=='admin'}">
				<script>
					alert("aaa");
				</script>
				<t:dgToolBar title="录入" icon="icon-add"
					url="noticeInfoController.do?goAdd" funname="add"></t:dgToolBar>
				<t:dgToolBar title="编辑" icon="icon-edit"
					url="noticeInfoController.do?goUpdate" funname="update"></t:dgToolBar>
			</c:if>
			<t:dgToolBar title="批量删除" icon="icon-remove"
				url="noticeInfoController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
			<t:dgToolBar title="查看" icon="icon-search"
				url="noticeInfoController.do?goUpdate" funname="detail"></t:dgToolBar>
			<t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>
			<t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
			<t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>
		</t:datagrid>
	</div>
</div>
<script src="webpage/com/jeecg/notice/noticeInfoList.js"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				//给时间控件加上样式
				$("#noticeInfoListtb").find("input[name='noticeTime']").attr(
						"class", "Wdate").click(function() {
					WdatePicker({
						dateFmt : 'yyyy-MM-dd'
					});
				});
			});

	//导入
	function ImportXls() {
		openuploadwin('Excel导入', 'noticeInfoController.do?upload',
				"noticeInfoList");
	}

	//导出
	function ExportXls() {
		JeecgExcelExport("noticeInfoController.do?exportXls", "noticeInfoList");
	}

	//模板下载
	function ExportXlsByT() {
		JeecgExcelExport("noticeInfoController.do?exportXlsByT",
				"noticeInfoList");
	}
</script>
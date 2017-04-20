<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:0px;border:0px">
  <t:datagrid name="boardInfoList" checkbox="true" fitColumns="false" title="留言板表" actionUrl="boardInfoController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="留言单号"  field="boadrId"    queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="处理人编号"  field="boadrDeal"    queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="留言人姓名"  field="boadrPerson"    queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="电话"  field="boadrTel"    queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="qq"  field="boadrQq"    queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="留言内容"  field="boadrContent"    queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="留言时间"  field="boadrTime"    queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="boardInfoController.do?doDel&id={id}" urlclass="ace_button"  urlfont="fa-trash-o"/>
   <t:dgToolBar title="录入" icon="icon-add" url="boardInfoController.do?goAdd" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="boardInfoController.do?goUpdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="boardInfoController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="boardInfoController.do?goUpdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/com/jeecg/board/boardInfoList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
 
   
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'boardInfoController.do?upload', "boardInfoList");
}

//导出
function ExportXls() {
	JeecgExcelExport("boardInfoController.do?exportXls","boardInfoList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("boardInfoController.do?exportXlsByT","boardInfoList");
}
 </script>
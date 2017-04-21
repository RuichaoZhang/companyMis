<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:0px;border:0px">
  <t:datagrid name="gonggaoList" checkbox="true" fitColumns="false" title="公告表" actionUrl="gonggaoController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="公告名称"  field="gonggaoName"    queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="发布部门"  field="fabuDept"    queryMode="single" dictionary="t_s_depart,departname,"  width="120"></t:dgCol>
   <t:dgCol title="公告内容"  field="gonggaoNeirong"    queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="发布时间"  field="gabuShijian" formatter="yyyy-MM-dd hh:mm:ss"   queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="gonggaoController.do?doDel&id={id}" urlclass="ace_button"  urlfont="fa-trash-o"/>
   <t:dgToolBar title="录入" icon="icon-add" url="gonggaoController.do?goAdd" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="gonggaoController.do?goUpdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="gonggaoController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="gonggaoController.do?goUpdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/com/jeecg/gonggao/gonggaoList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 			$("#gonggaoListtb").find("input[name='gabuShijian']").attr("class","Wdate").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 });
 
   
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'gonggaoController.do?upload', "gonggaoList");
}

//导出
function ExportXls() {
	JeecgExcelExport("gonggaoController.do?exportXls","gonggaoList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("gonggaoController.do?exportXlsByT","gonggaoList");
}
 </script>
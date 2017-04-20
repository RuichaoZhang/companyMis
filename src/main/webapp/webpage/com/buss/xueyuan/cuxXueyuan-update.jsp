<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>学员表</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  $(document).ready(function(){
	$('#tt').tabs({
	   onSelect:function(title){
	       $('#tt .panel-body').css('width','auto');
		}
	});
	$(".tabs-wrap").css('width','100%');
  });
 </script>
 </head>
 <body style="overflow-x: hidden;">
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" tiptype="1" action="cuxXueyuanController.do?doUpdate">
					<input id="id" name="id" type="hidden" value="${cuxXueyuanPage.id }">
					<input id="createName" name="createName" type="hidden" value="${cuxXueyuanPage.createName }">
					<input id="createBy" name="createBy" type="hidden" value="${cuxXueyuanPage.createBy }">
					<input id="createDate" name="createDate" type="hidden" value="${cuxXueyuanPage.createDate }">
					<input id="updateName" name="updateName" type="hidden" value="${cuxXueyuanPage.updateName }">
					<input id="updateBy" name="updateBy" type="hidden" value="${cuxXueyuanPage.updateBy }">
					<input id="updateDate" name="updateDate" type="hidden" value="${cuxXueyuanPage.updateDate }">
	<table cellpadding="0" cellspacing="1" class="formtable">
		<tr>
			<td align="right">
				<label class="Validform_label">学员名称:</label>
			</td>
			<td class="value">
		     	 <input id="xueyuanName" name="xueyuanName" type="text" style="width: 150px" class="inputxt" value='${cuxXueyuanPage.xueyuanName}'>
				<span class="Validform_checktip"></span>
				<label class="Validform_label" style="display: none;">学员名称</label>
			</td>
			<td align="right">
				<label class="Validform_label">学员电话:</label>
			</td>
			<td class="value">
		     	 <input id="xueyuanDianhua" name="xueyuanDianhua" type="text" style="width: 150px" class="inputxt" value='${cuxXueyuanPage.xueyuanDianhua}'>
				<span class="Validform_checktip"></span>
				<label class="Validform_label" style="display: none;">学员电话</label>
			</td>
		</tr>
		<tr>
			<td align="right">
				<label class="Validform_label">所报驾校:</label>
			</td>
			<td class="value">
		     	 <input id="xueyuanJiaxiao" name="xueyuanJiaxiao" type="text" style="width: 150px" class="inputxt" value='${cuxXueyuanPage.xueyuanJiaxiao}'>
				<span class="Validform_checktip"></span>
				<label class="Validform_label" style="display: none;">所报驾校</label>
			</td>
			<td align="right">
				<label class="Validform_label">性别:</label>
			</td>
			<td class="value">
					<t:dictSelect field="xueyuanXingbie" type="list"
						typeGroupCode="sex" defaultVal="${cuxXueyuanPage.xueyuanXingbie}" hasLabel="false"  title="性别"></t:dictSelect>     
				<span class="Validform_checktip"></span>
				<label class="Validform_label" style="display: none;">性别</label>
			</td>
		</tr>
			</table>
			<div style="width: auto;height: 200px;">
				<%-- 增加一个div，用于调节页面大小，否则默认太小 --%>
				<div style="width:800px;height:1px;"></div>
				<t:tabs id="tt" iframe="false" tabPosition="top" fit="false">
				 <t:tab href="cuxXueyuanController.do?cuxChengjiList&id=${cuxXueyuanPage.id}" icon="icon-search" title="chengji" id="cuxChengji"></t:tab>
				</t:tabs>
			</div>
			</t:formvalid>
			<!-- 添加 附表明细 模版 -->
		<table style="display:none">
		<tbody id="add_cuxChengji_table_template">
			<tr>
			 <td align="center"><div style="width: 25px;" name="xh"></div></td>
			 <td align="center"><input style="width:20px;" type="checkbox" name="ck"/></td>
				  <td align="left">
							<t:dictSelect field="cuxChengjiList[#index#].chengjiKaoshileixing" type="list"
										typeGroupCode="gradetype" defaultVal="" hasLabel="false"  title="考试类型"></t:dictSelect>     
					  <label class="Validform_label" style="display: none;">考试类型</label>
				  </td>
				  <td align="left">
							<input name="cuxChengjiList[#index#].chengjiKaoshishijian" maxlength="32" 
					  		type="text" class="Wdate" onClick="WdatePicker()"  style="width:120px;"
					                
					               >  
					  <label class="Validform_label" style="display: none;">考试时间</label>
				  </td>
				  <td align="left">
					  	<input name="cuxChengjiList[#index#].chengjiKaoshifenshu" maxlength="32" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">考试分数</label>
				  </td>
				  <td align="left">
							<t:dictSelect field="cuxChengjiList[#index#].chengjiShifoutongguo" type="list"
										typeGroupCode="sf_yn" defaultVal="" hasLabel="false"  title="是否通过"></t:dictSelect>     
					  <label class="Validform_label" style="display: none;">是否通过</label>
				  </td>
			</tr>
		 </tbody>
		</table>
 </body>
 <script src = "webpage/com/buss/xueyuan/cuxXueyuan.js"></script>	
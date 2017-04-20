<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>驾校表</title>
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
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" tiptype="1" action="cuxJiaoxiaoController.do?doAdd">
					<input id="id" name="id" type="hidden" value="${cuxJiaoxiaoPage.id }">
					<input id="createName" name="createName" type="hidden" value="${cuxJiaoxiaoPage.createName }">
					<input id="createBy" name="createBy" type="hidden" value="${cuxJiaoxiaoPage.createBy }">
					<input id="createDate" name="createDate" type="hidden" value="${cuxJiaoxiaoPage.createDate }">
					<input id="updateName" name="updateName" type="hidden" value="${cuxJiaoxiaoPage.updateName }">
					<input id="updateBy" name="updateBy" type="hidden" value="${cuxJiaoxiaoPage.updateBy }">
					<input id="updateDate" name="updateDate" type="hidden" value="${cuxJiaoxiaoPage.updateDate }">
	<table cellpadding="0" cellspacing="1" class="formtable">
		<tr>
			<td align="right">
				<label class="Validform_label">驾校名称:</label>
			</td>
			<td class="value">
		     	 <input id="jiaoxiaoName" name="jiaoxiaoName" type="text" style="width: 150px" class="inputxt">
				<span class="Validform_checktip"></span>
				<label class="Validform_label" style="display: none;">驾校名称</label>
			</td>
			<td align="right">
				<label class="Validform_label">校长名称:</label>
			</td>
			<td class="value">
		     	 <input id="xiaozhangName" name="xiaozhangName" type="text" style="width: 150px" class="inputxt">
				<span class="Validform_checktip"></span>
				<label class="Validform_label" style="display: none;">校长名称</label>
			</td>
		</tr>
		<tr>
			<td align="right">
				<label class="Validform_label">所属省份:</label>
			</td>
			<td class="value">
		     	 <input id="shengfen" name="shengfen" type="text" style="width: 150px" class="inputxt">
				<span class="Validform_checktip"></span>
				<label class="Validform_label" style="display: none;">所属省份</label>
			</td>
			<td align="right">
				<label class="Validform_label">所属城市:</label>
			</td>
			<td class="value">
		     	 <input id="chengshi" name="chengshi" type="text" style="width: 150px" class="inputxt">
				<span class="Validform_checktip"></span>
				<label class="Validform_label" style="display: none;">所属城市</label>
			</td>
		</tr>
	</table>
			<div style="width: auto;height: 200px;">
				<%-- 增加一个div，用于调节页面大小，否则默认太小 --%>
				<div style="width:800px;height:1px;"></div>
				<t:tabs id="tt" iframe="false" tabPosition="top" fit="false">
				 <t:tab href="cuxJiaoxiaoController.do?cuxCheliangList&cHELIANG_SUOSHUJIAXIAO=${cuxJiaoxiaoPage.cHELIANG_SUOSHUJIAXIAO}" icon="icon-search" title="车辆" id="cuxCheliang"></t:tab>
				</t:tabs>
			</div>
			</t:formvalid>
			<!-- 添加 附表明细 模版 -->
	<table style="display:none">
	<tbody id="add_cuxCheliang_table_template">
		<tr>
			 <td align="center"><div style="width: 25px;" name="xh"></div></td>
			 <td align="center"><input style="width:20px;" type="checkbox" name="ck"/></td>
				  <td align="left">
					  	<input name="cuxCheliangList[#index#].cheliangChepaihao" maxlength="500" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">车牌号</label>
				  </td>
				  <td align="left">
					  	<input name="cuxCheliangList[#index#].cheliangChexing" maxlength="500" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">车型号</label>
				  </td>
				  <td align="left">
					  	<input name="cuxCheliangList[#index#].cheliangJiage" maxlength="32" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">购入价格</label>
				  </td>
				  <td align="left">
							<input name="cuxCheliangList[#index#].cheliangShijian" maxlength="32" 
					  		type="text" class="Wdate" onClick="WdatePicker()"  style="width:120px;"
					                
					               >  
					  <label class="Validform_label" style="display: none;">购入时间</label>
				  </td>
				  <td align="left">
							<t:dictSelect field="cuxCheliangList[#index#].cheliangShifoukeyong" type="list"
										typeGroupCode="sf_yn" defaultVal="" hasLabel="false"  title="是否可用"></t:dictSelect>     
					  <label class="Validform_label" style="display: none;">是否可用</label>
				  </td>
			</tr>
		 </tbody>
		</table>
 </body>
 <script src = "webpage/com/buss/jiaxiao/cuxJiaoxiao.js"></script>	
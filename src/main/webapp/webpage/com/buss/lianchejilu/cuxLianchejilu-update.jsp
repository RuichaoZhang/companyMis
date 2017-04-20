<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>练车记录</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="cuxLianchejiluController.do?doUpdate" tiptype="1">
					<input id="id" name="id" type="hidden" value="${cuxLianchejiluPage.id }">
					<input id="createName" name="createName" type="hidden" value="${cuxLianchejiluPage.createName }">
					<input id="createBy" name="createBy" type="hidden" value="${cuxLianchejiluPage.createBy }">
					<input id="updateName" name="updateName" type="hidden" value="${cuxLianchejiluPage.updateName }">
					<input id="updateBy" name="updateBy" type="hidden" value="${cuxLianchejiluPage.updateBy }">
					<input id="updateDate" name="updateDate" type="hidden" value="${cuxLianchejiluPage.updateDate }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
					<tr>
						<td align="right">
							<label class="Validform_label">
								创建日期:
							</label>
						</td>
						<td class="value">
									  <input id="createDate" name="createDate" type="text" style="width: 150px" 
						      						class="Wdate" onClick="WdatePicker()"
									                
						      						 value='<fmt:formatDate value='${cuxLianchejiluPage.createDate}' type="date" pattern="yyyy-MM-dd"/>'>    
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">创建日期</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								姓名手机:
							</label>
						</td>
						<td class="value">
						     	 <input id="liancheXueyuan" name="liancheXueyuan" type="text" style="width: 150px" class="inputxt"  
									               
										       value='${cuxLianchejiluPage.liancheXueyuan}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">姓名手机</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								车牌号:
							</label>
						</td>
						<td class="value">
									<t:dictSelect field="liancheChepaihao" type="list"
										dictTable="cux_cheliang" dictField="cheliang_chepaihao" dictText="" defaultVal="${cuxLianchejiluPage.liancheChepaihao}" hasLabel="false"  title="车牌号"></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">车牌号</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								所属驾校:
							</label>
						</td>
						<td class="value">
									<t:dictSelect field="liancheSuoshujiaxiao" type="list"
										dictTable="cux_jiaxiao" dictField="jiaoxiao_name" dictText="" defaultVal="${cuxLianchejiluPage.liancheSuoshujiaxiao}" hasLabel="false"  title="所属驾校"></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">所属驾校</label>
						</td>
					</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/com/buss/lianchejilu/cuxLianchejilu.js"></script>		
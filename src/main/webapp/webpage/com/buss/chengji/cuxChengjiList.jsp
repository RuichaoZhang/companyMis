<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<script type="text/javascript">
	$('#addCuxChengjiBtn').linkbutton({   
	    iconCls: 'icon-add'  
	});  
	$('#delCuxChengjiBtn').linkbutton({   
	    iconCls: 'icon-remove'  
	}); 
	$('#addCuxChengjiBtn').bind('click', function(){   
 		 var tr =  $("#add_cuxChengji_table_template tr").clone();
	 	 $("#add_cuxChengji_table").append(tr);
	 	 resetTrNum('add_cuxChengji_table');
	 	 return false;
    });  
	$('#delCuxChengjiBtn').bind('click', function(){   
      	$("#add_cuxChengji_table").find("input:checked").parent().parent().remove();   
        resetTrNum('add_cuxChengji_table'); 
        return false;
    }); 
    $(document).ready(function(){
    	$(".datagrid-toolbar").parent().css("width","auto");
    	if(location.href.indexOf("load=detail")!=-1){
			$(":input").attr("disabled","true");
			$(".datagrid-toolbar").hide();
		}
		//将表格的表头固定
	    $("#cuxChengji_table").createhftable({
	    	height:'300px',
			width:'auto',
			fixFooter:false
			});
    });
</script>
<div style="padding: 3px; height: 25px;width:auto;" class="datagrid-toolbar">
	<a id="addCuxChengjiBtn" href="#">添加</a> <a id="delCuxChengjiBtn" href="#">删除</a> 
</div>
<table border="0" cellpadding="2" cellspacing="0" id="cuxChengji_table">
	<tr bgcolor="#E6E6E6">
		<td align="center" bgcolor="#EEEEEE">序号</td>
		<td align="center" bgcolor="#EEEEEE">操作</td>
				  <td align="left" bgcolor="#EEEEEE">
						考试类型
				  </td>
				  <td align="left" bgcolor="#EEEEEE">
						考试时间
				  </td>
				  <td align="left" bgcolor="#EEEEEE">
						考试分数
				  </td>
				  <td align="left" bgcolor="#EEEEEE">
						是否通过
				  </td>
	</tr>
	<tbody id="add_cuxChengji_table">	
	<c:if test="${fn:length(cuxChengjiList)  <= 0 }">
			<tr>
				<td align="center"><div style="width: 25px;" name="xh">1</div></td>
				<td align="center"><input style="width:20px;"  type="checkbox" name="ck"/></td>
					<input name="cuxChengjiList[0].id" type="hidden"/>
					<input name="cuxChengjiList[0].chengjiXueyuanid" type="hidden"/>
				  <td align="left">
							<t:dictSelect field="chengjiKaoshileixing" type="list"
										typeGroupCode="gradetype" defaultVal="${cuxChengjiPage.chengjiKaoshileixing}" hasLabel="false"  title="考试类型"></t:dictSelect>     
					  <label class="Validform_label" style="display: none;">考试类型</label>
					</td>
				  <td align="left">
							<input name="cuxChengjiList[0].chengjiKaoshishijian" maxlength="32" 
					  		type="text" class="Wdate" onClick="WdatePicker()"  style="width:120px;"
					                
					               >  
					  <label class="Validform_label" style="display: none;">考试时间</label>
					</td>
				  <td align="left">
					  	<input name="cuxChengjiList[0].chengjiKaoshifenshu" maxlength="32" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">考试分数</label>
					</td>
				  <td align="left">
							<t:dictSelect field="chengjiShifoutongguo" type="list"
										typeGroupCode="sf_yn" defaultVal="${cuxChengjiPage.chengjiShifoutongguo}" hasLabel="false"  title="是否通过"></t:dictSelect>     
					  <label class="Validform_label" style="display: none;">是否通过</label>
					</td>
   			</tr>
	</c:if>
	<c:if test="${fn:length(cuxChengjiList)  > 0 }">
		<c:forEach items="${cuxChengjiList}" var="poVal" varStatus="stuts">
			<tr>
				<td align="center"><div style="width: 25px;" name="xh">${stuts.index+1 }</div></td>
				<td align="center"><input style="width:20px;"  type="checkbox" name="ck" /></td>
					<input name="cuxChengjiList[${stuts.index }].id" type="hidden" value="${poVal.id }"/>
					<input name="cuxChengjiList[${stuts.index }].chengjiXueyuanid" type="hidden" value="${poVal.chengjiXueyuanid }"/>
				   <td align="left">
							<t:dictSelect field="cuxChengjiList[${stuts.index }].chengjiKaoshileixing" type="list"
										typeGroupCode="gradetype" defaultVal="${poVal.chengjiKaoshileixing }" hasLabel="false"  title="考试类型"></t:dictSelect>     
					  <label class="Validform_label" style="display: none;">考试类型</label>
				   </td>
				   <td align="left">
							<input name="cuxChengjiList[${stuts.index }].chengjiKaoshishijian" maxlength="32" 
					  		type="text" class="Wdate" onClick="WdatePicker()"  style="width:120px;"
					                
					                value="<fmt:formatDate value='${poVal.chengjiKaoshishijian}' type="date" pattern="yyyy-MM-dd"/>">  
					  <label class="Validform_label" style="display: none;">考试时间</label>
				   </td>
				   <td align="left">
					  	<input name="cuxChengjiList[${stuts.index }].chengjiKaoshifenshu" maxlength="32" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					                value="${poVal.chengjiKaoshifenshu }">
					  <label class="Validform_label" style="display: none;">考试分数</label>
				   </td>
				   <td align="left">
							<t:dictSelect field="cuxChengjiList[${stuts.index }].chengjiShifoutongguo" type="list"
										typeGroupCode="sf_yn" defaultVal="${poVal.chengjiShifoutongguo }" hasLabel="false"  title="是否通过"></t:dictSelect>     
					  <label class="Validform_label" style="display: none;">是否通过</label>
				   </td>
   			</tr>
		</c:forEach>
	</c:if>	
	</tbody>
</table>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<script type="text/javascript">
	$('#addCuxCheliangBtn').linkbutton({   
	    iconCls: 'icon-add'  
	});  
	$('#delCuxCheliangBtn').linkbutton({   
	    iconCls: 'icon-remove'  
	}); 
	$('#addCuxCheliangBtn').bind('click', function(){   
 		 var tr =  $("#add_cuxCheliang_table_template tr").clone();
	 	 $("#add_cuxCheliang_table").append(tr);
	 	 resetTrNum('add_cuxCheliang_table');
	 	 return false;
    });  
	$('#delCuxCheliangBtn').bind('click', function(){   
      	$("#add_cuxCheliang_table").find("input:checked").parent().parent().remove();   
        resetTrNum('add_cuxCheliang_table'); 
        return false;
    }); 
    $(document).ready(function(){
    	$(".datagrid-toolbar").parent().css("width","auto");
    	if(location.href.indexOf("load=detail")!=-1){
			$(":input").attr("disabled","true");
			$(".datagrid-toolbar").hide();
		}
		//将表格的表头固定
	    $("#cuxCheliang_table").createhftable({
	    	height:'300px',
			width:'auto',
			fixFooter:false
			});
    });
</script>
<div style="padding: 3px; height: 25px;width:auto;" class="datagrid-toolbar">
	<a id="addCuxCheliangBtn" href="#">添加</a> <a id="delCuxCheliangBtn" href="#">删除</a> 
</div>
<table border="0" cellpadding="2" cellspacing="0" id="cuxCheliang_table">
	<tr bgcolor="#E6E6E6">
		<td align="center" bgcolor="#EEEEEE">序号</td>
		<td align="center" bgcolor="#EEEEEE">操作</td>
				  <td align="left" bgcolor="#EEEEEE">
						车牌号
				  </td>
				  <td align="left" bgcolor="#EEEEEE">
						车型号
				  </td>
				  <td align="left" bgcolor="#EEEEEE">
						购入价格
				  </td>
				  <td align="left" bgcolor="#EEEEEE">
						购入时间
				  </td>
				  <td align="left" bgcolor="#EEEEEE">
						是否可用
				  </td>
	</tr>
	<tbody id="add_cuxCheliang_table">	
	<c:if test="${fn:length(cuxCheliangList)  <= 0 }">
			<tr>
				<td align="center"><div style="width: 25px;" name="xh">1</div></td>
				<td align="center"><input style="width:20px;"  type="checkbox" name="ck"/></td>
					<input name="cuxCheliangList[0].id" type="hidden"/>
					<input name="cuxCheliangList[0].createName" type="hidden"/>
					<input name="cuxCheliangList[0].createBy" type="hidden"/>
					<input name="cuxCheliangList[0].createDate" type="hidden"/>
					<input name="cuxCheliangList[0].updateName" type="hidden"/>
					<input name="cuxCheliangList[0].updateBy" type="hidden"/>
					<input name="cuxCheliangList[0].updateDate" type="hidden"/>
					<input name="cuxCheliangList[0].cheliangSuoshujiaxiao" type="hidden"/>
				  <td align="left">
					  	<input name="cuxCheliangList[0].cheliangChepaihao" maxlength="500" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">车牌号</label>
					</td>
				  <td align="left">
					  	<input name="cuxCheliangList[0].cheliangChexing" maxlength="500" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">车型号</label>
					</td>
				  <td align="left">
					  	<input name="cuxCheliangList[0].cheliangJiage" maxlength="32" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">购入价格</label>
					</td>
				  <td align="left">
							<input name="cuxCheliangList[0].cheliangShijian" maxlength="32" 
					  		type="text" class="Wdate" onClick="WdatePicker()"  style="width:120px;"
					                
					               >  
					  <label class="Validform_label" style="display: none;">购入时间</label>
					</td>
				  <td align="left">
							<t:dictSelect field="cheliangShifoukeyong" type="list"
										typeGroupCode="sf_yn" defaultVal="${cuxCheliangPage.cheliangShifoukeyong}" hasLabel="false"  title="是否可用"></t:dictSelect>     
					  <label class="Validform_label" style="display: none;">是否可用</label>
					</td>
   			</tr>
	</c:if>
	<c:if test="${fn:length(cuxCheliangList)  > 0 }">
		<c:forEach items="${cuxCheliangList}" var="poVal" varStatus="stuts">
			<tr>
				<td align="center"><div style="width: 25px;" name="xh">${stuts.index+1 }</div></td>
				<td align="center"><input style="width:20px;"  type="checkbox" name="ck" /></td>
					<input name="cuxCheliangList[${stuts.index }].id" type="hidden" value="${poVal.id }"/>
					<input name="cuxCheliangList[${stuts.index }].createName" type="hidden" value="${poVal.createName }"/>
					<input name="cuxCheliangList[${stuts.index }].createBy" type="hidden" value="${poVal.createBy }"/>
					<input name="cuxCheliangList[${stuts.index }].createDate" type="hidden" value="${poVal.createDate }"/>
					<input name="cuxCheliangList[${stuts.index }].updateName" type="hidden" value="${poVal.updateName }"/>
					<input name="cuxCheliangList[${stuts.index }].updateBy" type="hidden" value="${poVal.updateBy }"/>
					<input name="cuxCheliangList[${stuts.index }].updateDate" type="hidden" value="${poVal.updateDate }"/>
					<input name="cuxCheliangList[${stuts.index }].cheliangSuoshujiaxiao" type="hidden" value="${poVal.cheliangSuoshujiaxiao }"/>
				   <td align="left">
					  	<input name="cuxCheliangList[${stuts.index }].cheliangChepaihao" maxlength="500" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					                value="${poVal.cheliangChepaihao }">
					  <label class="Validform_label" style="display: none;">车牌号</label>
				   </td>
				   <td align="left">
					  	<input name="cuxCheliangList[${stuts.index }].cheliangChexing" maxlength="500" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					                value="${poVal.cheliangChexing }">
					  <label class="Validform_label" style="display: none;">车型号</label>
				   </td>
				   <td align="left">
					  	<input name="cuxCheliangList[${stuts.index }].cheliangJiage" maxlength="32" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					                value="${poVal.cheliangJiage }">
					  <label class="Validform_label" style="display: none;">购入价格</label>
				   </td>
				   <td align="left">
							<input name="cuxCheliangList[${stuts.index }].cheliangShijian" maxlength="32" 
					  		type="text" class="Wdate" onClick="WdatePicker()"  style="width:120px;"
					                
					                value="<fmt:formatDate value='${poVal.cheliangShijian}' type="date" pattern="yyyy-MM-dd"/>">  
					  <label class="Validform_label" style="display: none;">购入时间</label>
				   </td>
				   <td align="left">
							<t:dictSelect field="cuxCheliangList[${stuts.index }].cheliangShifoukeyong" type="list"
										typeGroupCode="sf_yn" defaultVal="${poVal.cheliangShifoukeyong }" hasLabel="false"  title="是否可用"></t:dictSelect>     
					  <label class="Validform_label" style="display: none;">是否可用</label>
				   </td>
   			</tr>
		</c:forEach>
	</c:if>	
	</tbody>
</table>

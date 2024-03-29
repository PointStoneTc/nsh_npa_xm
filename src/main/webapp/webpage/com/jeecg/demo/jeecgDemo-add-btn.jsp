<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>jeecg_demo</title>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<style type="text/css">
.subBtnmy {
	border: none;
	outline: none;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	color: #ffffff;
	display: block;
	cursor: pointer;
	margin: 0px auto;
	clear: both;
	padding: 5px 40px;
	text-shadow: 0 1px 1px #777;
	font-weight: bold;
	font-family: "Century Gothic", Helvetica, sans-serif;
	font-size: 22px;
	-moz-box-shadow: 0px 0px 3px #aaa;
	-webkit-box-shadow: 0px 0px 3px #aaa;
	box-shadow: 0px 0px 3px #aaa;
	background: #293846;
}

.subBtnmy:hover {
	background: #d8d8d8;
	color: #666;
	text-shadow: 1px 1px 1px #fff;
}
</style>
<script type="text/javascript">
  $(".ui_buttons").css("display","none");
  </script>
</head>
<body>
	<t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table"
		action="jeecgListDemoController.do?doAdd">
		<input id="id" name="id" type="hidden" value="${jeecgDemoPage.id }" />
		<input id="createDate" name="createDate" type="hidden" value="${jeecgDemoPage.createDate }" />
		<input id="createBy" name="createBy" type="hidden" value="${jeecgDemoPage.createBy }" />
		<input id="createName" name="createName" type="hidden" value="${jeecgDemoPage.createName }" />
		<input id="updateBy" name="updateBy" type="hidden" value="${jeecgDemoPage.updateBy }" />
		<input id="updateDate" name="updateDate" type="hidden" value="${jeecgDemoPage.updateDate }" />
		<input id="updateName" name="updateName" type="hidden" value="${jeecgDemoPage.updateName }" />
		<table style="width: 500px;" cellpadding="0" cellspacing="1" class="formtable">
			<tr>
				<td align="right"><label class="Validform_label"> 名称: </label></td>
				<td class="value"><input id="name" name="name" type="text" style="width: 150px" class="inputxt" datatype="*" />
					<span class="Validform_checktip"></span> <label class="Validform_label" style="display: none;">名称</label></td>
			</tr>
			<tr>
				<td align="right"><label class="Validform_label"> 年龄: </label></td>
				<td class="value"><input id="age" name="age" type="text" style="width: 150px" class="inputxt" datatype="d" />
					<span class="Validform_checktip"></span> <label class="Validform_label" style="display: none;">年龄</label></td>
			</tr>
			<tr>
				<td align="right"><label class="Validform_label"> 生日: </label></td>
				<td class="value"><input id="birthday" name="birthday" type="text" style="width: 150px" class="Wdate"
					onClick="WdatePicker()" /> <span class="Validform_checktip"></span> <label class="Validform_label"
						style="display: none;">生日</label></td>
			</tr>

			<tr>
				<td align="right"><label class="Validform_label"> 部门: </label></td>
				<td class="value"><t:dictSelect field="depId" type="list" dictTable="t_s_depart" dictField="id"
						dictText="departname" defaultVal="${jeecgDemoPage.depId}" hasLabel="false" title="部门"></t:dictSelect> <span
						class="Validform_checktip"></span> <label class="Validform_label" style="display: none;">部门</label></td>
			</tr>
			<tr>
				<td align="right"><label class="Validform_label"> 邮箱: </label></td>
				<td class="value"><input id="email" name="email" type="text" style="width: 150px" class="inputxt" datatype="e" />
					<span class="Validform_checktip"></span> <label class="Validform_label" style="display: none;">邮箱</label></td>
			</tr>
			<tr>
				<td align="right"><label class="Validform_label"> 电话: </label></td>
				<td class="value"><input id="phone" name="phone" type="text" style="width: 150px" class="inputxt" datatype="m" />
					<span class="Validform_checktip"></span> <label class="Validform_label" style="display: none;">电话</label></td>
			</tr>
			<tr>
				<td align="right"><label class="Validform_label"> 工资: </label></td>
				<td class="value"><input id="salary" name="salary" type="text" style="width: 150px" class="inputxt" /> <span
						class="Validform_checktip"></span> <label class="Validform_label" style="display: none;">工资</label></td>
			</tr>
			<tr>
				<td align="right"><label class="Validform_label"> 性别: </label></td>
				<td class="value"><t:dictSelect field="sex" type="radio" typeGroupCode="sex" defaultVal="${jeecgDemoPage.sex}"
						hasLabel="false" title="性别"></t:dictSelect> <span class="Validform_checktip"></span> <label
						class="Validform_label" style="display: none;">性别</label></td>
			</tr>
			<tr>
				<td align="right"><label class="Validform_label"> 入职状态: </label></td>
				<td class="value"><t:dictSelect field="status" type="list" typeGroupCode="sf_yn" defaultVal="N"
						hasLabel="false" title="入职状态"></t:dictSelect> <span class="Validform_checktip"></span> <label
						class="Validform_label" style="display: none;">入职状态</label></td>
			</tr>

			<tr>
				<td align="right"><label class="Validform_label"> 图片: </label></td>
				<td class="value"><t:webUploader displayTxt="false" bizType="photosucai" name="touxiang" auto="true"
						type="image"></t:webUploader></td>
			</tr>

			<tr>
				<td align="right"><label class="Validform_label"> 附件: </label></td>
				<td class="value"><t:webUploader auto="true" name="fujian"></t:webUploader></td>
			</tr>

			<tr>
				<td align="right"><label class="Validform_label"> 个人介绍: </label></td>
				<td class="value"><script type="text/javascript" charset="utf-8" src="plug-in/ueditor/ueditor.config.js"></script>
					<script type="text/javascript" charset="utf-8" src="plug-in/ueditor/ueditor.all.min.js"></script> <textarea
						name="content" id="content" style="width: 650px; height: 300px"></textarea> <script type="text/javascript">
							        var editor = UE.getEditor('content');
							    </script> <span class="Validform_checktip"></span> <label class="Validform_label" style="display: none;">个人介绍</label></td>
			</tr>
		</table>
		<div style="margin: 3px auto">
			<button type="submit" class="subBtnmy">提交</button>
		</div>
	</t:formvalid>
</body>

</html>
<script type="text/javascript">
 $(function(){
	 $(".ui_buttons").css("display","none");
 });
 </script>
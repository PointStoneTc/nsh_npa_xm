<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>通用Excel导入${controller_name}</title>
<t:base type="jquery,tools"></t:base>
</head>
<body style="overflow-y: hidden" scroll="no">
	<t:formvalid formid="formobj" layout="div" dialog="true" beforeSubmit="upload">
		<fieldset class="step">
			<div class="form">
				<t:upload name="fiels" width="120" buttonText="选择要导入的文件"
					uploader="${controller_name}.do?${empty method_name?'importExcel':method_name }" extend="*.xls;*.xlsx"
					id="file_upload" formData="documentTitle"></t:upload>
			</div>
			<div class="form" id="filediv" style="height: 50px"></div>
		</fieldset>
	</t:formvalid>
</body>
</html>

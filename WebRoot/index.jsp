<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>Struts2 File Upload</title>
  <body>
  	<form action="upload.action" method="post" enctype="multipart/form-data">
  		单文件上传：<br />
  		<input type="file" name="upload" />
  		<input type="submit" value="submit" />
  	</form>
  	<s:form action="multipleUploadUsingList" method="post" enctype="multipart/form-data">
  		多文件 上传，使用List:<br />
  		<s:file label="File(1)" name="uploads"></s:file>
  		<s:file label="File(2)" name="uploads"></s:file>
  		<s:file label="File(3)" name="uploads"></s:file>
  		<s:submit value="提交"></s:submit>
  	</s:form>
  	<s:fielderror></s:fielderror>	
  </body>
</html>

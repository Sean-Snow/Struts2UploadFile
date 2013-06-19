<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>Struts2 File Upload</title>
<body>
	Result:
	<br>
	<ul>
		<li>ContentType:<s:property value="uploadContentType" />
		</li>
		<li>FileName:<s:property value="uploadFileName" />
		</li>
		<li>FileTemp:<s:property value="upload" />
		</li>
		<li>FileServer:<s:property value="serverFileName" />
		</li>
		<li>FileSize:<s:property value="uploadFileSize/1024" />KB</li>
	</ul>
	<br />
	List Result:
	<ul>
		<li>ContentType:<s:iterator value="uploadsContentType" id="string">
		<s:property value="#string"/>
		</s:iterator>
		</li>
		<li>FileName:<s:iterator value="serverFileNames" id="str">
			<s:property value="#str"/><br/>
		</s:iterator>
		</li>
		<li>FileTemp:<s:iterator value="uploads" id="str">
			<s:property value="#str"/><br/>
		</s:iterator>
		</li>
		<li>FileServer:<s:property value="serverFileName" />
		</li>
		<li>FileSize:<s:property value="uploadFileSize/1024" />KB</li>
	</ul>
</body>
</html>

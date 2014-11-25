<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FeedBack Page</title>
</head>
<body>
<s:form action="feed">
<b>Feedback </b><br>
<s:textfield name="fname" label="Full Name"/><br>
<s:textfield name="fname" label="phone"/><br>
<s:textfield name="cemail" label="Contact Email"/><br>
<s:textfield name="sub" label="Subject"/><br>
<s:textfield name="msg" label="Message"/><br>
<s:submit/>
</s:form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="access.action">
<table>
<tr><td><s:checkboxlist value="false" name= "access" list="access"></s:checkboxlist></td>
</tr>
<s:submit value="Confirm" type="image" src="images/submit2.jpg"></s:submit>
</table>
</form>
<s:a href="stand.action"><img src="images/stand.jpg"></s:a>&nbsp;<s:a href="inter.action"><img src="images/interior.jpg"></s:a>&nbsp;<s:a href="exter.action"><img src="images/exterior.jpg"></s:a>&nbsp;<s:a href="access.action"><img src="images/access.jpg"></s:a>&nbsp;
<s:form action="invoice"><s:submit value="Submit" type="image" src="images/confirm_order.jpg"></s:submit></s:form>
</body>
</html>
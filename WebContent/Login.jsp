<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags" %>

<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type="text/css">@import url(css/main.css);
        </style>
        <style> .errorMessage { color:red; }
        </style> 
   
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here w/o valid</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Common.css" type="text/css" />
</head>
<body>
<br>
<h3 align="center"><font color="Red" face="Algerian"><u>Login Page</u></font></h3>
<div>
<s:form action="go" validate="true" focusElement="userid"> 
<s:textfield name="userid" label="Enter UserId:"></s:textfield>
<br><br><br>
<s:password name="password" label="Enter Password:"></s:password>
<s:submit align="center" type="image" src="images/submit2.jpg" />
</s:form>
</div>
<br>
<br>
<br>
<br>
<a href="reger.action "><img src="images/register.jpg"></a>
<s:a href="Forgot.action "><img src="images/forgot_password.jpg"></s:a>
</body>
</html>

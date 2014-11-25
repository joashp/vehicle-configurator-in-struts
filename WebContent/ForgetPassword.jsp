<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type="text/css">@import url(css/main.css);
        </style>
        <style> .errorMessage { color:red; }
        </style> 
   
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@taglib prefix="s" uri="/struts-tags" %>
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Common.css" type="text/css" />
<!-- script language="javascript">
 function validate_password(form) 
{
    
	if(frm.password.value != "" && frm.password.value == form.repassword.value) 
     {
           alert("Your Password has been updated successfully!!!!!!!");
 	  } 
 	else 
 	  {
 		alert("The password does not match!!!!");
      	return false;
      }

    return true;
  }
</script-->
</head>
<body>
<h3 align="center"><font color="Red" face="Algerian"><u>Forgot Password</u></font></h3>
<div>
<s:form action="Forget2" name="frm" validate="true">
<s:textfield name="userid" label="Enter UserId:"></s:textfield>
<br>
<s:password name="password" label="Enter Password:"></s:password>
<br>
<s:password name="repassword" label="reEnter Password:"></s:password><br>
<s:submit align="center" type="image" src="images/submit2.jpg"/>
</s:form>
</div>
</body>
</html>
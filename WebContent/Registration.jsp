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

<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Common.css" type="text/css" />
</head>
<body>
<h3 align="center"><font color="Red" face="Algerian"><u>Registration Page<u></h3>
<div>
<s:form action="goRegister" validate="true" focusElement="user_Id" >
<s:textfield name="user_Id" label="User_Id"></s:textfield>
<s:textfield name="name_Of_The_Company" label="Name of the Company"></s:textfield>

<s:textarea name="line1" label="Address-Line1"></s:textarea>
<s:textarea name="line2" label="Address-Line2"></s:textarea>
<s:textfield name="area_city_town" label="Area-City/Town"></s:textfield>
<s:textfield name="state" label="State"></s:textfield>
<s:textfield name="pincode" label="Pincode"></s:textfield>
<s:textfield name="telephone" label="Telephone"></s:textfield>
<s:textfield name="cell" label="Cell"></s:textfield>
<s:textfield name="fax" label="Fax"></s:textfield>
<s:radio list="{'Proprietary','Pvt.Ltd','Ltd'}" name="holding" label="Holding">
</s:radio>
<s:textfield name="name_Of_Authorized_Person" label="Name of the Authorized Person"></s:textfield>
<s:textfield name="company_ST_No" label="Company's ST No"></s:textfield>
<s:textfield name="company_VAT_Reg_No" label="Company's VAT Reg No"></s:textfield>
<s:textfield name="i_Tax_Pan" label="ITax PAN"></s:textfield>
<s:textfield name="email_Id" label="Email-id"></s:textfield>
<s:password name="password" label="Password"></s:password>
<s:password name="repassword" label="Re-Type Password"></s:password>
<s:submit align="center" type="image" src="images/register.jpg"></s:submit>
</s:form></div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,mypack.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table align="center" width="100%">
	<tr>
		<th align="center" colspan="15">
<font color="red" face="Algerian">Coeus Invoice</font></th></tr></table>
		
				<table align="center" width="80%" border="2">
					<tr>
						<th align="center" colspan="7" class="heading3" bgcolor="yellow">Invoice Report for Customer ID<font color="red" size="4"> <%=session.getAttribute("user_Id")%></font>
						</th>
					</tr></table>
					
<table border="2" align="center" width="80%">
<s:iterator id="ref" value="users">

<tr>
<td>
<b><h3>
User Name</h3></b>
</td>
<td><b><h3>
Name of Company</h3></b>
</td>
<td>
<b><h3>
Address</h3></b>
</td>
<td>
<b><h3>
Contact</h3></b>
</td>
<td>
<b><h3>
Email</h3></b>
</td>
</tr>



<tr>
<td><s:property value="user_Id"/></td>

<td><s:property value="name_Of_The_Company"/></td>
<td><s:property value="address"/></td>
<td><s:property value="cell"/></td>
<td><s:property value="email_Id"/></td>
</tr>
</s:iterator>
</table>
<br><br>

<jsp:include page="dummy.jsp"></jsp:include>

<table border="2" align="center" width="80%">

<s:iterator id="ref2" value="cardetails">

<tr>
<th align="center" colspan="7" class="heading3" bgcolor="yellow">Invoice Description
</th>
</tr>

<tr>
<td>
<b><h3>
Description</h3></b>
</td>
<td><b><h3>
Base Price</h3></b>
</td>
<td>
<b><h3>
Quantity</h3></b>
</td>
<td>
<b><h3>
Accessories</h3></b>
</td>
<td>
<b><h3>
Total Price</h3></b>
</td>

</tr>
<tr>
<td><s:property value="modelName"/></td>

<td><s:property value="base_price"/></td>
<td><s:property value="quantity"/></td>
<td><s:property value="accessoriesCost"/></td>
<td><s:property value="totalPrice"/></td>

</tr>
</s:iterator>
</table>
<br>
<br>
<s:a href="#"><img src="images/sende.jpg"></s:a>&nbsp;&nbsp;<s:a href="#" onclick="window.print();return false;"><img src="images/print.jpg"></s:a>&nbsp;&nbsp;<s:a href="SelectAction.action"><img src="images/cancel.jpg"></s:a>
</body>
</html>
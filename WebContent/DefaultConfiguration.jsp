<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<b>Welcome&nbsp;<%=session.getAttribute("user_Id")%></b>
<br>
<br>
<br>
<table>
<tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td align="right">
<s:iterator id="id2" value="general">
<img src=<s:property value="model_Image" /> height=200 width=300/>
</s:iterator></td></tr>
</table>
<table>
<s:iterator id="id" value="general">
<tr><td><font color="Blue"><b>Model Name:</b></font><s:property value="model_Name"/></td></tr>
<tr><td><font color="Blue"><b>Color:</b></font><s:property value="color"/></td></tr>
<tr><td><font color="Blue"><b>Engine:</b></font><s:property value="engine"/></td></tr>
<tr><td><font color="Blue"><b>Dimension:</b></font><s:property value="dimension"/></td></tr>
<tr><td><font color="Blue"><b>Top Speed:</b></font><s:property value="top_Speed"/></td></tr>
<tr><td><font color="Blue"><b>Displacement:</b></font><s:property value="displacement"/></td></tr>
<tr><td><font color="Blue"><b>Seating Capacity:</b></font><s:property value="seating_Capacity"/></td></tr>
</s:iterator>
</table>
<br>
<h2><font color="Red">
Standard Features:</font></h2>
<table>
<s:iterator id="ref" value="mylist">
<tr><td>
<s:property value="feature_Description"/>:
</td><td>
<s:property value="default_Value"/>
</td></tr>
</s:iterator>
</table>
<br>
<font color="Red"><h2>
Interior Features:</h2></font>
<table>
<s:iterator id="ref1" value="interior">
<tr><td>
<s:property value="feature_Description"/>:
</td><td>
<s:property value="default_Value"/>
</td></tr>
</s:iterator>
</table>
<br>
<font color="Red"><h2>
Exterior Features:</h2></font>
<table>
<s:iterator id="ref2" value="exterior">
<tr><td>
<s:property value="feature_Description"/>:
</td><td>
<s:property value="default_Value"/>
</td></tr>
</s:iterator>
</table>
<table>
<tr><td>
<b>Total Price= Rs</b>
</td><td align="center">
<s:iterator id="ref3" value="general">
<s:property value="price"/>
</s:iterator></td></tr>
</table>
<table align="Center" width="800">
<tr><td>
<s:form>
<s:submit value="Confirm Order" type="image" src="images/confirm_order.jpg"/>
</s:form>

</td>
<td>
<s:form action="stand.action">
<s:submit value="Configuration" type="image" src="images/config.jpg"/>
</s:form>
</td>
<td>
<s:form action="SelectAction">
<s:submit value="Modify" type="image" src="images/modify.jpg"/>
</s:form>
</td></tr>
</table>
</body>
</html>
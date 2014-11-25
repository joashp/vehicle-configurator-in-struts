<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<html>
<head>
<sx:head/>
<title>Listing</title>
<script>
var cnt = 0;
var min = 0;
function show_details() {
dojo.event.topic.publish("show_detail");
}
function check_min()
{
	var new_val = parseInt(document.getElementById("chk").value);
	if(new_val<min)
	{
		alert("Value of minimum quantity must be "+min);
		document.getElementById("chk").value = min;
	}		
}
function old_val()
{
	if(cnt == 0)
	{
		min = parseInt(document.getElementById("chk").value);
		//alert(min);
		cnt = 1;
	}
}
</script>
</head>
<body>
<b>Welcome&nbsp;<%=session.getAttribute("user_Id")%></b>
<br>
<br>
<br>
<s:form id="frm_demo" name="frm_demo" action="DefaultConfig" theme="css_xhtml">
<table>
<tr><td><i>Select Segment:</i></td><td>
<s:select  headerValue="---Select Segment---"  headerKey="1" id="dd1" list="toclist" name="type_Of_Car"
onchange="javascript:show_details();return false;dd1();"></s:select>
</td></tr></table>
<s:url id="d_url" action="SegeAction" /> 
<sx:div id="details" href="%{d_url}" listenTopics="show_detail" formId="frm_demo" showLoadingText=""></sx:div>
<br>
<table>
<tr>
<td align="center">
<s:submit value="submit" type="image" src="images/submit2.jpg"/>
</td></tr></table>
</s:form>
<br><br><br>
</body>
</html>
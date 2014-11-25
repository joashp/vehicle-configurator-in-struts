<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<html>
<head>
<sx:head/> 
<title></title>
<script>
function show_details() {
dojo.event.topic.publish("show_detail");
}
</script>
</head>
<body>
<s:iterator id="id2" value="general">
<img src=<s:property value="model_Image" /> height=200 width=200/>
</s:iterator>
<table>
<s:iterator id="id1" value="general">
<tr><td><s:property value="model_Name"/></td></tr>
<tr><td><s:property value="color"/>body color</td></tr>
<tr><td><s:property value="engine"/></td></tr>
<tr><td><s:property value="dimension"/></td></tr>
<tr><td><s:property value="acceleration"/></td></tr>
</s:iterator>
</table>
<s:form action="inter">
<s:if test="int1!= null">
<s:select label="Music System"  headerValue="---Select Music---"  headerKey="1" list="msclist" name="MSC"
onchange="javascript:show_details();return false;" ></s:select>
</s:if>
<br>
<s:if test="int2!= null">
<s:select label="AC System"  headerValue="---Select AC---"  headerKey="1" list="acslist" name="ACS"
onchange="javascript:show_details();return false;" ></s:select>
</s:if>
<br>
<s:if test="int3!= null">
<s:select label="GPS System"  headerValue="---Select GPS---"  headerKey="1" list="gpslist" name="GPS"
onchange="javascript:show_details();return false;" ></s:select>
</s:if>
<br>
<s:if test="int4!= null">
<s:select label="Seat Types"  headerValue="---Select Seat---"  headerKey="1" list="stlist" name="ST"
onchange="javascript:show_details();return false;" ></s:select>
</s:if>                                 
<s:submit value="submit" type="image" src="images/submit2.jpg"/>
</s:form>
<br><br>
<s:a href="stand.action"><img src="images/stand.jpg"></s:a>&nbsp;<s:a href="inter.action"><img src="images/interior.jpg"></s:a>&nbsp;<s:a href="exter.action"><img src="images/exterior.jpg"></s:a>&nbsp;<s:a href="access.action"><img src="images/access.jpg"></s:a>&nbsp;
<br><br>
<s:form action="invoice"><s:submit value="Submit" type="image" src="images/confirm_order.jpg"></s:submit></s:form>
</body>
</html>
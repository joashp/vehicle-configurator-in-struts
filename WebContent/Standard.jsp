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
<s:form action="stand">
<s:if test="int1!= null">
<s:select label="Seat Belts"  headerValue="---Select SeatsBelt---"  headerKey="1" list="sbltlist" name="SBLT"
onchange="javascript:show_details();return false;" ></s:select>
</s:if>
<br>
<s:if test="int2!= null">
<s:select label="Air Bag System"  headerValue="---Select AirBag---"  headerKey="1" list="abglist" name="ABG"
onchange="javascript:show_details();return false;" ></s:select>
</s:if>
<br>
<s:if test="int3!= null">
<s:select label="Transmission "  headerValue="---Select Trans---"  headerKey="1" list="trsmlist" name="TRSM"
onchange="javascript:show_details();return false;" ></s:select>
</s:if>
<br>
<s:if test="int4!= null">
<s:select label="Anti-lock"  headerValue="---Select Anti-lock---"  headerKey="1" list="abslist" name="ABS"
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
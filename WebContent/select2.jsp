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
<br>
<s:if test="mannamelist!= null">
<s:select label="Select Manufacture"  headerValue="---Select Manufacture---"  headerKey="1" list="mannamelist" name="manufacturer_Name"
onchange="javascript:show_details();return false;" ></s:select>
</s:if>
<br>
<br>
<s:if test="modnamelist!= null">
<s:select label="Select Model"  headerValue="---Select Model---"  headerKey="1" list="modnamelist" name="model_Name" id="variant" 
onchange="javascript:show_details();return false;" ></s:select>
</s:if>
<br>
<br>
<s:textfield id="chk" label="Minimum Quantity" name="minimum_Quantity" onblur="check_min()" onfocus="old_val()" />
<br>
<br>
</body>
</html>
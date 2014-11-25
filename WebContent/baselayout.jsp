<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><tiles:insertAttribute name="title" ignore="true" /></title>
<style type="text/css">
body{
	background-image:url('images/paper_fibers.png');
	background-repeat:repeat;
	font-family: 'Franklin Gothic Book';
	font-size: medium;
	font-weight: bolder;
	font-style: normal;
	font-variant: normal;
	color: black;
}
.transbox
  {
  width:1000px;
  height:850px;
  margin:30px 50px;
  background-color:#ababab;
  border:1px solid black;
  opacity:0.6;
  filter:alpha(opacity=50); /* For IE8 and earlier */
  }
</style>
</head>
<body>
<table cellpadding="2" align="center">
	<tr>
		<td height="200" width="1000" colspan="2">
			<tiles:insertAttribute name="header" />
		</td>
	</tr>
	<tr>
		<td height="600" width="150"><tiles:insertAttribute name="leftpane" /></td>
		<td height="600" width="850"><tiles:insertAttribute name="body" /></td>
	</tr>
	<tr>
		<td height="50" width="1000" colspan="2"><tiles:insertAttribute name="footer" />
		</td>
	</tr>
</table>
</body>
</html>
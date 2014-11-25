<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="coin-slider.min.js"></script>
<link rel="stylesheet" href="coin-slider-styles.css" type="text/css"/>
<style type="text/css">
.i
  {
  margin:10px 50px;
  border:1px solid black;
  }
</style>
</head>
<body>
<table>
<tr>
<td>
<div id="cs">
	<a href="#">
		<img src="images/a.jpg"/>
	</a>
	<a href="#">
		<img src="images/b.jpg"/>
	</a>
	<a href="#">
		<img src="images/c.jpg"/>
	</a>
	<a href="#">
		<img src="images/d.jpg"/>
	</a>
	<a href="#">
		<img src="images/e.jpg"/>
	</a>
	
</div>
</td>
<script type="text/javascript">
	$(document).ready(function() {
		$('#cs').coinslider({ width: 615, height:418, navigation: false, delay: 3000 });
	});
</script>
<td>
<div class="i">
<OBJECT align="right"  classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
 codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0"
 WIDTH=200 HEIGHT=400>
 <PARAM NAME=movie VALUE="Arcade_CAR.swf"> <PARAM NAME=quality VALUE=high> <PARAM NAME=bgcolor VALUE=#FFFFFF>
 <EMBED src="Speed_Car.swf" quality=high bgcolor=#FFFFFF  WIDTH=200 HEIGHT=400 TYPE="application/x-shockwave-flash" PLUGINSPAGE="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></EMBED>
</OBJECT>
</div>
</td>
</tr></table>
</body>
</html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <link type="text/css" href="menu.css" rel="stylesheet" />
    <script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript" src="menu.js"></script>
    <style type="text/css">
h1 {
	margin: auto auto auto 100px;
}
div#menu {
    margin: auto auto auto 100px;
    position:absolute;
}
div#copyright {
    font:1px 'Trebuchet MS';
    color:#000000;
    clear:left;
    position:absolute;
    top:1px;
    width:5px;
}
div#copyright a { color:#000000; }
div#copyright a:hover { color:#000000; }
</style>
</head>
<body>
<center>
<h1><img src="images/coeus-identity.jpg" height="150px" width="1000px"></h1>
<div id="menu" >
    <ul class="menu">
         <li><a href="home.action" class="parent"><span>Home</span></a></li>
         <li><a href="my.action " class="parent"><span>Sign In</span></a></li>
		<li><a href="reger.action" class="parent"><span>Registration</span></a></li>
		<li><a href="Feed.action" class="parent"><span>Feedback</span></a></li>
		<li><a href="AboutUsPage.action" class="parent"><span>About Us</span></a></li>
		<li><a href="ContactUs.action" class="parent"><span>Contact Us</span></a></li>
		<li><a href="games.action" class="parent"><span>Games</span></a></li>
    </ul>
</div>
</center>
</body>
</html>
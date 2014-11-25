<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,mypack.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! 
	Connection con;
	
 	public void jspInit()
 	{
 		con=SingletonCon.getConnection();
 		
 	}
 %>
 
 <%
 //standard features
 
 ArrayList std=(ArrayList)session.getAttribute("standard");
 ArrayList interior=(ArrayList)session.getAttribute("interior");
 ArrayList exterior=(ArrayList)session.getAttribute("exterior");
 // out.println(interior);
  	String str2 = session.getAttribute("model_Id").toString();
	String mid = str2.substring(1,str2.length()-1);
 try
 {
  //out.println(std);
 if(std!=null && std.isEmpty()==false)
 {
 
  out.println("<form>");
 out.println("<table border='3' width='80%' align='center'>");
  out.println("<tr><td>Standard Features </td><td>Default_Value</td><td>Alternate_feature_Added</td><td>Price</td></tr>");
 for(int i=0;i<std.size();i++)
 {
 PreparedStatement pst=con.prepareStatement("select distinct m.feature_description,m.default_value,f.alternate_features,f.price from model_features m,feature_master f where m.feature_id=f.feature_id and f.model_id=m.model_id and f.model_id=?and m.feature_type=? and f.alternate_features=?");
 pst.setString(1, mid);
 pst.setString(2,"standard");
 pst.setString(3, (String)std.get(i));
 ResultSet rs=pst.executeQuery();

 while(rs.next())
 {

 	out.println("<tr>");
 	out.println("<td>");
 	out.println(rs.getString(1));
 	out.println("</td>");
 
 	out.println("<td>");
 	out.println(rs.getString(2));
 	out.println("</td>");
 	
 	out.println("<td>");
 	out.println(rs.getString(3));
 	out.println("</td>");
 	
 	out.println("<td>");
 	out.println(rs.getString(4));
 	out.println("</td>");
 	out.println("</tr>");
 
 }
  
 //out.println(std);
 }
 out.println("</table>");
 }
 
 //interior features
 
 
 
 
 //out.println(interior);
 if(interior!=null && interior.isEmpty()==false)
 {
  out.println("<form>");
 out.println("<table border='3' width='80%' align='center'>");
  out.println("<tr><td>Internal Features </td><td>Default_Value</td><td>Alternate_feature_Added</td><td>Price</td></tr>");
 for(int i=0;i<interior.size();i++)
 {
 PreparedStatement pst=con.prepareStatement("select distinct m.feature_description,m.default_value,f.alternate_features,f.price from model_features m,feature_master f where m.feature_id=f.feature_id and f.model_id=m.model_id and f.model_id=? and m.feature_type=? and f.alternate_features=?");
 pst.setString(1, mid);
 pst.setString(2,"interior");
 pst.setString(3, (String)interior.get(i));
 ResultSet rs=pst.executeQuery();

 		while(rs.next())
 		{

 		out.println("<tr>");
 		out.println("<td>");
 		out.println(rs.getString(1));
 		out.println("</td>");
 
 		out.println("<td>");
 		out.println(rs.getString(2));
 		out.println("</td>");
 	
 		out.println("<td>");
 		out.println(rs.getString(3));
 		out.println("</td>");
 	
 		out.println("<td>");
 		out.println(rs.getString(4));
 		out.println("</td>");
 		out.println("</tr>");
 
 		}
 		
 	}	
 	out.println("</table>");
  //out.println(std);
 }

//exterior features-------------------------------------------------------------------
//out.println(exterior);
if(exterior!=null && exterior.isEmpty()==false)
 {
// out.println(exterior);
  out.println("<form>");
 out.println("<table border='3' width='80%' align='center'>");
  out.println("<tr><td>External Features </td><td>Default_Value</td><td>Alternate_feature_Added</td><td>Price</td></tr>");
 for(int i=0;i<exterior.size();i++)
 {
 PreparedStatement pst=con.prepareStatement("select distinct m.feature_description,m.default_value,f.alternate_features,f.price from model_features m,feature_master f where m.feature_id=f.feature_id and f.model_id=m.model_id and f.model_id=? and m.feature_type=? and f.alternate_features=?");
 pst.setString(1, mid);
 pst.setString(2,"exterior");
 pst.setString(3, (String)exterior.get(i));
 ResultSet rs=pst.executeQuery();

 		while(rs.next())
 		{

 		out.println("<tr>");
 		out.println("<td>");
 		out.println(rs.getString(1));
 		out.println("</td>");
 
 		out.println("<td>");
 		out.println(rs.getString(2));
 		out.println("</td>");
 	
 		out.println("<td>");
 		out.println(rs.getString(3));
 		out.println("</td>");
 	
 		out.println("<td>");
 		out.println(rs.getString(4));
 		out.println("</td>");
 		out.println("</tr>");
 
 		}
 		
 	}	
 	out.println("</table>");
  //out.println(std);
 }





 
 }
 catch(Exception ee)
 {
 	out.println(ee);
 }
  %>
 
 
 
 
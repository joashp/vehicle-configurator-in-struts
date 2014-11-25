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
try
{
		//standard features 
		//-----------------------------------------------------------------------------------------------------------------------------------------------

	//---------------------------------------------------------------------------------------------------------------------------------------------------------
	// Features
	PreparedStatement pst=con.prepareStatement("select Feature_Id,Feature_Description from Model_Features where Model_Id=? and Is_Configurable=? and Feature_Type=?");
	pst.setString(1,"SD_MR_SDZ"); //get the session
	pst.setInt(2,1);
	pst.setString(3,"Interior");
	ResultSet rs=pst.executeQuery();
	ArrayList<String> fi = new ArrayList<String>();
	ArrayList<String> fd = new ArrayList<String>();
	while(rs.next())	
	{
		fi.add(rs.getString(1));
		fd.add(rs.getString(2));

	}
	out.println("<b><u>Customisable Features</u></b>");
	out.println("<form action='second.jsp'>");
	out.println("<table>");
	for (int i = 0; i < fd.size(); i++) 
	{
		out.println("<tr>");
		PreparedStatement pst1=con.prepareStatement("select Alternate_Features, Price from Feature_Master where Model_Id=? and Feature_Id=?");
		pst1.setString(1,"SD_MR_SDZ");//get the session
		pst1.setString(2,fi.get(i));
		ResultSet rs1=pst1.executeQuery();
		
		out.println("<td>"+fd.get(i)+"</td>");
		out.println("<td>");
		out.println("<select name=val"+i+">");
		while(rs1.next())	
		{
			%>
			<option value="<%=rs1.getString(1)%>"><%=rs1.getString(1)%></option>
			<%
		}
		out.println("</select></td>");
		out.println("</tr>");
	}
	out.println("</table><input type='submit'>");
	out.println("<input type='button' value='Cancel'></form>");
}
catch(Exception e)
{
	out.println(e);
}
finally
{
	con.close();
}
%>
<a href="StdFeatures.jsp">Standard Features</a>&nbsp;<a href="Interior.jsp">Interior</a>&nbsp;<a href="Exterior.jsp">Exterior</a>&nbsp;<a href="Accessories.jsp">Accessories</a>
</body>
</html>
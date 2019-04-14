<%@page import = "java.sql.*" %>
<%

String email = request.getParameter("email");
session.setAttribute("tempid", email);
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root","root");
	String qr = "select * from user where email=?";
	PreparedStatement ps = con.prepareStatement(qr);
	ps.setString(1,email);
ResultSet rs = ps.executeQuery();
	if(rs.next())
	{
		do 
		{	String s = rs.getString("email");
			if(s.equals(email))
		   {
		         //response.sendRedirect("login.html");
		         %>
		        
		         <jsp:forward page="login.jsp?email<%=email%>"></jsp:forward>
		         <% 
		   }     
		}while(rs.next());
		
	}
	else
    {
		//response.sendRedirect("register.html");
		 %>
	        
         <jsp:forward page="register1.jsp"></jsp:forward>
         <% 
    }
	
	con.close();
}catch(Exception e)
{
%>
	<h1>SOME THING WENT WRONG</h1>
<%
}

%>
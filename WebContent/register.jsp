<%@page import = "java.sql.*" %>
<%
String name = request.getParameter("fname")+" "+request.getParameter("lname");
String email = request.getParameter("email");
String uname = request.getParameter("username");
String pass = request.getParameter("pass");
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root","root");
	String qr = "insert into user values(?,?,?,?)";
	PreparedStatement ps = con.prepareStatement(qr);
	ps.setString(1,name);
	ps.setString(2,email);
	ps.setString(3,uname);
	ps.setString(4,pass);
	int i=ps.executeUpdate();
	if(i>0)
	{
		
		response.sendRedirect("login.jsp"); 
	}
	
	con.close();
}catch(Exception e)
{
%>
	<h1>SOME THING WENT WRONG</h1>
<%
}

%>
<%@page import = "java.sql.*" %>
<%
String name = request.getParameter("fname")+" "+request.getParameter("lname");
String email = request.getParameter("email");
String uname = request.getParameter("username");
String option = request.getParameter("option");
String pass = request.getParameter("pass");
String qr;
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root","root");

	if(option.equals("Teacher"))
	{
	qr = "insert into user values(?,?,?,?)";
	}
	else
	{
		qr = "insert into student values(?,?,?,?)";
		
	}
	PreparedStatement ps = con.prepareStatement(qr);
	ps.setString(1,name);
	ps.setString(2,email);
	ps.setString(3,uname);
	ps.setString(4,pass);
	int i=ps.executeUpdate();
	if(i>0)
	{
		  session.setAttribute("tempid", email);
		//response.sendRedirect("login.jsp?email");
		  %><jsp:forward page="index1.html"></jsp:forward><% 
	}
	
	con.close();
}catch(Exception e)
{
%>

	<h1>SOME THING WENT WRONG</h1><%=option %>
<%
out.println(e);
}

%>
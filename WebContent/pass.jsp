
<%@page import = "java.sql.*"%>
<%
String pass = request.getParameter("pass");
String email = request.getParameter("email");
String option = request.getParameter("option");
String qr;
try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root","root");
if(option.equals("Teacher"))
  {
 	 qr = "select * from user where email=? and password=?";
  }
else
{
	 qr = "select * from student where email=? and password=?";
}

PreparedStatement ps = con.prepareStatement(qr);
ps.setString(1,email);
ps.setString(2,pass);
ResultSet rs =  ps.executeQuery();
 if(rs.next()) 
	 
  {  String name = rs.getString("name");
     session.setAttribute("tname", name);
     session.setAttribute("tempid", email);
     session.setAttribute("temppass", pass);
     if(option.equals("Teacher"))
     {
     %>
    
     <jsp:forward page="home.jsp"></jsp:forward>
     <% 
     }
     else
     {
    	  %>
    	    
    	     <jsp:forward page="StudentHome.jsp"></jsp:forward>
    	     <% 
    	 
     }
  }
 else
 {
	 %> <jsp:forward page="login.jsp?email=<%=email%>"></jsp:forward>
	 <h1>ENTER CORRECT PASSWORD</h1>
	 <%
 }
}catch(Exception e)
{
out.println(e);
}

%>
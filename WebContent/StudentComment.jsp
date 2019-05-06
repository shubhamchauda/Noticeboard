<%@page import = "java.sql.*" %>
<%
String name = (String)session.getAttribute("tname");
String email = (String)session.getAttribute("tempid");
String comment = request.getParameter("comment");
//String post = request.getParameter("post");
String post_id =  request.getParameter("postid");
int postid = Integer.parseInt(post_id);

if(name.equals("null"))
{
	response.sendRedirect("registe.html");
}

else
{
	 try{
         Class.forName("com.mysql.cj.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root","root");
         String qr = "insert into comment values(?,?,?,?)";   
     PreparedStatement ps = con.prepareStatement(qr);
     
       ps.setString(1,name);
      
       ps.setInt(2, postid);
       ps.setString(3, comment);
       ps.setString(4,email);
       int i = ps.executeUpdate();
       
     if(i>0)       
           {
    	     %>
    	     <jsp:forward page="StudentHome.jsp"></jsp:forward>
    	     <%  
    	     
           }
    
}
catch(Exception e)
    {
	    out.println(e);
    }
	
}
%>
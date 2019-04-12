<%@page import = "java.sql.*" %>
<%
String name = (String)session.getAttribute("tname");
String email = (String)session.getAttribute("tempid");
String npost = request.getParameter("bull");
//String post = request.getParameter("post");
String post_id =  request.getParameter("postid");
int postid = Integer.parseInt(post_id);

if(name.equals("null"))
{
	response.sendRedirect("register.html");
}

else
{
	 try{
         Class.forName("com.mysql.cj.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root","root");
         String qr = "update post SET post=? where post_id=?";   
     PreparedStatement ps = con.prepareStatement(qr);
     
       ps.setString(1,npost);
      
       ps.setInt(2, postid);
       int i = ps.executeUpdate();
       
     if(i>0)       
           {
    	     %>
    	     <jsp:forward page="home.jsp"></jsp:forward>
    	     <%  
    	     
           }
    
}
catch(Exception e)
    {
	    out.println(e);
    }
	
}
%>
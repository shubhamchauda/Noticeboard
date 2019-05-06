<%@page import = "java.sql.*" %>
<%
int postid = 0;
String name = (String)session.getAttribute("tname");
String email = (String)session.getAttribute("tempid");
String bull = request.getParameter("bull");
if(name.equals("null"))
{
	response.sendRedirect("register.html");
}

else
{
	 try{
         Class.forName("com.mysql.cj.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root","root");
         
      String qr1 = "select count(post) from post";
      
       PreparedStatement ps1 = con.prepareStatement(qr1);
       ResultSet rs =  ps1.executeQuery();
       if(rs.next())
       {
          postid = rs.getInt(1);  
          postid++;
       }
    	   
    		   
       String qr = "insert into post values(?,?,?,?)";   
         
       PreparedStatement ps = con.prepareStatement(qr);
       ps.setString(1,name);
       ps.setString(2, email);
       ps.setString(3, bull);
       ps.setInt(4,postid);
       int i = ps.executeUpdate();
     if(i>0)       
           {
    	    
    	      response.sendRedirect("home.jsp");
    	   
           }
    
}
catch(Exception e)
    {
	    out.println(e);
    }
	
}
%>
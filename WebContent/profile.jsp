<%@page import = "java.sql.*,java.io.*,java.util.*, javax.servlet.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
       <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <link type="text/css" rel="stylesheet" href="materialize.min.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="materialize.css"  media="screen,projection"/> 
      <link type="text/javascript" rel="javascript" href="materialize.min.js"  media="screen,projection"/>
	
    </head>
    <body class = "grey lighten-4">
<%
String uname = (String)session.getAttribute("tname");
String email = (String)session.getAttribute("tempid");
String pass = (String)session.getAttribute("temppass");
if(email.equals("null"))
{
%>
<jsp:forward page="index.jsp" ></jsp:forward>
<% 
}
else{
try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root","root");

String qr = "select * from post where email=? and name=?";
PreparedStatement ps = con.prepareStatement(qr);
ps.setString(1,email);
ps.setString(2,uname);
ResultSet rs =  ps.executeQuery();
%>
 <nav class= "red darken-4" role="navigation">
            <div class="nav-wrapper container">

            Hello   <a href = "profile.jsp"><%=uname%></a>
                <ul class="right hide-on-med-and-down">
                    <li><a href = "home.jsp">Home</a></li>
                    <li><a href = "profile.jsp">Profile</a></li>
                    <li><a href = "addbull1.jsp">Post Notice</a></li>
                    <li><a href = "logout.jsp">Logout</a></li>
                </ul>
            </div>
        </nav><br><br>
 <div class = "container">
  <div class="col s12 m4">
	      <div class="card red darken-2">
	        <div class="card-content white-text">
	        Name  : <%=uname %><br>
	        Email  : <%=email%>
	        </div>
	      </div>
	    </div>
	    
 </div>       
      
 <div class = "container">
<%       

  while(rs.next())
  {
		String name = rs.getString("name");
		String post = rs.getString("post");
		int post_id = rs.getInt("post_id");
		%>
		<div class="card">
		 <div class="col s7 m2">
	      <div class="card red darken-2">
	        <div class="card-content white-text">
	          <span class="card-title"><%=name%> posted </span> 
	          <p><%=post%></p>
	         <a href="edit.jsp?name=<%=name%>&postid=<%=post_id%>"> <button class="btn red darken-4 right"class = 'btn waves-effect waves-light btn-small right' type="submit" id = 'submit' name="send">Edit</button></a>
	         
	        </div>
	        	        
	      </div>
	      
	    </div>
	   </div> 
	   
	   
	    
		
<%  
   }
con.close();
} 
catch(Exception e)
{
	out.println(e);
}
}
%>
</div>
</body>
</html>
<%@page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
       <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <link type="text/css" rel="stylesheet" href="materialize.min.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="materialize.css"  media="screen,projection"/>
      <link type="text/javascript" rel="javascript" href="materialize.min.js"  media="screen,projection"/>
	<script type="text/javascript">
			var disable = function(){
				document.getElementById('submit').disabled = true;
			}
			var check =function() {
				if (document.getElementById('textarea1').value ==null)
				{
					alert("Make sure Password and Confirm Password are the same")
					document.getElementById('submit').disabled = true;
				}
				else
				{
					document.getElementById('submit').disabled = false;
				}
			}
		</script>
		<style>
		.ex1 {
       height: 110px;
     overflow-y: scroll;
     overflow-x: hidden;
     }
     /* width */
::-webkit-scrollbar {
  width: 10px;
}

/* Track */
::-webkit-scrollbar-track {
  background: #f1f1f1; 
}
 
/* Handle */
::-webkit-scrollbar-thumb {
  background: #888; 
}

/* Handle on hover */
::-webkit-scrollbar-thumb:hover {
  background: #555; 
}
		</style>
	</head>
    <body>
<%

String uname =(String)session.getAttribute("tname");
String email = (String)session.getAttribute("tempid");
String pass = (String)session.getAttribute("temppass");
int postid;
if(uname.equals("null"))
{%>
	  <jsp:forward page="login.jsp?email<%=email%>"></jsp:forward>
<% 
}
try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root","root");

String qr = "select * from post";
String qr1 = "select * from comment";
Statement s = con.createStatement();
Statement s1 = con.createStatement();
ResultSet rs1 = s.executeQuery(qr1);
ResultSet rs =  s1.executeQuery(qr);

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
<% while(rs.next())
	{
	String name = rs.getString("name");
	String post = rs.getString("post");
	int post_id = rs.getInt("post_id");
	rs1.beforeFirst();
	%>
	
	 <div class="col s12 m4">
      <div class="card red darken-5">
        <div class="card-content white-text">
          <span class="card-title"><%=name%> posted</span>
          <p><%=post%></p>
        </div>
        
      </div>
    </div>
    <div >
    
     <div class="col s12 m35" style="height:90px;"  >
     
       <div class="card white darken-2">
       <div  class="ex1">
         <div class="card-content black-text">
             <% while(rs1.next())
             {
               postid = rs1.getInt("post_id");
                if(postid == post_id)
                {
                	String comment = rs1.getString("comment");
                	String cname = rs1.getString("name")+" "+": ";
                	%>
                	<p><strong><%=cname%></strong><%=comment%></p>
                      <hr>          
                	<%
                	
                	
                }
             
             
             }
             %>
            <span class="card-title"></span>
             <form method="POST" action="comment.jsp?postid=<%=post_id %>" >
                <div class="row" style="padding:-50px;" >
                 
                  <div class="col s11">
                   <div class="input-field col s11">
                    <textarea name="comment" id="textarea1" class="materialize-textarea" data-length="120" onblur="check()" placeholder="comment..."></textarea>                 
                   </div>
                  </div>  
                  <br>
                  
                  <div class="col s1"> <button class="btn waves-effect waves-light black" type="submit" id = 'submit' name="action"><i class="material-icons black right">send</i></button></div>
                      <span class = "helper-text" data-error = "Enter comment"></span>
                 </div>
                  </form>
           </div> 
         </div>
        </div>
       
    
	
	<% 
	}
}catch(Exception e)
{
out.println(e);	
}
%>
</div>
</div>
</div>
</body>
</html>
           <%         
            String name = (String)session.getAttribute("tname");
            String post_id = request.getParameter("postid");
           
            %>


<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
       <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <link type="text/css" rel="stylesheet" href="materialize.min.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="materialize.css"  media="screen,projection"/>
      <link type="text/javascript" rel="javascript" href="materialize.min.js"  media="screen,projection"/>
	
    </head>
    <body>
		<nav class= "red darken-4" role="navigation">
            <div class="nav-wrapper container">
           

            Hello  <a href = "profile.jsp"><%= name%></a> 
                <ul class="right hide-on-med-and-down">
                    <li><a href = "home.jsp">Home<%=post_id%></a></li>
                    <li><a href = "profile.jsp">Profile</a></li>
                    <li><a href = "addbull.jsp">Add Bulletin</a></li>
                    <li><a href = "logout.jsp">Logout</a></li>
                </ul>
            </div>
        </nav><br><br>
        <form method = "POST" action="edit1.jsp?postid=<%=post_id%>">
        <div class = 'container'>
			<div  align="Center">
				<h1 class = "header center">Edit  Bulletin</h1>
			</div>
			
				<h4 align="center">COMMENT</h4>
				<textarea rows="4" cols=50% name = "bull" placeholder="Post a bulletin"></textarea>
		   		<button  class="btn red darken-4 right" type="submit" id = 'submit' name="send">Send Bullet</button>
			</div>
			</form>
	</body>
</html>

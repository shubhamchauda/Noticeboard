<!DOCTYPE html>
<html>
	<head>
	  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <link type="text/css" rel="stylesheet" href="materialize.min.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="materialize.css"  media="screen,projection"/>
      <link type="text/javascript" rel="javascript" href="materialize.min.js"  media="screen,projection"/>
	
		<title>Login</title>
		
	</head>
	<body class = "red darken-4" >
    <style>
      body{
          background-image: url("https://previews.123rf.com/images/exoticvector/exoticvector1801/exoticvector180101901/94250513-social-media-background-with-chat-notification-bubbles-in-icons-communication-in-global-network-vect.jpg");
          background-size: cover;
          width: 40%;
          height: 90%;
          margin-left:auto;
          margin-right: auto;
        
          margin-top: 1%;   
      }
    </style>
<div class = "card">
  <div class="row">
    <form action="pass.jsp" method="post">
      <%
          String email=request.getParameter("email");
      %>
        <div class="row">
          <div  align="Center">
                  
        <h4 styleclass = "header center">LOGIN</h4>
      </div>
        <div class="input-field col s12">
         Email <input value=<%=email%> id="disabled" type="text" class="validate" name="email">
         
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          Password <input id="password" type="password" class="validate" name="pass">
          
        </div>
      </div>
       <div class="col s4 offset-s1">
          		<button type="submit" class="btn red darken-4 "class = "btn waves-effect waves-light btn-small" id = 'submit' name="login"> Login </button>
              <br> <br>
       </div>

    </form>
 </div>
</div>

</body>
</html>
<!DOCTYPE html>
<html>
	<head>
	  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <link type="text/css" rel="stylesheet" href="materialize.min.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="materialize.css"  media="screen,projection"/>
    <script type="text/javascript" src="materialize.min.js"></script>
	
		<title>Login</title>
		<script type="text/javascript">
		 document.addEventListener('DOMContentLoaded', function() {
             var elems = document.querySelectorAll('select');
            var instances = M.FormSelect.init(elems);
                });
			
			
			
		
		</script>
		
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
         session.setAttribute("tempid", email);
        String email1 = (String) session.getAttribute("tempid");
        if(email1.equals("null"))
        {
        	email1="";
        }
         
      %>
        <div class="row">
          <div  align="Center">
                  
        <h4 styleclass = "header center">LOGIN</h4>
      </div>
        <div class="input-field col s10 offset-s1 ">
         Email <input value=<%=email1%> id="disabled" type="text" class="validate" name="email">
         
        </div>
        
	  			 
      </div>
      <div class = "row">
    
      <div class="row">
        <div class="input-field col s10 offset-s1">
          Password <input id="password" type="password" class="validate" name="pass">
          
        </div>
      </div>
        <div class="input-field col s5 offset-s1">
                            <select name = "option" >
                             
                             <option value="Student">Student</option>
                             <option value="Teacher">Teacher</option>
                           
                           </select>
                            
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
<%
  String email = (String) session.getAttribute("tempid");

%>
<!DOCTYPE html>
<html>
	<head>
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="materialize.min.css"  media="screen,projection"/>
        <link type="text/css" rel="stylesheet" href="materialize.css"  media="screen,projection"/>
        <link type="text/css"  rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <link type="text/javascript" rel="javascript" href="materialize.min.js"  media="screen,projection"/>
        <script type="text/javascript" src="materialize.min.js"></script>
	
		<title>Sign Up</title>
		<script type="text/javascript">
		 document.addEventListener('DOMContentLoaded', function() {
             var elems = document.querySelectorAll('select');
            var instances = M.FormSelect.init(elems);
                });
			
			
			var disable = function(){
				document.getElementById('submit').disabled = true;
			}
			var check =function() {
				if (document.getElementById('password').value !=
				document.getElementById('confirm_password').value)
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
		
	</head>
	<body  class = "grey lighten-3" >
		<style>
			body{
					
					background-size: cover;
					width: 40%;
					height: 90%;
					margin-left:auto;
					margin-right: auto;
				
					margin-top: 1%;   
			    }
		</style>
		<div class="card">

			<div class="container" class="row">
			
	  			<form method="post" action="register.jsp">
	  				<div class="row">
	  					<br>
	  					<div  align="Center">
	         				
				<h4 styleclass = "header center">Registration</h4>
			</div>
        			<div class="input-field col s5 offset-s1">
          				<input name="fname" type="text" class="validate" id = "first_name" required>
		  				<label for = "first_name">First Name</label>
						<span class = "helper-text" data-error = "Enter First Name"></span>
        			</div>
        			<div class="input-field col s5">
          				<input name="lname" type="text" class="validate" id = "last_name" required>
		  				<label for = "last_name">Last Name</label>
						<span class = "helper-text" data-error = "Enter Last Name"></span>
        			</div>
			  	</div>
	  			<div class="row">
					<div class="input-field col s10 offset-s1">
						<input value =<%=email %> name="email" type="email" class="validate" id = "email" required>
						<label for = "email">E-Mail</label>
						<span class = "helper-text" data-error = "Enter Email Address"></span>
					</div>
	  			</div>
				<div class="row">
					<div class="input-field col s10 offset-s1">
						<input name = "username" type="text" class="validate" id = "username" required>
						<label for = "email">User name</label>
						<span class = "helper-text" data-error = "Enter Username"></span>
					</div>
	  			</div>
	  			
                <div class = "row">	  
	  			 <div class="input-field col s10 offset-s1">
                            <select name = "option" >
                             
                             <option value="Student">Student</option>
                             <option value="Teacher">Teacher</option>
                           
                           </select>
                            
                 </div>
                 </div>
                   
       							
      			<div class="row">
        			<div class="input-field col s10 offset-s1">
          				<input name="pass" type="password" id = "password" maxlength="20" minlength="8" class="validate" required>
		  				<label for = "password">Password</label>
						<span class = "helper-text" data-error = "Enter Password"></span>
					</div>
      			</div>
	  			<div class="row">
        			<div class="input-field col s10 offset-s1">
          				<input name="cpassword" type="password" id = "confirm_password" maxlength="20" minlength="8" class="validate" onblur="check()" required>
		  				<label for = "confirm_password">Confirm Password</label>
					</div>
      			</div>
      			<div class="row">
					
					<div class="col s4 offset-s1" onclick="check()">
          				<button type="submit" class="btn green darken-4" class = "btn waves-effect waves-red waves-ripple btn-small:hover" id = 'submit' name="signup"> Sign Up </button>
          				<br><br>
        			</div>
      			</div>
				 
					
					
					
      			
	  			</form>
	  		
	  		</div>	
	  	</div>	
	  	 
	</body>
</html>

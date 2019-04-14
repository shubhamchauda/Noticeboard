<!DOCTYPE html>
<html>
	<head>
	  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <link type="text/css" rel="stylesheet" href="materialize.min.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="materialize.css"  media="screen,projection"/>
      <link type="text/css"  rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
     <script type="text/javascript" src="materialize.min.js"></script>
		<title>Login</title>
		
	</head>


	<body  class = "grey lighten-3" > 
				<style >
					body{
					
					background-size: cover;
					width: 40%;
					height: 100%;
					margin-left:auto;
					margin-right: auto;
				
					margin-top: 5%; 
			}
			cen{
				align:center;
			}
		</style>
	<div  class = "card">
     		<div class="row">
	 			 <form height="30%" width="30%"method="post" action="scheck.jsp">
	     
	         		<div class="cen" class="row" >
	         			<div  align="Center">
			            	<h1 styleclass = "header center">STUDENT LOGIN</h1><br>
		            	</div>
						<div class="input-field col s10 offset-s1">

							<input name="email" type="email" class="validate" id = "email" placeholder="Email"required>
							<span class = "helper-text" data-error = "Enter Email Address"></span>
						</div>

	  				</div>
	  			<div class="col s4 offset-s1">
          			<button type="submit" class="btn green darken-4" class = "btn waves-effect waves-green darken-4 btn-large:hover" id = 'submit' name="signup"> check box </button>
          			<BR>
          			<br>
        		</div>
	    	            
	 			 </form>
		 </div>
	</div>
	 
	</body>
</html>

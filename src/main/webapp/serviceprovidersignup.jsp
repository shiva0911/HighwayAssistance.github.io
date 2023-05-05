
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>service provider Sign Up</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<input type="hidden" id="status" value="<%=request.getAttribute("status") %>">
	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container-fluide">
			<marquee><h1>HighwayAssiastance</h1></marquee>
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Service Provider Sign up</h2>
					
						<form method="post" action="serviceprovidersignup" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="servicename" id="name" placeholder="Your Name" required="required"/>
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="serviceemail" id="email" placeholder="Your Email" required="required" />
							</div>
							<div class="form-group">
								<label for="adhar"><i class="zmdi zmdi-assignment"></i></label>
								<input type="text" name="serviceadhar" id="contact"
									placeholder="Adhar no"  required="required"/>
							</div>
							
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="servicepass" id="pass" placeholder="Password" required="required" />
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="servicerepass" id="repass"
									placeholder="Repeat your password"  required="required"/>
							</div>
							
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-account-add"></i></label>
								<input type="text" name="servicecontact" id="contact"
									placeholder="Contact no" required="required"/>
							</div>
							<div class="form-group">
								<label for="dateofb"><i class="zmdi zmdi-account-add"></i></label>
								<input type="date" name="servicedate" id="contact"
									placeholder="Date of Birth" required="required"/>
							</div>
							<div class="form-group">
								<label for="address"><i class="zmdi zmdi-pin"></i></label>
								<input type="text" name="serviceaddress" id="contact"
									placeholder="Enter Address" required="required" />
							</div>
							<div class="form-group">
								<label for="city"><i class="zmdi zmdi-pin-drop"></i></label>
								<input type="text" name="servicecity" id="contact"
									placeholder="City"  required="required"/>
							</div>
							
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>I
									agree all statements in <a href="#" class="term-service">Terms
										of service</a></label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="serviceprovidersignup" id="serviceprovidersignup"
									class="form-submit" value="Register" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="images/l1.png" alt="sing up image">
						</figure>
						<a href="login.jsp" class="signup-image-link">I am already
							member</a>
					</div>
				</div>
			</div>
		</section>


	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script type="text/javascript">
	var status=document.getElementById("status").value;
	if(status=="success")
	{
	swal("congrates","Account Created Successfully","success");
	}
	
	if(status=="invalidname")
	{
	swal("sorry","please enter name","error");
	}
	if(status=="invaliemail")
	{
	swal("sorry","please enter email","error");
	}
	if(status=="invalipassword")
	{
	swal("sorry","please enter password","error");
	}
	if(status=="invalidconformpassword")
	{
		swal("sorry","password doesnot match","error");
	}
	if(status=="invalimobileno")
	{
	swal("sorry","please enter mobilenumber","error");
	}
	else if(status=="invalimobilelength")
	{
		swal("sorry","mobile number should be 10 digits","error");
	}
	
	
	
	if(status=="invaliadhar")
	{
	swal("sorry","enter adhar number","error");
	}
	else if(status=="invaliadhar")
	{
		swal("sorry","adhar number should be 12 digits","error");
	}
	if(status=="invalidaddress")
	{
	swal("sorry","please enter address","error");
	}
	if(status=="invalidcity")
	{
	swal("sorry","please enter city","error");
	}
	if(status=="invaliddob")
	{
	swal("sorry","please enter city","error");
	}

	   
	</script>



</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
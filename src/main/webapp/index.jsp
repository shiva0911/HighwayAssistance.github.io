
<%
if (session.getAttribute("name") == null) {
	response.sendRedirect("login.jsp");
}
%>
<!doctype html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<!--data aos-->
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />

<title>Highway Assiastance</title>
<link rel="stylesheet" href="style.css">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


</head>

<body>

	<!--navbar start-->


	<nav class="navbar navbar-expand-sm sticky-top navbar-light "
		style="background-color: #d0d2ce">
		<div class="container-fluid">
			<a class="navbar-brand pl-lg-5 " href="index.jsp">Highway_Assistance</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbar1">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse text-center" id="navbar1">
				<ul class="navbar-nav">
					<li class="nav-item active"><a class="nav-link"
						href="index.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#about">About</a>
					</li>


					<li class="nav-item"><a class="nav-link" href="emergency.jsp">Emergency</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="service.jsp">services</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="feedback.jsp">review&rating</a>
					</li>

					<li class="nav-item"><a class="nav-link" href="#contact">Contactus</a>
					</li>
				</ul>
				<ul class="navbar-nav ml-auto">
				
				
					<li class="nav-item active bg-danger"><a class="nav-link"
						href="index.jsp"><%=session.getAttribute("name")%></a><i
									class="zmdi zmdi-account material-icons-name"></i></li>
						
						
						
						
					<li class="nav-item active"><a class="nav-link"
						href="login.jsp">Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!--navbar end-->
	<!--header start-->
	<div class="header">
		<div id="carouselExampleControls" class="carousel slide"
			data-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="d-block w-100" src="images/header1.jpg"
						alt="First slide" />
				</div>
				<div class="carousel-caption">

					<h1>""</h1>

				</div>
			</div>
		</div>
	</div>
	<!--header end-->
	<!--about-->
	<section id="about">
		<div class="container-fluid" style="background-color: #d0d2ce;">
			<div>
				<h1 data-aos="flip-left" class="text-center py-5">
					<span style="color: red;">A</span>bout
				</h1>
			</div>
			<div class="row">
				<div class="col-md-5">
					<img data-aos="fade-right" data-aos-offset="300"
						data-aos-easing="ease-in-sine" src="./images/about1.jpg"
						class="img-fluid">
				</div>
				<div class="col-md-7">
					<p data-aos="zoom-in" class="text-justify">
						<span>H</span>ighway assistance refer to the facilities and
						amenities provided to travelers along highways and expressways.
						These services can include towing, puncture, fuel delivery, and
						engine services. The goal of highway assistance is to provide
						emergency service and convenient place to take a break, refuel,
						and purchase food and other necessary items during their travels.
						<br> The quality and availability of highway assistance can
						vary depending on the location and the type of road. For example,
						rural highways may have fewer services than urban highways, and
						interstates may have more services than smaller roads. In
						addition, highway assistance may be operated by private companies,
						or by the government. <br> Highway assistance play an
						important role in promoting safe and efficient travel, and can
						also contribute to the local economy by providing jobs and
						generating tax revenue. If you are traveling on a highway and are
						in need of a break, be sure to take advantage of the services that
						are available, and drive safely.



					</p>
					<div class="text-center py-5">

						<a href="#rules" class="btn btn-primary" type="submit">view
							more</a> <a href="#contact" class="btn btn-primary" type="submit">Contact</a>
					</div>
				</div>


			</div>
		</div>


	</section>
	<!--about end-->
	<!--traffic rule start-->
	<section id="rules">

		<div class="container-fluid" style="background-color: #d0d2ce;">
			<h1 data-aos="flip-left" class="text-center py-5">
				<span style="color: red;">T</span>raffic<span style="color: red;">R</span>ule
			</h1>
			<div class="row p-5">

				<div class="col-md-3">
					<div data-aos="zoom-out" class="card">
						<img class="card-img-top" src="./images/drink.jpg"
							alt="Card image cap">
						<div class="card-body">
							<h5 data-aos="flip-up" class="card-title">Drink and Drive</h5>
							<p class="card-text text-justify">This rule requires that we
								should not drive a vehicle if we have consumed alcohol of a
								specified amount as it would impair our judgement while driving.
							</p>

							<a href="#rules" class="btn btn-primary">Read_More</a>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div data-aos="zoom-out" class="card">
						<img class="card-img-top" src="./images/insu.jpg"
							alt="Card image cap">
						<div class="card-body">
							<h5 data-aos="flip-up" class="card-title">Insurance</h5>
							<p class="card-text text-justify">Insurance is meant to
								protect others who might be affected by accidents caused by our
								negligence or incompetence. Therefore,</p>
							<a href="#rules" class="btn btn-primary">Read_More</a>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div data-aos="zoom-out" class="card">
						<img class="card-img-top" src="./images/driving.jpg"
							alt="Card image cap">
						<div class="card-body">
							<h5 data-aos="flip-up" class="card-title">Licances</h5>

							<p class="card-text text-justify">A driving licence is
								government-issued proof that we can drive on the roads. Besides
								the age requirement, a driving licence is issued.</p>
							<a href="#rules" class="btn btn-primary">Read_More</a>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div data-aos="zoom-out" class="card">
						<img class="card-img-top" src="./images/expirecar.jpg"
							alt="Card image cap">
						<div class="card-body">
							<h5 data-aos="flip-up" class="card-title">Expired car</h5>
							<p class="card-text text-justify">Some quick example text to
								build on the card title and make up the bulk of the card's
								content. and perform following operations means thsat</p>
							<a href="#rules" class="btn btn-primary">Read_More</a>
						</div>
					</div>
				</div>


			</div>
			<div class="row p-5">
				<div class="col-md-3">
					<div data-aos="zoom-out" class="card">
						<img class="card-img-top" src="./images/mobile.jpg"
							alt="Card image cap">
						<div class="card-body">
							<h5 data-aos="flip-up" class="card-title">Avoide phone while
								driving</h5>


							<p class="card-text text-justify">This rule is of fairly
								recent origin as the government felt that the use of mobile
								phones while driving distracted drivers and caused accidents. In
								particular, with two-wheeler drivers.</p>
							<a href="#rules" class="btn btn-primary">Read_More</a>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div data-aos="zoom-out" class="card">
						<img class="card-img-top" src="./images/seatbelt.jpg"
							alt="Card image cap">
						<div class="card-body">
							<h5 data-aos="flip-up" class="card-title">Seatbelt</h5>
							<p class="card-text text-justify">Wear a seat belt/helmet
								while driving a car/bike: The seat belt is a safety feature
								meant to protect the car's driver from the impact of a collision
								in an accident so we can tave care of this to avoide</p>
							<a href="#rules" class="btn btn-primary">Read_More</a>
						</div>
					</div>
				</div>

				<div class="col-md-3">
					<div data-aos="zoom-out" class="card">
						<img class="card-img-top" src="./images/trafficrules.jpg"
							alt="Card image cap">
						<div class="card-body">
							<h5 data-aos="flip-up" class="card-title">Traffic rules</h5>


							<p class="card-text text-justify">Speed limits have been
								prescribed for major public roads depending on traffic flow and
								time of day. Therefore, we should obey them</p>
							<a href="#rules" class="btn btn-primary">Read_More</a>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div data-aos="zoom-out" class="card">
						<img class="card-img-top" src="./images/expirecar.jpg"
							alt="Card image cap">
						<div class="card-body">
							<h5 data-aos="flip-up" class="card-title">Card title</h5>
							<p class="card-text">Speed limits have been prescribed for
								major public roads depending on traffic flow and time of day.
								Therefore, we should obey them</p>
							<a href="#rules" class="btn btn-primary">Read_More</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--services start-->
		<section id="service">
			<div class="container-fluid" style="background-color: #d0d2ce;">
				<h1 data-aos="flip-left" class="text-center py-5">
					<span style="color: red;">S</span>ervices
				</h1>
				<div class="row">
					<div class="col-md-6">
						<img src="./images/./bikeservice.png" class="img-fluid">
						<p>f your bike breaks down due to an electrical or mechanical
							fault, it may be repaired at the immobilized location. However,
							such repairs are carried out only if these are done within 60
							minutes. Generally, the cost of replacement materials is not
							covered.If you lose the keys of your bike, the insurer will
							arrange for duplicate keys to your location.in case the bike does
							not start due to draining of the battery, jump-start facility is
							available under the 24x7 roadside assistance.</p>
						<a href="service.jsp" class="btn btn-primary" type="submit">Bike
							service</a>
					</div>
					<div class="col-md-6">
						<img src="./images/./carservice.jpg" class="img-fluid">

						<p>In case your car runs out of fuel, delivers up to five
							liters of fuel (petrol or diesel). However, the cost of the same
							must be borne by you. Furthermore, if the tank is filled with the
							wrong kind of fuel, the insurer bears the cost of using a trained
							technician to empty the tank. If this is not possible, the bike
							will be towed to the nearest location. However, the cost of
							repairing the tire at the workshop is not covered under the
							roadside assistance for four-wheeler and you will have to pay for
							the same</p>
						<a href="service.jsp" class="btn btn-primary" type="submit">Car
							services</a>
					</div>
				</div>
			</div>
		</section>
		<!--servieces end-->
		<!--faqstart-->

		<section id="faq">
			<div class="container-fluid" style="background-color: #d0d2ce;">
				<div>
					<h1 data-aos="flip-left" class="text-center py-3">
						<span style="color: red;">F</span>requently <span
							style="color: red;">A</span>sked <span style="color: red;">Q</span>uestions
					</h1>
				</div>

				<div class="card" style="background-color: #d0d2ce">
					<div class="card-header" id="headingTwo">
						<h5 class="mb-0">
							<button class="btn btn-link collapsed" data-toggle="collapse"
								data-target="#collapseTwo" aria-expanded="false"
								aria-controls="collapseTwo">
								<h6 style="color: black">What is Highway Assiastance ?</h6>
							</button>
						</h5>
					</div>
					<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
						data-parent="#accordion">
						<div class="card-body">Highway Assiastance is a network of
							technology-enabled car,bikeservice centres, offering a seamless
							service experience at the convenience of a tap. With our highly
							skilled technicians, manufacturer recommended procedures and the
							promise of genuine spare parts, we are your best bet.</div>
					</div>
				</div>



				<div class="card" style="background-color: #d0d2ce">
					<div class="card-header" id="headingOne">
						<h5 class="mb-0">
							<button class="btn btn-link" data-toggle="collapse"
								data-target="#collapseOne" aria-expanded="true"
								aria-controls="collapseOne">
								<h6 style="color: black">Where can I book a services ?</h6>

							</button>
						</h5>
					</div>

					<div id="collapseOne" class="collapse show"
						aria-labelledby="headingOne" data-parent="#accordion">
						<div class="card-body">You can book a service directly from
							our website . Want a more human experience? call or WhatsApp on
							8398 4574 78.</div>
					</div>
				</div>


				<div class="card" style="background-color: #d0d2ce">
					<div class="card-header" id="headingThree">
						<h5 class="mb-0">
							<button class="btn btn-link collapsed" data-toggle="collapse"
								data-target="#collapseThree" aria-expanded="false"
								aria-controls="collapseThree">
								<h6 style="color: black">Do I have to pay before service ?
								</h6>

							</button>
						</h5>
					</div>

					<div id="collapseThree" class="collapse"
						aria-labelledby="headingThree" data-parent="#accordion">
						<div class="card-body">Not at all. From the booking to
							delivery, our priority at keeps You and Your Car Service first.
							We will send you the bill once your car is serviced and inspected
							by our professionals. We offer flexible payment options for your
							ease. You can still prepay if you choose to.</div>
					</div>
				</div>
			</div>
			</div>
		</section>
		<!--faq end-->
		<!--contact start-->
		<section id="contact">

			<div class="container-fluid" style="background-color: #d0d2ce;">

				<h1 data-aos="flip-left" class="text-center py-3">
					<span style="color: red;">C</span>ontcact <span style="color: red;">U</span>s
				</h1>

				<footer class="w-100 py-4 flex-shrink-0">
					<div class="container py-4">
						<div class="row gy-4 gx-5">
							<div class="col-lg-4 col-md-6">
								<h5 class="h1 text-black">Highway_Assistance</h5>
								<p class="small text-muted">"we give us emergency services
									on road!"</p>
								<p class="small text-muted mb-0">
									&copy; Copyrights. All rights reserved. <a class="text-primary"
										href="#">Highway_Assistance.com</a>
								</p>
							</div>
							<div class="col-lg-2 col-md-6">
								<h5 class="text-black mb-3">Quick links</h5>
								<ul class="list-unstyled text-muted">
									<li><a href="#">Home</a></li>
									<li><a href="#">quize</a></li>
									<li><a href="#service">Services</a></li>
									<li><a href="#rules">rules</a></li>
									<li><a href="#contact">Contact</a></li>
								</ul>
							</div>
							<div class="col-lg-2 col-md-6">
								<h5 class="text-white mb-3"></h5>
								<ul class="list-unstyled text-muted">
									<li><a href="#">Home</a></li>
									<li><a href="#about">about</a></li>
									<li><a href="#">quize</a></li>
									<li><a href="#rules">rules</a></li>
									<li><a href="#service">services</a></li>
									<li><a href="#contact">Contact</a></li>
								</ul>
							</div>

							<div class="col-lg-4 col-md-6">
								<h5 class="text-dark mb-3">Highway_Assistance</h5>
								<p class="small text-muted">To get the latest feed subscribe
									here...</p>
								<form action="#">
									<div class="input-group mb-3">
										<input class="form-control" type="text"
											placeholder="Recipient's username"
											aria-label="Recipient's username"
											aria-describedby="button-addon2" />
										<button class="btn btn-primary" id="button-addon2"
											type="button">
											<i class="fa fa-paper-plane"></i>
										</button>
									</div>
								</form>
							</div>
						</div>
					</div>
			</div>
			</footer>
		</section>

		<!--contact end-->
		<!--footer start-->
		<div class="container-fluid" style="background-color: #d0d2ce">

			<div class="row py-7">
				<div class="col-md-4">
					<a class="nav-link" href="index.jsp"><span style="color: black">Highway_Assistance</span></a>
				</div>
				<div class="col-md-4"></div>
				<div class="col-md-3">
					<div class="d-inline-block">
						<a href="https://www.facebook.com/" class="text-black"><i
							class="fa fa-1x fa-fw fa-facebook"></i> </a>


						<div class="bg-circle-outline d-inline-block">
							<a href="https://twitter.com/" class="text-black"> <i
								class="fa fa-1x fa-fw fa-twitter"></i></a>
						</div>

						<div class="bg-circle-outline d-inline-block">
							<a href="https://www.linkedin.com" class="text-black"> <i
								class="fa fa-1x fa-fw fa-linkedin"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>

		<!--footer end-->
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
			integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
			crossorigin="anonymous"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
			integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
			crossorigin="anonymous"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
			integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
			crossorigin="anonymous"></script>
		<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
		<script>
			AOS.init({
				duration : 2000,
			});
		</script>
</body>

</html>
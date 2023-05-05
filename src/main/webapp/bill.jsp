

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

<title>Bill</title>
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
	<!--rating end-->
	<!--feedback form start-->
	<section id="bill">
		<div class="container p-3"
			style="border: 2px solid black; backgroung-color: grey">

			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-6">


					<form method="post" action="" class="register-form"
						id="register-form">
						<h3 style="text-align: center">Welcome To</h3>
						<h2 style="text-align: center">Highway_Assistance</h2>


						<div class="form-group">
							<label for="name">Bill id</label> <input type="text"
								class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="name"
								placeholder="<%=session.getAttribute("id")%>">
						</div>
						<div class="form-group">
							<label for="name">Name</label> <input type="text"
								class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="name"
								placeholder="<%=session.getAttribute("name")%>">
						</div>

						<div class="form-group">
							<label for="name">Mobile no</label> <input type="text"
								class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="name"
								placeholder="<%=session.getAttribute("mobileNo")%>">
						</div>



						<div class="form-group">

							<select class="custom-select mr-sm-2" name="service_type"
								id="inlineFormCustomSelect" required="required">
								<option selected>choose service type</option>
								<option value="Car service">Car service</option>
								<option value="Bike Service">Bike Service</option>

							</select>

						</div>



						<div class="form-group">
							<label for="name">Date</label> <input type="datetime-local"
								class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="name"
								placeholder="Enter Date">
						</div>


						<div class="form-group">
							<label for="name">Amount</label> <input type="text"
								readonly="readonly" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="name"
								value="<%=session.getAttribute("amount")%>">
						</div>
						<div class="form-group form-button">
							<input type="submit" name="print" id="print" class="form-submit"
								value="print" onclick="window.print()" target="_blank"
								style="background-color: #DC3545; width: 300px; height: 40px; color: white" />
						</div>

						<h6 style="text-align: center">************** Thanku Visite
							Again **************</h6>
					</form>
				</div>



			</div>
		</div>
		</div>
	</section>
	<br>
	<!--feedback form end-->



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
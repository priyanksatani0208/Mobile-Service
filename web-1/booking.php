<!DOCTYPE html>
<html lang="en">
<head>
<title>Cab Booking Form Responsive Widget Template :: W3layouts</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Cab Booking Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->

<!-- css files -->
<link href="css/style01.css" rel="stylesheet" type="text/css" media="all">
<link href="css/wickedpicker.css" rel="stylesheet" type='text/css' media="all" />
<link rel="stylesheet" href="css/jquery-ui.css" />
<!-- //css files -->

<!-- online-fonts -->
<link href="//fonts.googleapis.com/css?family=Amaranth:400,400i,700,700i" rel="stylesheet">
<!--//online-fonts -->
</head>
<body>

<div class="w3-main">
	<!-- Main -->
	<div class="about-bottom">
		<div class="w3l_about_bottom_right two">
			<h2 class="tittle"><img src="" alt=""><span>Book Service</span></h2>
			<div class="book-form">

			    <form action="" method="post">
				<div class="form-date-w3-agileits">						
					<input type="hidden" name="cust_id" value="<?php echo $_SESSION['cust_id']?>">	</div>


					<div class="form-date-w3-agileits">
						<div class="form-agileits">
							<label> Name :</label>
						</div>
					
						<div class="form-agileits-2">
							<input type="text" name="cust_name" placeholder="Enter Your Name" disabled value="<?php echo $_SESSION['cust_name']?>">
						</div>
						<div class="clear"> </div>
					</div>
					<div class="form-date-w3-agileits second-agile">
						<div class="form-agileits">
							<label> Phone Number :</label>
						</div>
						<div class="form-agileits-2">
							<input type="text" name="cust_mob_nub" placeholder="Enter Your Phone Number" disabled value="<?php echo $_SESSION['cust_phoneno']?>">
						</div>
						<div class="clear"> </div>
					</div>
					<div class="form-date-w3-agileits">
						<div class="form-agileits">
							<label> Email :</label>
						</div>
						<div class="form-agileits-2">
							<input type="text" name="cust_email" placeholder="Enter Your Email" disabled value="<?php echo $_SESSION['email']?>">
						</div>
						<div class="clear"> </div>
					</div>
					<div class="form-date-w3-agileits">
						<div class="form-agileits">
							<label> Address :</label>
						</div>
						<div class="form-agileits-2">
							<input type="text" name="booking_add" placeholder="Enter Your Address" value="<?php echo $_SESSION['cust_add']?>">
						</div>
						<div class="clear"> </div>
					</div>
					
					<div class="form-date-w3-agileits">
						<div class="form-agileits">
							<label> Booking Date :</label>
						</div>
						<div class="form-agileits-2">
							<input  id="datepicker" name="booking_date" type="date" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'dd/mm/yyyy';}" required="">
						</div>	
						<div class="clear"> </div>						
					</div>
					<div class="form-date-w3-agileits">
						<div class="form-agileits">
							<label>Select availability on that day :</label>
						</div>
						<div class="form-agileits-2">
							<input type="radio" id="" name="booking_time" value="11:00AM - 01:00PM "><label>10:00 AM-12:00 PM</label>	
							<input type="radio" id="" name="booking_time" value="11:00AM - 01:00PM "><label>01:00 PM-03:00 PM</label><br>
							<input type="radio" id="" name="booking_time" value="11:00AM - 01:00PM "><label>03:00 PM-05:00 PM</label>	
							<input type="radio" id="" name="booking_time" value="11:00AM - 01:00PM "><label>05:00 PM-07:00 PM</label>	
						</div>
						<div class="clear"> </div>
					<div >
						<div class="form-agileits">
							<label>Payment Metod :</label>
						</div>
						<div>
						<input type="radio" id="" name="Cod" checked value="COD "><label>Cash on delivery</label>		
						<div class="clear"> </div>
						</div>
                   </div>
					</div>
					<div class="make">
						  <input type="submit" value="Book Service" name="submit">
					</div>
				</form>
			</div>
		</div>
		<div class="clear"> </div>
	</div>
</div>
<!-- //Main -->
	
</body>
</html>
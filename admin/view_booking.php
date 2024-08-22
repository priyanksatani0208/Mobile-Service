<?php
include_once('header.php');
?>
 
 	<!--banner-->	
		     <div class="banner">
		    	<h2>
				<a href="dashboard">Home</a>
				<i class="fa fa-angle-right"></i>
				<span>view booking</span>
				</h2>
		    </div>
		<!--//banner-->
 	 <!--faq-->
 	<div class="blank">
			<div class="blank-page" style="overflow:auto">
				
				<div class="container mt-3">
				  <h2>view booking</h2>

				  <table class="table">
					<thead>
					  <tr>
                        <th>booking Id</th>
						<th>Customer Name</th>
						<th>Customer Mobile</th>
						<th>Customer Email</th>
						<th>Service Name</th>
						<th>Booking address</th>
						<th>Booking Date</th>
						<th>Booking Time</th>
					  </tr>
					</thead>
					<tbody>
					<?php
					foreach($manage_booking_arr as $c)
					{
					?>
					  <tr>
                        <td><?php echo $c ->booking_id ;?></td>
						<td><?php echo $c ->cust_name ;?></td>
						<td><?php echo $c ->cust_mob_num ;?></td>
						<td><?php echo $c ->cust_email ;?></td>
						<td><?php echo $c ->service_name ;?></td>
						<td><?php echo $c ->booking_add ;?></td>
						<td><?php echo $c ->booking_date ;?></td>
						<td><?php echo $c ->booking_time ;?></td>
					  </tr>
					<?php
					}
					?>
					</tbody>
				  </table>
				</div>
				
	        </div>
	</div>
	
	<!--//faq-->
	<?php
include_once('footer.php');
?>

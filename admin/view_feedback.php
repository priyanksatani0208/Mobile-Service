<?php
include_once('header.php');
?>

 
 	<!--banner-->	
		     <div class="banner">
		    	<h2>
				<a href="dashboard">Home</a>
				<i class="fa fa-angle-right"></i>
				<span>View Feedback</span>
				</h2>
		    </div>
		<!--//banner-->
 	 <!--faq-->
 	<div class="blank">
	

			<div class="blank-page" style="overflow:auto" >
				
				<div class="container mt-3">
				  <h2>View Feedback</h2>
            <div>
				  <table class="table">
					<thead>
					  <tr>
						<th>Feedback Id</th>
						<th>Customer Name</th>
						<th>Customer Mobile No</th>
						<th>Customer Email</th>
						<th>Customer Mesage</th>
					  </tr>
					</thead>
					<tbody>
					<?php
					foreach($manage_feedback_arr as $c)
					{
					?>
					  <tr>
						<td><?php echo $c ->feedback_id ;?> </td>
						<td><?php echo $c ->cust_name ;?> </td>
						<td><?php echo $c ->cust_mob_num;?> </td>
						<td><?php echo $c ->cust_email;?> </td>
						<td><?php echo $c ->feedback_message;?> </td>
					  </tr>
                 
				 <?php
					}
				  ?>
					   
					  
					</tbody>
				  </table>
				</div>
				</div >
	        </div>
	</div>
	
	<!--//faq-->
<?php
include_once('footer.php');
?>

<!DOCTYPE html>
<html>
<head>
<title>Mobile Service Provider</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="Fast Service a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
<link href="css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link href="//fonts.googleapis.com/css?family=Roboto:400,500,700,900" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700,800" rel="stylesheet">
<link href="css/style2.css" rel="stylesheet" type="text/css" media="all"/>
<script src="js/jquery1.min.js"></script>
<!-- add other css -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
<link href="css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="all">
<link rel="stylesheet" type="text/css" href="css/style_common.css" />
<link rel="stylesheet" type="text/css" href="css/style1.css" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link href="//fonts.googleapis.com/css?family=Roboto:400,500,700,900" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700,800" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Nunito:400,700&display=swap" rel="stylesheet">

</head>
<body>
<header>
	<!-- header -->
	<?php
	include_once('header.php');
	?>
	<style>
		.totalCart{
			position: relative;
    		height: 50px;
		}
		.total{
			position: absolute;
			right: 0%;
			margin:10px;
			font-size:28px;
		}
	</style>

	<!-- //header -->
	
<script>$(document).ready(function(c) {
	$('.close').on('click', function(c){
		$('.product-section').fadeOut('slow', function(c){
	  		$('.product-section').remove();
		});
	});	  
});
</script>
<script>$(document).ready(function(c) {
	$('.close1').on('click', function(c){
		$('.product1').fadeOut('slow', function(c){
	  		$('.product1').remove();
		});
	});	  
});
</script>
<script>$(document).ready(function(c) {
	$('.close2').on('click', function(c){
		$('.product2').fadeOut('slow', function(c){
	  		$('.product2').remove();
		});
	});	  
});
</script>	
<script>
    var url = 'https://wati-integration-service.clare.ai/ShopifyWidget/shopifyWidget.js?17879';
    var s = document.createElement('script');
    s.type = 'text/javascript';
    s.async = true;
    s.src = url;
    var options = {
  "enabled":true,
  "chatButtonSetting":{
      "backgroundColor":"#4dc247",
      "ctaText":"",
      "borderRadius":"25",
      "marginLeft":"0",
      "marginBottom":"50",
      "marginLeft":"50",
      "position":"left"
  },
  "brandSetting":{
      "brandName":"MObile Services",
      "brandSubTitle":"Hi welcome to Mobile Services",
      "brandImg":"https://cdn.clare.ai/wati/images/WATI_logo_square_2.png",
      "welcomeText":"Hi, there!\nHow can I help you?",
      "messageText":"Hello, I have a question about ",
      "backgroundColor":"#0a5f54",
      "ctaText":"Start Chat",
      "borderRadius":"25",
      "autoShow":false,
      "phoneNumber":"+919909879421"
  }
};
    s.onload = function() {
        CreateWhatsappChatWidget(options);
    };
    var x = document.getElementsByTagName('script')[0];
    x.parentNode.insertBefore(s, x);
</script>	

	<!-- banner -->
	<!-- banner-slider -->
	<div class="w3l_banner_info">
		<div class="slider1">
			<div class="callbacks_container">
				<ul class="rslides" id="slider3">
					<li>
						<div class="slider1-img">
							<div class="slider_banner_info">
							
								
							</div>
						</div>
					</li>
					
					
				</ul>
			</div>
		</div>
	</div>
	<!-- //banner-slider -->
</div>
</header>
<!---header--->
        <div class="header">
			<h1>Service Cart</h1>
		</div>
		<!---header--->
<!---main--->
<div class="main">
					
				<div class="main-section">
				<?php
						$i=0;
						foreach($view_cart_arr as $v)
						{
							$i=$i+1;	
						}
						
					?>
					<div class="totalCart"><div class="total"><?php echo "Total Cart Item : ".$i;?></div></div>
					
					<?php
						
						foreach($view_cart_arr as $v)
						{
						
					?>
					<div class="product-section">
						<div class="product-top">
							<div class="product-left">
								<img src="../admin/service_img/<?php echo $v ->service_img;?>">
							</div>
							<div class="product-right">
								<h2><?php echo $v ->service_name ;?></h2>
									<h5><?php echo $v ->service_desc ;?></h5>
							</div>
						</div>
						
						<div class="product-right1">
							<p>&#8377 <?php echo $v ->service_price;?>.00</p>
							<a href="delete?del_cart_id=<?php echo $v->cart_id ?>" class="btn btn-danger" style="margin-top:20px">Delete</a>
						</div>
						<div class="clear"></div>
					</div>
					<?php 
				    }
				    ?>
					
					
					<div class="product-bottom">
						<h3 > <span style="color:black;" >
						 <?php
						 $sum=0;
						foreach($view_cart_arr as $v)
						{
							$total=$v ->service_price;
							$sum=$sum+$total;
							
						}
						echo "Total :&#8377 ".$sum.".00";
					    ?></h3>
						<a href="booking" class="btn btn-primary">PROCCESED</a>
						<div class="clear">
					</div>
				</div>
			</div>	

		<!---main--->
		
<br><br><br>
<!-- Footer-->
<?php
include_once('footer.php');
?>
<!-- /Footer-->

	
<!-- start-smoth-scrolling -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
	<!-- //here ends scrolling icon -->
<!-- scrolling script -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script> 
<script type="text/javascript">
	$(function () {
  $('[data-toggle="popover"]').popover()
})
</script> 
<!-- //scrolling script -->
<!--//start-smoth-scrolling -->


</body>
</html>